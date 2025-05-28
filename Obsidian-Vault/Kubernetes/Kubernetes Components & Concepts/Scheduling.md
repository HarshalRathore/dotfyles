## Summary

-: Docker was the original all-in-one container platform; Kubernetes first targeted Docker only.  
-: To enable multiple runtimes, Kubernetes introduced the Container Runtime Interface (CRI) based on OCI specs.  
-: Docker itself doesn’t implement CRI, so Kubernetes used a temporary “dockershim” until removing it in v1.24.  
-: Containerd (the core runtime under Docker) is now a standalone, CRI-compatible project you can install and use directly.  
-: Three main CLI tools exist for Containerd/Kubernetes: `ctr` (low-level debug), `nerdctl` (Docker-like Containerd client), and `crictl` (generic CRI debug).

---

## 1. Origins of Containers and Kubernetes

-: **Docker emerges** with a simple UX for building, running, and sharing containers.  
-: **Other runtimes** (e.g., rkt) lag behind in adoption.  
-: **Kubernetes is born** to orchestrate Docker containers—initially only speaks Docker.

---

## 2. The Need for CRI and OCI Standards

-: **Kubernetes growth** drives desire for alternative runtimes (rkt, Containerd, etc.).  
-: **Open Container Initiative (OCI)** defines:

- Image Spec → how images are built
    
- Runtime Spec → how runtimes launch containers  
    -: **Container Runtime Interface (CRI)** is Kubernetes’ plugin API so any OCI-compliant runtime can be used.

---

## 3. Docker vs. Containerd

-: **Docker architecture** bundles: CLI, API, image build tools, volume/auth plugins, and the low-level runtime (runC) managed by `containerd`.  
-: **Containerd** splits off as its own CNCF-graduated project, implements the OCI runtime spec, and supports CRI.

---

## 4. Dockershim and Its Removal

-: **Dockershim** was a temporary compatibility layer so Kubernetes could continue using Docker without CRI.  
-: **In v1.24**, Kubernetes removed dockershim—Docker Engine is no longer a direct runtime, but existing Docker-built images continue working under Containerd.

---

## 5. Containerd Command-Line Tools

### 5.1 `ctr` (Containerd debug CLI)

-: Bundled with Containerd, offers only basic pull/run for debugging.  
-: Not intended for production workflows—you’d need to call Containerd’s API for full control.

### 5.2 `nerdctl` (Docker-like Containerd client)

-: Provides a familiar `docker …` syntax for Containerd.  
-: Supports most Docker flags plus advanced Containerd features (encrypted images, lazy pull, P2P, image signing, Kubernetes namespaces).

### 5.3 `crictl` (Generic CRI debug CLI)

-: Kubernetes community tool that speaks CRI to any compliant runtime.  
-: Use for `crictl pull/images/ps/logs/pods` when troubleshooting on nodes; not for normal container creation (kubelet will remove unmanaged pods).

---

## 6. When to Use Each Tool

-: **Production container ops on Containerd** → use `nerdctl run …`  
-: **Low-level debug of Containerd** → use `ctr` only for quick tests  
-: **Kubernetes node troubleshooting** → use `crictl` to inspect pods, images, logs

---

## 7. Quick Code Samples

-: **Pull with `ctr`**

```bash
ctr images pull docker.io/library/redis:latest
```

-: **Run with `nerdctl`**

```bash
nerdctl run -d --name web -p 8080:80 nginx
```

-: **Inspect pods with `crictl`**

```bash
crictl ps          # list containers/pods
crictl logs <ID>   # view logs
```

---

## 8. After-Class Follow-Up

-: Read the OCI Image and Runtime specs to deepen understanding.  
-: Install Containerd standalone and practice with `nerdctl`.  
-: On a real cluster node, use `crictl` to debug pod scheduling and logs.

---
# Multiple Schedulers

Kubernetes supports **multiple schedulers** running side-by-side, so you can add custom scheduling logic without replacing the default scheduler. ([Kubernetes](https://kubernetes.io/docs/tasks/extend-kubernetes/configure-multiple-schedulers/?utm_source=chatgpt.com "Configure Multiple Schedulers - Kubernetes"))

## 1. Why Use Multiple Schedulers?

-: **Specialized logic**: e.g., GPU-aware placement, low-latency apps, or domain-specific checks.  
-: **Isolation**: let most Pods use the default scheduler, while critical or experimental workloads use your own. ([FAUN — Developer Community 🐾](https://faun.pub/multiple-schedulers-in-kubernetes-a78a7b4fa4b2?utm_source=chatgpt.com "Multiple Schedulers in Kubernetes | by Shubham Agarwal | FAUN"))

---

## 2. Scheduler Naming

-: Each scheduler (default or custom) must have a **unique `--scheduler-name`**.  
-: If you omit the flag, the kube-scheduler binary defaults to `default-scheduler`.  
-: In a custom config file (`kube-scheduler-config.yaml`), set:
```yaml
schedulerName: my-custom-scheduler
```  

---

## 3. Deploying an Additional Scheduler  

### 3.1 As a Standalone Service  
-: Download or build your scheduler binary (`kube-scheduler`), then run:
```bash
kube-scheduler \
  --config=/etc/kubernetes/my-scheduler-config.yaml \
  --kubeconfig=/etc/kubernetes/scheduler.kubeconfig \
  --scheduler-name=my-custom-scheduler
````

-: Use `--leader-elect` flags when running HA (multiple instances). ([FAUN — Developer Community 🐾](https://faun.pub/multiple-schedulers-in-kubernetes-a78a7b4fa4b2?utm_source=chatgpt.com "Multiple Schedulers in Kubernetes | by Shubham Agarwal | FAUN"))

### 3.2 As a Pod (Kubeadm Style)

-: Copy the existing `/etc/kubernetes/manifests/kube-scheduler.yaml`, rename, and adjust:

- Container image: your custom scheduler image
    
- Volume mount: ConfigMap with your scheduler config
    
- Command args: include `--scheduler-name` and optionally `--leader-elect=false` when replicas=1. ([Kubernetes](https://kubernetes.io/docs/tasks/extend-kubernetes/configure-multiple-schedulers/?utm_source=chatgpt.com "Configure Multiple Schedulers - Kubernetes"))

### 3.3 As a Deployment

-: Create a Deployment in `kube-system` namespace with:

- ServiceAccount & RBAC (ClusterRole/Binding) for scheduling permissions
    
- Pod spec similar to above, but under `kind: Deployment`
    
- ConfigMap volume for the scheduler config
    
- Liveness/readiness probes, resource limits, etc. ([LinkedIn](https://www.linkedin.com/pulse/using-multiple-schedulers-kubernetes-christopher-adamson-qe7xc?utm_source=chatgpt.com "Using Multiple Schedulers in Kubernetes - LinkedIn"))

---

## 4. Scheduling Pods with a Specific Scheduler

-: In your Pod or Deployment manifest, add:

```yaml
spec:
  schedulerName: my-custom-scheduler
```

-: Pods without `schedulerName` default to `default-scheduler`. ([Kubernetes](https://kubernetes.io/docs/tasks/extend-kubernetes/configure-multiple-schedulers/?utm_source=chatgpt.com "Configure Multiple Schedulers - Kubernetes"))

---

## 5. Verifying & Troubleshooting

-: **Check Pods** in `kube-system` to see scheduler instances:

```bash
kubectl get pods -n kube-system -l component=kube-scheduler
```

-: **Inspect Pod events** for scheduling source:

```bash
kubectl get events -o wide
```

Look for `Scheduled` events with `source` matching your custom scheduler’s name. ([GitHub](https://github.com/kodekloudhub/certified-kubernetes-administrator-course/blob/master/docs/03-Scheduling/18-Multiple-Schedulers.md?utm_source=chatgpt.com "18-Multiple-Schedulers.md - GitHub"))  
-: **View scheduler logs**:

```bash
kubectl logs <scheduler-pod> -n kube-system
```

# Multiple Schedulers
-: Kubernetes’ scheduler is architected around a **pluggable Scheduling Framework** that runs a **scheduling cycle** (select node) and a **binding cycle** (bind Pod) for each Pod. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/scheduling-framework/?utm_source=chatgpt.com "Scheduling Framework - Kubernetes"))

---

## 1. Scheduling Workflow Overview
![[Pasted image 20250522191747.png]]
1. **Queue Phase**
    
    - Pods enter an **active queue**, sorted by priority via a **QueueSort** plugin.

2. **Scheduling Cycle**
    
    - **PreFilter** plugins preprocess or validate cluster/Pod conditions.
	
    - **Filter** plugins (e.g., **NodeResourcesFit**, **NodeName**, **TaintToleration**) remove nodes that cannot run the Pod.
	
    - If no nodes remain, **PostFilter** plugins can attempt actions (e.g., **Preemption**).
	
    - **PreScore** plugins prepare state for scoring.
	
    - **Score** plugins assign each feasible node a score (e.g., **ImageLocality**, **BalancedAllocation**).
	
    - **NormalizeScore** brings scores into a 0–100 range, then weights are applied.
	
    - **Reserve** plugins “assume” the Pod on the chosen node, updating the **scheduler cache** snapshot.

3. **Binding Cycle**
    
    - **Permit** plugins may delay binding (e.g., wait for gang pods).
	
    - **PreBind**, **Bind**, and **PostBind** plugins perform final steps and inform the API server.
	
    - On failure in bind-phase plugins, **Unreserve** rolls back assumptions. ([Alibaba Cloud](https://www.alibabacloud.com/blog/the-burgeoning-kubernetes-scheduling-system-part-1-scheduling-framework_597318?utm_source=chatgpt.com "The Burgeoning Kubernetes Scheduling System – Part 1"))

---

## 2. Extension Points & Plugins
![[Pasted image 20250522191814.png]]

- A plugin can register at one or more extension points:
    
    - **QueueSort**
	
    - **PreEnqueue**, **PreFilter**, **Filter**, **PostFilter**
	
    - **PreScore**, **Score**, **NormalizeScore**
	
    - **Reserve**, **Permit**, **PreBind**, **Bind**, **PostBind**

- Plugins are configured via **Profiles** in the `KubeSchedulerConfiguration`. ([Kubernetes](https://kubernetes.io/docs/reference/scheduling/config/?utm_source=chatgpt.com "Scheduler Configuration - Kubernetes"))

---

## 3. Scheduler Architecture Components

- **Informers & Caches**
    
    - **SharedInformers** watch API resources (Pods, Nodes, PVCs) and populate the **scheduler cache**, which tracks node states and “assumed” Pods for throughput.
	
    - **AssumePod**/ **FinishBinding** / **ForgetPod** manage temporary Pod entries in cache during scheduling.

- **Queues**
    
    - Active and backoff queues manage pending Pods; errors trigger re-queuing via the **Error handler**.

- **Configurator**
    
    - Wires together caches, queue handlers, plugin registry, and scheduling algorithm based on CLI flags and config files (`cmd/kube-scheduler/app`).

- **Profiles**
    
    - Since Kubernetes v1.18, multiple **scheduler profiles** (each with its own name and plugin set) can run in one process to avoid race conditions.

- **Default Algorithm**
    
    - Implements the `ScheduleAlgorithm` interface: runs the above filter/score steps on a **snapshot** of the cache to pick the best node. ([GitHub](https://github.com/kubernetes/enhancements/blob/master/keps/sig-scheduling/624-scheduling-framework/README.md?utm_source=chatgpt.com "Scheduling Framework - kubernetes/enhancements - GitHub"))


---

## 4. Deploying Custom Schedulers vs. Profiles

- **Separate Binaries**
    
    - Historically, you could build and run multiple `kube-scheduler` processes, each with a unique `--scheduler-name` and config.

- **Multi-Profile**
    
    - Now preferred: define several **profiles** in one `kube-scheduler` config, each with its own `schedulerName` and plugin configuration.
        
    - Pods specify `spec.schedulerName` to select a profile.

---