## Summary

-: **Taints** let a node “repel” pods; **tolerations** let pods “accept” certain taints. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/?utm_source=chatgpt.com "Taints and Tolerations | Kubernetes"))  
-: Together they control which pods **cannot** be scheduled on which nodes, without guaranteeing placement. ([Apptio](https://blog.kubecost.com/blog/kubernetes-taints/?utm_source=chatgpt.com "Kubernetes Taints & Tolerations: Tutorial With Examples"))

---

## 1. Analogy & Core Concept

-: Imagine a **person** sprayed with bug **repellent** (a taint) so that most **bugs** (pods) won’t land.  
-: Only **bugs** with tolerance to that smell (tolerations) can land.  
-: In Kubernetes, **nodes** are “persons,” **pods** are “bugs.” ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/?utm_source=chatgpt.com "Taints and Tolerations | Kubernetes"))

---

## 2. Taint Anatomy

-: A taint has three parts:

- **key** (string)
    
- **value** (optional string)
    
- **effect** (must be one of `NoSchedule`, `PreferNoSchedule`, `NoExecute`) ([Kubernetes](https://kubernetes.io/docs/reference/kubectl/generated/kubectl_taint/?utm_source=chatgpt.com "kubectl taint | Kubernetes"))  
    -: ⟶ `NoSchedule`: pods **without** matching tolerations **will not** be scheduled.  
    -: ⟶ `PreferNoSchedule`: scheduler will **try to avoid** but may place if no other node fits.  
    -: ⟶ `NoExecute`: pods **without** matching tolerations are **evicted** (existing pods removed) and **not** scheduled. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/?utm_source=chatgpt.com "Taints and Tolerations | Kubernetes"))

---

## 3. Applying a Taint

-: Use `kubectl taint nodes` with a trailing `-` to remove, **without** to add:

```bash
# Add: repel all pods except those tolerating app=blue
kubectl taint nodes node1 app=blue:NoSchedule
# Remove that taint later
kubectl taint nodes node1 app=blue:NoSchedule-
```

([Kubernetes](https://kubernetes.io/docs/reference/kubectl/generated/kubectl_taint/?utm_source=chatgpt.com "kubectl taint | Kubernetes"))

---

## 4. Toleration Anatomy

-: A toleration in a Pod spec must match **key**, **operator** (`Equal` or `Exists`), **value** (if using `Equal`), and **effect**. ([Medium](https://medium.com/%40muppedaanvesh/kubernetes-taints-tolerations-b0e0ed076cad?utm_source=chatgpt.com "Kubernetes Taints & Tolerations | by Anvesh Muppeda | Medium"))  
-: Example YAML snippet:

```yaml
spec:
  tolerations:
  - key: "app"
    operator: "Equal"
    value: "blue"
    effect: "NoSchedule"
```

---

## 5. Scheduling Behavior with Taints & Tolerations

-: **Without** any tolerations, pods **cannot** land on tainted nodes → stay `Pending` until another node is free. ([Apptio](https://blog.kubecost.com/blog/kubernetes-taints/?utm_source=chatgpt.com "Kubernetes Taints & Tolerations: Tutorial With Examples"))  
-: **With** matching tolerations, pods **can** be scheduled on tainted nodes—but they are still subject to normal scheduling rules (resources, affinity, etc.). ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/?utm_source=chatgpt.com "Taints and Tolerations | Kubernetes"))  
-: `NoExecute` taints will **evict** non-tolerating pods already running when the taint is applied. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/?utm_source=chatgpt.com "Taints and Tolerations | Kubernetes"))

---

## 6. Master Node Special Case

-: Kubernetes **auto-taints** control-plane (master) nodes with `node-role.kubernetes.io/master:NoSchedule` so no user pods land there by default. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/?utm_source=chatgpt.com "Taints and Tolerations | Kubernetes"))

---

## 7. Common Use Cases

-: **Dedicated hardware** (e.g., GPU nodes): taint `gpu=true:NoSchedule`, add tolerations to GPU workloads. ([Apptio](https://blog.kubecost.com/blog/kubernetes-taints/?utm_source=chatgpt.com "Kubernetes Taints & Tolerations: Tutorial With Examples"))  
-: **Maintenance mode**: apply `NoExecute` taint to drain a node gracefully (existing pods evicted). ([Densify](https://www.densify.com/kubernetes-autoscaling/kubernetes-taints/?utm_source=chatgpt.com "Kubernetes Taints and Tolerations - Guide and Examples - Densify"))  
-: **Mixed workloads**: isolate critical system pods vs. batch jobs on different nodes. ([PerfectScale](https://www.perfectscale.io/blog/taints-and-tolerations-in-kubernetes?utm_source=chatgpt.com "Taints and Tolerations in Kubernetes - PerfectScale"))

---

## 8. Best Practices

-: Keep taint **keys/values** simple and meaningful. ([Cast AI](https://cast.ai/blog/kubernetes-taints-and-tolerations/?utm_source=chatgpt.com "Kubernetes Taints and Tolerations: 5 Best Practices - Cast AI"))  
-: Always verify matching **tolerations** before using `NoExecute` to avoid unintended evictions. ([Cast AI](https://cast.ai/blog/kubernetes-taints-and-tolerations/?utm_source=chatgpt.com "Kubernetes Taints and Tolerations: 5 Best Practices - Cast AI"))  
-: Combine **node affinity** with taints/tolerations for precise control (e.g., taint GPU nodes + affinity on label `gpu=true`). ([Apptio](https://blog.kubecost.com/blog/kubernetes-taints/?utm_source=chatgpt.com "Kubernetes Taints & Tolerations: Tutorial With Examples"))
