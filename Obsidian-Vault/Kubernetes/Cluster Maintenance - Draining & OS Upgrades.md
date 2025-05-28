### 1. Why Drain Nodes for OS Upgrades?  
- **Unplanned Downtime Risk**  
  - Pods on a downed node become unreachable.  
  - If a node stays offline > `pod-eviction-timeout` (default 5 min), its pods are “evicted” and recreated elsewhere (if managed by a ReplicaSet).  
- **Graceful Maintenance**  
  - Proactively relocate workloads before reboot—avoids potential long outages or lost pods.  

---

### 2. Key Commands & Concepts  
- **`kubectl cordon <node>`**  
  - Marks node **Unschedulable**.  
  - **Does NOT** touch existing pods—prevents **new** pods from landing there.  

- **`kubectl drain <node>`**  
  - Equivalent to:  
    1. `cordon`: mark Unschedulable  
    2. **Graceful eviction** of all evictable pods (ReplicaSets, Deployments, DaemonSets excluded by default).  
  - Ensures managed pods are recreated on other nodes.  
  - Flags for special cases: `--ignore-daemonsets`, `--delete-local-data`, etc.  

- **`kubectl uncordon <node>`**  
  - Reverses cordon—marks node **Schedulable** again.  
  - Note: existing pods won’t automatically return; new scheduling or replacements will.  

---

### 3. Maintenance Workflow  
1. **Drain the Node**  
   ```bash
   kubectl drain node-A --ignore-daemonsets
   ```  
   → safely migrates pods off node-A  
2. **Perform OS Upgrade & Reboot**  
3. **Uncordon the Node**  
   ```bash
   kubectl uncordon node-A
   ```  
   → allows new pods (or replacements) to be scheduled back  

---

### 4. Pod-Eviction-Timeout  
- Configured on **kube-controller-manager** (`--pod-eviction-timeout`, default **5 m**).  
- Master waits this long before declaring a node “dead” and evicting pods.  

---

### 5. Best Practices  
- **One-by-One**: Drain and upgrade nodes **sequentially** to maintain availability.  
- **Replica-Safety**: Ensure critical workloads run with ≥ 2 replicas.  
- **Cordoning Only**: Use `cordon` alone for rolling OS-level tests without moving existing pods.  
- **Automation**: Integrate drain/upgrade/uncordon into your maintenance scripts or CI/CD pipelines.

---

# **Cluster Upgrade Strategies & Best Practices**

### 1. Kubernetes Versioning Primer
![[Screenshot From 2025-05-28 21-22-29.png]]

- **Semantic Versioning**: `MAJOR.MINOR.PATCH`
    
    - **Minor** (e.g. 1.10 → 1.11): new features, every few months
        
    - **Patch** (e.g. 1.11.2 → 1.11.3): bug/security fixes, frequent
        
- **Release Channels**:
    
    - **Alpha**: features off by default, may break
        
    - **Beta**: features on by default, well-tested
        
    - **Stable**: production-ready
        

---

### 2. Version Skew Policy
![[Screenshot From 2025-05-28 21-25-56.png]]
- **kube-apiserver**: highest version (X)
    
- **kube-controller-manager & kube-scheduler**: ≤ X – 0 or X – 1
    
- **kubelet & kube-proxy**: ≤ X – 0, X – 1, or X – 2
    
- **kubectl**: may be one minor above or below `kube-apiserver`
    

---

### 3. Supported Upgrade Path

- Kubernetes supports **only the latest three minor releases** at any time.
    
    - E.g., if latest is 1.12 → supported: 1.10, 1.11, 1.12
        
- **Never skip** minors: 1.10 → 1.11 → 1.12 → …
    

---

### 4. Upgrade Approaches

1. **Managed Clusters** (GKE, EKS, AKS)
    
    - UI or single-click upgrades
        
2. **kubeadm Clusters**
    
    - `kubeadm upgrade plan` → shows current & target versions
        
    - `kubeadm upgrade apply v1.<next>` → bump control-plane
        
    - Manually update kubelet packages & restart
        
3. **DIY Clusters**
    
    - Manually upgrade each control-plane binary
        
    - Drain nodes, replace binaries, uncordon
        

---

### 5. Rolling Upgrade Workflow (kubeadm)

1. **Master Nodes**
    
    - `kubeadm upgrade plan` → review versions
        
    - Upgrade `kubeadm` CLI → same minor as target
        
    - `kubeadm upgrade apply v1.<next>` → updates API-server, controller-manager, scheduler
        
    - **Note**: Control-plane briefly unavailable—worker pods stay running
        
    - Upgrade kubelet package & restart on each master
        
2. **Worker Nodes** (one at a time)
    
    - `kubectl drain <node> --ignore-daemonsets` → evict, cordon
        
    - Upgrade `kubeadm` & `kubelet` packages → restart service
        
    - `kubeadm upgrade node` → update node’s bootstrap config
        
    - `kubectl uncordon <node>` → allow scheduling
        

---

### 6. Zero-Downtime Tips

- **One-by-one node upgrades** prevents full-cluster outage
    
- Ensure critical workloads run with **multiple replicas**
    
- Automate with rolling-update scripts or GitOps pipelines