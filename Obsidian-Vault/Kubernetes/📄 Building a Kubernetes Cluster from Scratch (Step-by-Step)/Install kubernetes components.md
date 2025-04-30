![[Pasted image 20250427171905.png]]After configuring your nodes, the next phases are:

1. **Installing a CRI-compliant Container Runtime** (Containerd) on each node
    
2. **Installing Kubernetes tooling** (`kubeadm`, `kubelet`, `kubectl`)
    

These steps ensure that each node can run containers and participate in cluster bootstrapping and management.

---

## Install Container Runtime (containerd)

Containerd is a lightweight, production-grade container runtime that implements the Kubernetes **Container Runtime Interface (CRI)** ([Container Runtimes - Kubernetes](https://kubernetes.io/docs/setup/production-environment/container-runtimes/?utm_source=chatgpt.com)). Unlike Docker Engine, containerd focuses purely on managing container lifecycle and image transfer.

### Why Containerd?

- **CRI-native**: No shim required (Docker shim removed in v1.22) ([Container Runtimes - Kubernetes](https://kubernetes.io/docs/setup/production-environment/container-runtimes/?utm_source=chatgpt.com)).
    
- **Lightweight**: Minimal components—just what Kubernetes needs.
    
- **Cloud-native**: Used by EKS, GKE, AKS under the hood.
    

### Steps (on **every** node)

1. **Load necessary kernel modules** for containerd networking:
    
    ```
    cat <<EOF | sudo tee /etc/modules-load.d/containerd.conf
    overlay
    br_netfilter
    EOF
    
    sudo modprobe overlay
    sudo modprobe br_netfilter
    ```
    
    These modules enable bridged IPv4 traffic and overlay networking ([Building a Kubernetes 1.27 Cluster with `kubeadm`](https://discuss.kubernetes.io/t/building-a-kubernetes-1-27-cluster-with-kubeadm/25585?utm_source=chatgpt.com)).
    
2. **Configure sysctl** for Kubernetes networking:
    
    ```
    cat <<EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
    net.bridge.bridge-nf-call-iptables  = 1
    net.ipv4.ip_forward                 = 1
    net.bridge.bridge-nf-call-ip6tables = 1
    EOF
    
    sudo sysctl --system
    ```
    
    This ensures packets traverse iptables rules correctly ([Building a Kubernetes 1.27 Cluster with `kubeadm`](https://discuss.kubernetes.io/t/building-a-kubernetes-1-27-cluster-with-kubeadm/25585?utm_source=chatgpt.com)).
    
3. **Install containerd** via the OS package manager:
    
    ```bash
    sudo apt-get update
    sudo apt-get install -y containerd
    ```
    
    (On RHEL/CentOS: `yum install -y containerd.io`) ([Container Runtimes - Kubernetes](https://kubernetes.io/docs/setup/production-environment/container-runtimes/?utm_source=chatgpt.com)).
    
4. **Generate default configuration** and restart:
    
    ```bash
    sudo mkdir -p /etc/containerd
    sudo containerd config default | sudo tee /etc/containerd/config.toml
    sudo systemctl restart containerd
    sudo systemctl enable containerd
    ```
    
5. **Verify** containerd is running:
    
    ```bash
    sudo systemctl status containerd
    ```
    
    Should show **active (running)** ([Changing the Container Runtime on a Node from Docker Engine to ...](https://kubernetes.io/docs/tasks/administer-cluster/migrating-from-dockershim/change-runtime-containerd/?utm_source=chatgpt.com)).
    

---

## Install kubeadm, kubelet & kubectl

These three binaries are fundamental:

- **kubeadm**: Bootstraps the control plane (runs once on master) ([Installing kubeadm | Kubernetes](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/?utm_source=chatgpt.com)).
    
- **kubelet**: Node agent—launches pods, watches manifests ([Installing kubeadm | Kubernetes](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/?utm_source=chatgpt.com)).
    
- **kubectl**: CLI to interact with your cluster ([Install and Set Up kubectl on Linux - Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/?utm_source=chatgpt.com)).
    

### 1. Add Kubernetes APT Repository

```bash
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl

sudo curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg \
  | sudo gpg --dearmor -o /usr/share/keyrings/kubernetes-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] \
  https://apt.kubernetes.io/ kubernetes-xenial main" \
  | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt-get update
```

> **Why this repo?** It hosts **kubeadm**, **kubelet**, and **kubectl** packages maintained by the Kubernetes project ([Installing kubeadm | Kubernetes](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/?utm_source=chatgpt.com)).

### 2. Install Specific Versions

To ensure cluster stability, install a specific, matching version across all nodes:

```bash
# Replace <VERSION> with, e.g., 1.33.0-00
sudo apt-get install -y kubelet=<VERSION> kubeadm=<VERSION> kubectl=<VERSION>
```

- **Lock versions** to prevent unintended upgrades:
    
    ```bash
    sudo apt-mark hold kubelet kubeadm kubectl
    ```
    
- **Verify installation**:
    
    ```bash
    kubeadm version
    kubelet --version
    kubectl version --client
    ```
    
    Each should report the chosen `<VERSION>` ([Issue in installing kubernetes on linux 20.04](https://discuss.kubernetes.io/t/issue-in-installing-kubernetes-on-linux-20-04/27751?utm_source=chatgpt.com)).
    

### 3. Enable & Start kubelet

```bash
sudo systemctl enable kubelet
sudo systemctl start kubelet
```

- Initially, **kubelet** will show **`activating`** or **`waiting`** – this is expected until `kubeadm init` runs on the master ([Kubeadm Upgrade --- apt-get vrs apt install - Discuss Kubernetes](https://discuss.kubernetes.io/t/kubeadm-upgrade-apt-get-vrs-apt-install/7827?utm_source=chatgpt.com)).
    

---

## Ready to Bootstrap the Cluster!

At this point:

- **containerd** is running on all nodes.
    
- **kubeadm**, **kubelet**, and **kubectl** are installed and version-locked.
    

Next, you will:

1. **Initialize** the control plane on the master with:
    
    ```bash
    sudo kubeadm init --pod-network-cidr=<CIDR> --apiserver-advertise-address=<MASTER-IP>
    ```
    
    (We’ll cover Pod network add-ons like Calico or Flannel later.)
    
2. **Join** worker nodes using the `kubeadm join …` command output by `kubeadm init`.

## 🧩 What are Static Pods?

**Static Pods** are **directly managed by the kubelet** on a node, **not by the Kubernetes API server** like normal Pods.

In other words:  
➡️ **Normal Pods** = you `kubectl apply` a YAML ➔ API server stores it ➔ Scheduler places it on a node.  
➡️ **Static Pods** = kubelet watches a **local folder** (like `/etc/kubernetes/manifests`) ➔ It _directly_ creates and manages the Pod, without asking the API server.

---

## 🎯 Key Characteristics

|Static Pods|Normal Pods|
|:--|:--|
|Created by the **kubelet** itself|Created by the **API server**|
|YAML files live on the node's local disk (e.g., `/etc/kubernetes/manifests`)|YAML files are stored in etcd through the API server|
|Used for **critical components** like kube-apiserver, etcd, controller-manager|Used for **user workloads** like apps, databases, websites|
|No built-in auto-replication|Can be replicated with ReplicaSets, Deployments|
|No labels/selectors for managing them at cluster level|Managed fully by Kubernetes controllers|

---

## 🛠 How Static Pods Work

- kubelet has a setting called **`--pod-manifest-path=/etc/kubernetes/manifests`**.
    
- It **continuously watches** that directory.
    
- If you drop a YAML Pod definition in there, kubelet **automatically** runs it.
    
- If you modify or delete the file, kubelet **updates or stops** the Pod accordingly.
---

## 🛡 Why Static Pods Matter

- **Bootstrap the Cluster**: kube-apiserver, kube-scheduler, etcd—they all start as static Pods when a cluster is initialized with `kubeadm`.
    
- **Highly Available**: If the API server crashes, kubelet can still keep the static Pods alive and restart them if needed.
    
- **Survival Mode**: Kubelet doesn't rely on API server availability to manage these Pods.
    

---

## 📜 Example

Here's what a Static Pod YAML might look like (`/etc/kubernetes/manifests/kube-apiserver.yaml`):

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: kube-apiserver
  namespace: kube-system
spec:
  containers:
  - name: kube-apiserver
    image: k8s.gcr.io/kube-apiserver:v1.29.0
    command:
    - kube-apiserver
    - --advertise-address=10.0.0.10
    - --etcd-servers=https://127.0.0.1:2379
    volumeMounts:
    - mountPath: /etc/kubernetes/pki
      name: k8s-certs
  volumes:
  - name: k8s-certs
    hostPath:
      path: /etc/kubernetes/pki
```

Notice: it's just a **Pod definition**—no Deployment, no ReplicaSet.

---

## 🔥 Quick Mental Model

> **Static Pod = kubelet babysitting a local file = Pod gets created**

If kubelet dies, static Pods die with it. If kubelet restarts, it reads the manifest again and re-creates the Pods.

---

## ⚡ Coming Up Next
[[Bootstrapping Control Place]]