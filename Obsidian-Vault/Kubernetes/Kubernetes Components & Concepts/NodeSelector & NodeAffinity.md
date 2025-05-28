## Summary

-: **nodeSelector** is the simplest way to constrain pods to nodes by matching a single set of node labels. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/?utm_source=chatgpt.com "Assigning Pods to Nodes - Kubernetes"))  
-: **Node affinity** is a more expressive superset of nodeSelector that supports boolean operators (`In`, `NotIn`, `Exists`, etc.) and “soft” vs. “hard” preferences. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/?utm_source=chatgpt.com "Assigning Pods to Nodes - Kubernetes"), [Cast AI](https://cast.ai/blog/node-affinity-and-other-ways-to-control-scheduler/?utm_source=chatgpt.com "Node Affinity, Node Selector, and Other Ways to Control Kubernetes ..."))  
-: Two main **affinity types**:

- `requiredDuringSchedulingIgnoredDuringExecution` (hard requirement)
    
- `preferredDuringSchedulingIgnoredDuringExecution` (soft preference) ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/?utm_source=chatgpt.com "Assigning Pods to Nodes - Kubernetes"), [Cast AI](https://cast.ai/blog/node-affinity-and-other-ways-to-control-scheduler/?utm_source=chatgpt.com "Node Affinity, Node Selector, and Other Ways to Control Kubernetes ..."))

---

## 1. nodeSelector

-: Pods specify a single map of `{key: value}` that must exactly match labels on a candidate node. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/?utm_source=chatgpt.com "Assigning Pods to Nodes - Kubernetes"))  
-: **Precondition**: Nodes **must** be labeled first, e.g.:

```bash
kubectl label nodes node1 size=large
```

-: In your Pod spec:

```yaml
spec:
  nodeSelector:
    size: large
```

-: Scheduler filters _only_ nodes where `metadata.labels.size == "large"` before normal resource checks. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/?utm_source=chatgpt.com "Assigning Pods to Nodes - Kubernetes"))  
-: **Limitation**: Cannot express “OR” or “NOT” logic (e.g., large **or** medium).

---

## 2. Node Affinity

-: Uses `.spec.affinity.nodeAffinity` for richer expressions and “soft” vs. “hard” rules. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/?utm_source=chatgpt.com "Assigning Pods to Nodes - Kubernetes"), [Cast AI](https://cast.ai/blog/node-affinity-and-other-ways-to-control-scheduler/?utm_source=chatgpt.com "Node Affinity, Node Selector, and Other Ways to Control Kubernetes ..."))  
-: **Structure**:

```yaml
spec:
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
        - matchExpressions:
          - key: size
            operator: In
            values:
            - large
```

- `matchExpressions` allow operators: `In`, `NotIn`, `Exists`, `DoesNotExist`, `Gt`, `Lt`. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/?utm_source=chatgpt.com "Assigning Pods to Nodes - Kubernetes"), [Cast AI](https://cast.ai/blog/node-affinity-and-other-ways-to-control-scheduler/?utm_source=chatgpt.com "Node Affinity, Node Selector, and Other Ways to Control Kubernetes ..."))  
    -: **Example – OR logic**:

```yaml
requiredDuringSchedulingIgnoredDuringExecution:
  nodeSelectorTerms:
  - matchExpressions:
    - key: size
      operator: In
      values:
      - large
      - medium
```

-: **Example – NOT logic**:

```yaml
requiredDuringSchedulingIgnoredDuringExecution:
  nodeSelectorTerms:
  - matchExpressions:
    - key: size
      operator: NotIn
      values:
      - small
```

-: **Exists operator** (no `values` needed):

```yaml
preferredDuringSchedulingIgnoredDuringExecution:
- weight: 1
  preference:
    matchExpressions:
    - key: size
      operator: Exists
```

-: **Soft preference**:

```yaml
preferredDuringSchedulingIgnoredDuringExecution:
- weight: 10
  preference:
    matchExpressions:
    - key: zone
      operator: In
      values: ["us-east1", "us-west1"]
```

Scheduler “tries” these first but will fall back if none match. ([Cast AI](https://cast.ai/blog/node-affinity-and-other-ways-to-control-scheduler/?utm_source=chatgpt.com "Node Affinity, Node Selector, and Other Ways to Control Kubernetes ..."))

---

## 3. Affinity Types & Lifecycle Phases

-: **`requiredDuringSchedulingIgnoredDuringExecution`**

- Hard rule: Pod **won’t** schedule if no node matches.
    
- Once running, changes to node labels do **not** evict the Pod. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/?utm_source=chatgpt.com "Assigning Pods to Nodes - Kubernetes"))  
    -: **`preferredDuringSchedulingIgnoredDuringExecution`**
    
- Soft rule: Scheduler “prefers” matching nodes but will schedule anywhere if needed.
    
- Running Pods are **not** evicted on later label changes. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/?utm_source=chatgpt.com "Assigning Pods to Nodes - Kubernetes"))  
    -: **(Future) `requiredDuringSchedulingRequiredDuringExecution`**
    
- Hard scheduling **and** eviction if node labels later violate rules (planned feature).

---

## 4. When to Use Which

-: **nodeSelector** → trivial cases where you only need a single label match.  
-: **NodeAffinity (required)** → enforce placement on a strict set of nodes (e.g., GPU nodes).  
-: **NodeAffinity (preferred)** → express “best-effort” locality (e.g., zone preferences).  
-: Combine with **taints/tolerations** when you need both inclusion (affinity) and exclusion (taints). ([Cast AI](https://cast.ai/blog/node-affinity-and-other-ways-to-control-scheduler/?utm_source=chatgpt.com "Node Affinity, Node Selector, and Other Ways to Control Kubernetes ..."))
