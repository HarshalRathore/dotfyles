## Bootstrap the Kubernetes Control Plane

Learning takeaway: after preparing your nodes, you’ll **initialize the control plane** on the master node with `kubeadm init`, set up the Pod network, and then **join** each worker using `kubeadm join`.When you’ve prepared your nodes, `kubeadm init` brings the control plane to life in **four main stages**. Everything under `/etc/kubernetes`—certificates, manifests, configs—springs from this single command.

#### 1. Pre-flight Checks

Before writing any files, kubeadm verifies node readiness: OS settings, required ports, swap disabled, container runtime running, and more [Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init-phase/?utm_source=chatgpt.com).

- Fails fast if prerequisites aren’t met.
    
- Pulls all necessary control-plane images (etcd, kube-apiserver, etc.) so they’re ready locally [Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/?utm_source=chatgpt.com).
    

#### 2. Certificates Generation

A self-signed **Certificate Authority (CA)** plus individual certs for each component (API Server, etcd, controller-manager, scheduler) are created and placed in `/etc/kubernetes/pki` [Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/?utm_source=chatgpt.com).

- Each cert ensures mutual TLS between components.
    
- etcd even gets its own CA under `/etc/kubernetes/pki/etcd` [Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/?utm_source=chatgpt.com).
    

#### 3. Configuration and Manifest Files

- **Client kubeconfigs** for `admin`, `kubelet`, `controller-manager`, and `scheduler` land in `/etc/kubernetes/*.conf` [Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/?utm_source=chatgpt.com).
    
- **Static-Pod Manifests** for control-plane components are written to `/etc/kubernetes/manifests`—the kubelet watches this folder and directly launches them as static Pods [Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com).
    
- A glance at, say, `kube-apiserver.yaml` reveals a standard Pod spec (image, volumes, `--bind-address`, etc.) [Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com).
    

#### 4. Add-ons Deployment

Immediately after, kubeadm deploys two critical add-ons as regular Kubernetes Pods in `kube-system`:

- **kube-proxy** on every node (via a DaemonSet).
    
- **CoreDNS** for in-cluster name resolution

---

### 1. Initialize the Master with `kubeadm init`

On your **master node** (as root or via `sudo -i`), run:

```bash
kubeadm init \
  --apiserver-advertise-address=<MASTER_PRIVATE_IP> \
  --pod-network-cidr=192.168.0.0/16 \
  --service-cidr=10.96.0.0/12 \
  --service-dns-domain=cluster.local
```

- `--apiserver-advertise-address` sets the IP the API Server advertises on (must be reachable by workers) ([Creating a cluster with kubeadm - Kubernetes](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/?utm_source=chatgpt.com)).
    
- `--pod-network-cidr` reserves the CIDR for Pod overlays (e.g., Calico, Flannel) ([kubeadm init | Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/?utm_source=chatgpt.com)).
    
- `--service-cidr` and `--service-dns-domain` set the in-cluster service IP range and DNS domain (defaults shown) ([kubeadm init | Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/?utm_source=chatgpt.com)).
    

> **Why these flags?**  
> Kubernetes control-plane components (API server, controller-manager, scheduler, etcd) will generate static Pod manifests in `/etc/kubernetes/manifests` with these network settings ([kubeadm init phase | Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init-phase/?utm_source=chatgpt.com)).

Initializer output includes:

- **kubeconfig** for admin: `/etc/kubernetes/admin.conf`
    
- **Join command** for workers (and HA control-plane)
    
- **Certificate key** (if using `--upload-certs`) ([kubeadm token - Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-token/?utm_source=chatgpt.com)).
    

---

### 2. Configure Local kubectl Access

To manage the cluster from the master:

```bash
mkdir -p $HOME/.kube
cp /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
```

This sets up **kubectl** with admin privileges against the new control plane ([Kubeadm - Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/?utm_source=chatgpt.com)).

---

### 3. Install a Pod Network Add-on

Kubernetes doesn’t ship with a default CNI. Install one now (on the master):

- **Calico** example:
    
    ```bash
    kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
    ```
    
    Calico implements networking + network policy ([Create static Pods | Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com)).
    
- **Flannel** alternative:
    
    ```bash
    kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
    ```
    
    Flannel is simpler, suitable for learning ([Create static Pods | Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com)).
    

Wait until all **core system Pods** are `Running`:

```bash
kubectl get pods -n kube-system
```

You should see `coredns`, `calico-node` (or `kube-flannel-*`), `kube-proxy`, etc., all in `Running` state ([Create static Pods | Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com)).

---

### 4. Joining Worker Nodes

Back on **each worker node**, as root:

1. Copy the `kubeadm join … --token … --discovery-token-ca-cert-hash …` command displayed after `kubeadm init`.
    
2. Execute it:
    
    ```bash
    sudo kubeadm join <MASTER_PRIVATE_IP>:6443 \
      --token <TOKEN> \
      --discovery-token-ca-cert-hash sha256:<HASH>
    ```
    
    This registers the node with the control-plane and installs static Pod manifests for `kube-proxy` ([kubeadm join | Kubernetes](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-join/?utm_source=chatgpt.com)).
    
3. Verify on master:
    
    ```bash
    kubectl get nodes
    ```
    
    You should see both workers in `Ready` state ([Adding Linux worker nodes | Kubernetes](https://kubernetes.io/docs/tasks/administer-cluster/kubeadm/adding-linux-nodes/?utm_source=chatgpt.com)).
    

---

### 5. (Optional) High-Availability Control Plane

For production, consider multiple control-plane nodes:

- Use `kubeadm join --control-plane … --certificate-key …` to add additional masters ([Creating Highly Available Clusters with kubeadm | Kubernetes](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/high-availability/?utm_source=chatgpt.com)).
    
- Or configure an **external etcd** cluster for separation of concerns ([Creating Highly Available Clusters with kubeadm | Kubernetes](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/high-availability/?utm_source=chatgpt.com)).
    

---

## Theory & Internals

- **Static Pods**: control-plane components are deployed as static Pods by `kubelet` watching `/etc/kubernetes/manifests` ([Create static Pods | Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com)).
    
- **Certificates**: `kubeadm init` auto-generates a CA and component certificates, storing them in `/etc/kubernetes/pki` ([Certificate Management with kubeadm - Kubernetes](https://kubernetes.io/docs/tasks/administer-cluster/kubeadm/kubeadm-certs/?utm_source=chatgpt.com)).
    
- **Configuration API**: You can supply a `kubeadm-config.yaml` instead of CLI flags to declaratively define `InitConfiguration` ([kubeadm Configuration (v1beta3) - Kubernetes](https://kubernetes.io/docs/reference/config-api/kubeadm-config.v1beta3/?utm_source=chatgpt.com)).
    

---

## ⚡ Coming Up Next
