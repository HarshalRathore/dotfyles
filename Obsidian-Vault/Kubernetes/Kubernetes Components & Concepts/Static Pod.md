-: **Static Pods** are Pods managed **directly** by the kubelet on a single node, **without** the API server or any controllers. ([Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com "Create static Pods | Kubernetes"))

---

## 1. Core Characteristics

-: **Node-bound**: Each static Pod manifest lives on exactly one node → kubelet watches its manifest directory and ensures the Pod is running. ([Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com "Create static Pods | Kubernetes"))  
-: **Self-reconciling**: If the container crashes, the kubelet restarts it; if the manifest file is changed, the Pod is recreated; if the file is removed, the Pod is deleted. ([Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com "Create static Pods | Kubernetes"))  
-: **Mirror Pod**: On a clustered setup, the kubelet creates a “mirror” Pod in the API server so you can `kubectl get pods`—but that object is **read-only** and suffixed with `-<nodeName>`. ([Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com "Create static Pods | Kubernetes"))

---

## 2. When & Why to Use

-: **Bootstrap control-plane**: Run `kube-apiserver`, `etcd`, `kube-controller-manager`, and `kube-scheduler` themselves as static Pods on master nodes. ([Razorops](https://razorops.com/blog/how-to-create-static-pod-in-kubernetes?utm_source=chatgpt.com "How to Create Static Pod in Kubernetes - Razorops"))  
-: **Standalone mode**: If you only have a single node (no API server), static Pods let kubelet run workloads independently.  
-: **Lightweight agents**: On small clusters where running full controllers is overkill (although DaemonSets are usually preferred).

---

## 3. Configuration

1. **Locate the manifest directory**
    
    - Check the kubelet startup flags:
        
        ```bash
        ps aux | grep kubelet
        # look for --pod-manifest-path=/etc/kubernetes/manifests
        ```
        
    - Or inspect `/var/lib/kubelet/config.yaml` for `staticPodPath: /etc/kubernetes/manifests`. ([Razorops](https://razorops.com/blog/how-to-create-static-pod-in-kubernetes?utm_source=chatgpt.com "How to Create Static Pod in Kubernetes - Razorops"))

2. **Place Pod YAML files**
    
    - Write standard Pod definitions in that directory (YAML or JSON).
        
    - **Example** `/etc/kubernetes/manifests/nginx-static.yaml`:
        
        ```yaml
        apiVersion: v1
        kind: Pod
        metadata:
          name: nginx-static
        spec:
          containers:
          - name: nginx
            image: nginx:stable
        ```

3. **Kubelet behavior**
    
    - Scans the directory **periodically**; creates, updates, or deletes Pods to match the files. ([Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com "Create static Pods | Kubernetes"))


---

## 4. Limitations

-: Cannot reference other API objects (`ConfigMap`, `Secret`, `ServiceAccount`, etc.). ([Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com "Create static Pods | Kubernetes"))  
-: No built-in rolling updates, scaling, or health-check controllers—static Pods are **Pod-only**.  
-: To run on multiple nodes, you must copy the manifest file to each node’s manifest directory manually.

---

## 5. Interaction with the Control Plane

-: **Mirror Pods** show static Pods in `kubectl get pods`, but you **cannot** edit or delete them via kubectl—changes must be made to the files on the node. ([Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/?utm_source=chatgpt.com "Create static Pods | Kubernetes"))  
-: The **kube-scheduler** and **ReplicaSets/DaemonSets** do **not** affect static Pods—they bypass scheduling and controllers entirely.
