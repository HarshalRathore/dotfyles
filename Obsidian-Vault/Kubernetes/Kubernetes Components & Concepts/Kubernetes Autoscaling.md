**Kubernetes Autoscaling: Quick-Recall Notes**

---

## 1. Scaling Fundamentals

- **Vertical vs. Horizontal**
    
    - **Vertical Scaling** = increase/decrease resources (CPU, memory) on **existing** server/pod.
        
    - **Horizontal Scaling** = add/remove **instances** (servers or pods) to share load.
        
- **Workload vs. Cluster**
    
    - **Workload Scaling**: affects pods/containers.
        
    - **Cluster Scaling**: affects nodes (servers).
        
- **Manual vs. Automated**
    
    - **Manual H-Scale (pods)**: `kubectl scale` or edit replica count.
        
    - **Manual V-Scale (resources)**: `kubectl edit` to bump requests/limits → pod recreated.
        
    - **Automated**: use built-in autoscalers (HPA, VPA) or Cluster Autoscaler for nodes.
        

---

## 2. Horizontal Pod Autoscaler (HPA)

- **Purpose**: automatically **add/remove pods** based on resource usage.
    
- **How it Works**:
    
    - Monitors CPU/memory (via Metrics Server) or custom metrics.
        
    - Compares current usage (%) to target threshold.
        
    - Adjusts `.spec.replicas` within defined min/max.
        
- **Key Facts**:
    
    - Built-in since Kubernetes v1.23.
        
    - Requires Metrics Server.
        
    - Can be created **imperatively** (`kubectl autoscale`) or **declaratively** (`kind: HorizontalPodAutoscaler`).
        
- **Use When**:
    
    - Handling **sudden traffic spikes** (web frontends, stateless services).
        
    - Ensuring continuous availability by spinning up pods without pod restarts.
        

---

## 3. In-Place Pod Vertical Resizing

- **Default Behavior**: changing CPU/memory requires **pod deletion + recreation**.
    
- **In-Place Resize (Alpha)**:
    
    - **Feature Gate**: `InPlacePodVerticalScaling`.
        
    - **Resize Policy** per resource:
        
        - `restart: false` → live update (e.g., CPU).
            
        - `restart: true` → normal pod restart (e.g., memory).
            
- **Limitations**:
    
    - Only CPU & memory.
        
    - Not for init/ephemeral containers.
        
    - Cannot shrink memory below current usage.
        
    - Windows pods not supported.
        
- **Use Case**: fine-tune resources on stateful or long-running pods without full restart where supported.
    

---

## 4. Vertical Pod Autoscaler (VPA)

- **Purpose**: automatically **adjust pod resource requests/limits** over time.
    
- **Components**:
    
    - **Recommender**: analyzes historical/current usage, suggests optimal CPU/memory.
        
    - **Updater**: evicts pods that drift outside recommended range.
        
    - **Admission Controller**: on pod creation, injects recommended values into spec.
        
- **Modes** (`updatePolicy.mode`):
    
    - **Off** = only recommendations (no pod changes).
        
    - **Initial** = set resources **on creation** only.
        
    - **Recreate**= evict & recreate pods when needed.
        
    - **Auto** = future in-place updates + recreate fallback.
        
- **Key Facts**:
    
    - Not built-in; must deploy VPA components.
        
    - Depends on Metrics Server.
        
    - Ideal for **stateful or heavy-compute** workloads (databases, JVM, ML).
        
- **Use When**:
    
    - You need **right-sized** CPU/memory per pod.
        
    - Avoid chronic under- or over-provisioning.
        

---

### Decision Guide

- **Rapid scaling needs** (web/API): use **HPA**.
    
- **Resource tuning** (stateful/long-running): use **VPA**.
    
- **Combine**: HPA handles instance count, VPA handles per-pod sizing—avoid conflicts by scoping each to distinct workloads.