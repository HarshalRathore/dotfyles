## Configure K8s Nodes

### Overview

Before initializing your cluster, each node (control-plane and workers) must meet a few **prerequisites**: correct networking, unique hostnames, disabled swap, and opened ports.

---

## 1. Disable Swap

Kubernetes requires swap to be disabled so that the kubelet can accurately track available memory and enforce QoS classes without interference from the host’s swap mechanism. Swapping critical services (e.g., kubelet, container runtime) could degrade performance or lead to scheduling anomalies ([Why disable swap on kubernetes - Server Fault](https://serverfault.com/questions/881517/why-disable-swap-on-kubernetes?utm_source=chatgpt.com)).

1. **Temporarily turn off swap** on each node:
    
    ```bash
    sudo swapoff -a
    ```
    
2. **Prevent swap re-enabling** on reboot by commenting out all swap entries in `/etc/fstab`:
    
    ```bash
    sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
    ```
    

> **Tip:** If you’re in an environment that needs swap (e.g., non-production testbeds), Kubernetes v1.32+ supports swap as an alpha feature via the `NodeSwap` feature gate and `--fail-swap-on=false` ([Fresh Swap Features for Linux Users in Kubernetes 1.32](https://kubernetes.io/blog/2025/03/25/swap-linux-improvements/?utm_source=chatgpt.com)).

---

## 2. Open Required Network Ports

Kubernetes components communicate over specific TCP ports. On cloud platforms (like AWS), use **Security Groups**; on bare metal, configure your host firewall (e.g., `ufw` or `firewalld`).

|Component|Node|Ports|Source/Destination|
|---|---|---|---|
|Kubernetes API server|Control-plane|6443 (TCP)|Any (kubectl, kubelets) ([Installing kubeadm|
|etcd|Control-plane|2379–2380 (TCP)|Control-plane nodes only ([Installing kubeadm|
|kubelet API|All nodes|10250 (TCP)|Control-plane only ([Installing kubeadm|
|NodePort Services|All nodes|30000–32767 (TCP)|External clients ([Installing kubeadm|

1. **AWS Security Group Example**
    
    - For your **control-plane SG**: open 6443 from `0.0.0.0/0`, and 2379–2380 restricted to your VPC CIDR.
        
    - For your **worker SG**: open 10250 from your control-plane SG, plus 30000–32767 from `0.0.0.0/0`.
        
2. **Firewalld** (RHEL/CentOS) example:
    
    ```bash
    sudo firewall-cmd --permanent --add-port=6443/tcp
    sudo firewall-cmd --permanent --add-port=2379-2380/tcp
    sudo firewall-cmd --permanent --add-port=10250/tcp
    sudo firewall-cmd --permanent --add-port=30000-32767/tcp
    sudo firewall-cmd --reload
    ```
    

> **Why these ports?**
> 
> - **6443**: Kubernetes API Server endpoint
>     
> - **2379–2380**: etcd client/server communication
>     
> - **10250**: kubelet’s HTTPS read-only API
>     
> - **30000–32767**: default NodePort range ([Installing kubeadm | Kubernetes](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/?utm_source=chatgpt.com))
>     

---

## 3. Set Unique Hostnames & /etc/hosts

Distinct, human-readable hostnames simplify cluster management and log interpretation.

1. **Assign hostnames** on each node:
    
    ```bash
    sudo hostnamectl set-hostname k8s-master
    sudo hostnamectl set-hostname k8s-worker1
    sudo hostnamectl set-hostname k8s-worker2
    ```
    
2. **Map private IPs to names** in `/etc/hosts` on **all** nodes:
    
    ```text
    10.0.0.10   k8s-master
    10.0.0.11   k8s-worker1
    10.0.0.12   k8s-worker2
    ```
    
3. **Re-login** or reboot so the new hostnames take effect.
    

> **Pro Tip:**
> 
> - Use consistent naming (e.g., `k8s-master`, `k8s-worker[01-03]`).
>     
> - Verify with `hostname` and `hostname -I` ([Kubernetes on RHEL 9–A step-by-step guide - Medium](https://medium.com/weeklycloud/kubernetes-installation-on-rhel-9-d5629f2fa4f9?utm_source=chatgpt.com)).
>     

---

## 4. Verify Prerequisites

On **each node**, confirm:

```bash
# No swap:
swapon --summary

# Hostname correct:
hostname

# Required ports open (use netstat or ss):
ss -tln | grep -E '6443|2379|2380|10250|30000-32767'

# Network reachability (from master):
ping k8s-worker1
```

If all checks pass, your nodes are correctly configured and **ready** for:

1. **Installing container runtime** (e.g., containerd)
    
2. **Installing kubeadm, kubelet, kubectl**
    
3. **Bootstrapping the cluster** with `kubeadm init`
    

---
## ⚡ Coming up Next
[[Install kubernetes components]]
