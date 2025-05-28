**Summary**

- Docker was the original, end-to-end container platform; Kubernetes first integrated with Docker directly.

- To support multiple runtimes, Kubernetes introduced the Container Runtime Interface (CRI) based on Open Container Initiative (OCI) standards.

- Docker doesn’t natively implement CRI, so Kubernetes used a temporary “dockershim” until its removal in v1.24.

- Containerd (the runtime beneath Docker) is now a standalone, CRI-compatible project you can install directly.

- Three main CLIs exist for Containerd/Kubernetes:
    
    1. `ctr` – low-level, debugging only
        
    2. `nerdctl` – full-featured Docker-like client for Containerd
        
    3. `crictl` – Kubernetes-side CRI client for debugging any OCI-compliant runtime

---

## 1. Historical Background

1. **Early container tooling**
    
    - Docker (2013) introduced a simple UX for containers; quickly became dominant
	
    - Other runtimes (e.g., rkt) existed but saw less adoption
	
2. **Kubernetes origin**
    
    - Built specifically to orchestrate Docker containers
	
    - Initial tight coupling: Kubernetes only spoke Docker
	

---

## 2. The Need for a Universal Runtime Interface

1. **Kubernetes grows**
    
    - Users wanted alternative runtimes (rkt, Containerd, etc.)

2. **Open Container Initiative (OCI)**
    
    - Defines two specs:
        
        - **Image Spec**: how container images are built
		
        - **Runtime Spec**: how runtimes launch containers

3. **Container Runtime Interface (CRI)**
    
    - Kubernetes plugin interface for any OCI-compliant runtime


---

## 3. Docker vs. Containerd

1. **Docker architecture**
    
    - CLI, API, build tools, volume/auth/security support
	
    - Uses `runC` as low-level runtime, managed by `containerd` daemon

2. **Containerd**
    
    - Originally part of Docker project; now a graduated CNCF project
	
    - Implements OCI runtime spec; CRI-compatible
	
    - Can be installed standalone if you only need the runtime


---

## 4. Docker Shim & Kubernetes v1.24

1. **dockershim**
    
    - A “hack” in Kubernetes to let Docker work without CRI
	
    - Allowed continued support for Docker Engine

2. **Removal in v1.24**
    
    - Dockershim removed; Docker Engine no longer a direct Kubernetes runtime
	
    - All existing Docker images continue to work— they follow OCI Image Spec


---

## 5. Containerd Command-Line Tools

### 5.1 `ctr` (Containerd CLI)

- Bundled with Containerd
    
- **Purpose:** debugging only; very limited feature set
    
- **Examples:**
    
    - `ctr images pull docker.io/library/redis:latest`
	
    - `ctr run docker.io/library/redis:latest myredis`

- **Drawback:** not intended for production workflows; must use APIs for full capabilities

### 5.2 `nerdctl` (Containerd client)

- Community-maintained Docker-compatible CLI for Containerd
    
- Supports most Docker commands and extra Containerd features:
    
    - Encrypted image support
	
    - Lazy pulling, P2P distribution
	
    - Image signing/verifying
	
    - Kubernetes-style namespaces

- **Usage:** replace `docker` with `nerdctl` (e.g., `nerdctl run -p 80:80 nginx`)

### 5.3 `crictl` (CRI CLI)

- Kubernetes community tool for interacting with any CRI runtime
- **Purpose:** debugging/inspecting runtimes from the kubelet’s perspective
- **Features:**
    
    - `crictl pull`, `crictl images`, `crictl ps`, `crictl logs`
        
    - Pod-aware commands (e.g., `crictl pods`)
- **Note:** Not for creating production containers—kubelet will remove unmanaged ones

---

## 6. Key Comparisons & Best Practices

|CLI|Source|Scope|Use case|
|---|---|---|---|
|`ctr`|Containerd project|Containerd only|Low-level debugging|
|`nerdctl`|Containerd community|Containerd only|General container ops|
|`crictl`|Kubernetes community|Any CRI runtime|Runtime debugging|

- **Production workflows:** use `nerdctl` for Containerd, native Docker CLI if still using Docker Engine
- **Kubernetes node troubleshooting:** use `crictl` for logs, inspections

---

## 7. After-Class Follow-Up

- **Review OCI specs** to understand image/runtime standards
- **Experiment hands-on**:
    
    1. Install Containerd alone and practice `nerdctl run …`
	
    2. On a kubelet node, use `crictl ps` and `crictl logs` to inspect pods
- **Questions for instructor:**
    
    - When will Docker CLI gain built-in support for encrypted images?
	
    - How do custom CRI endpoints affect `crictl` default socket paths?

