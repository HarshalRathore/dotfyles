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