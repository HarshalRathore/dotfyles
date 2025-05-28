## Summary

-: **PriorityClasses** assign integer priorities to Pods so that higher-priority Pods can preempt lower-priority ones when resources are scarce. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/?utm_source=chatgpt.com "Pod Priority and Preemption - Kubernetes"))

---

## 1. What Is a PriorityClass?

-: A cluster‐scoped object (`scheduling.k8s.io/v1/ PriorityClass`) defining:

- **value**: an integer (higher = more important)
    
- **globalDefault** (optional): if true, this class becomes the default for Pods with no `priorityClassName`
    
- **description**: human-readable guidance  
    -: Built-in system classes (`system-node-critical`, `system-cluster-critical`) use very large values (~ 2 billion) to protect core components. ([Kubernetes](https://kubernetes.io/docs/tasks/administer-cluster/guaranteed-scheduling-critical-addon-pods/?utm_source=chatgpt.com "Guaranteed Scheduling For Critical Add-On Pods - Kubernetes"))
    

---

## 2. Priority Ranges

-: **User workloads**: permitted values from about `-2^31` to `+10^9`.  
-: **System workloads**: reserved range up to `+2^31` for control-plane Pods. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/?utm_source=chatgpt.com "Pod Priority and Preemption - Kubernetes"))

---

## 3. Defining a PriorityClass

-: Example YAML:

```yaml
apiVersion: scheduling.k8s.io/v1
kind: PriorityClass
metadata:
  name: high-priority
value: 1000
globalDefault: false
description: "High priority for critical batch jobs"
preemptionPolicy: PreemptLowerPriority   # default
```

-: Create with kubectl:

````bash
kubectl create priorityclass high-priority \
  --value=1000 \
  --description="Critical workload" \
  --preemption-policy="Never" \
  # add --global-default=true if you want this as the default
``` :contentReference[oaicite:3]{index=3}  

---

## 4. Assigning Priority to Pods  
-: In your Pod (or Deployment) spec:
```yaml
spec:
  priorityClassName: high-priority
````

-: If omitted, Pods get **priority 0** unless a PriorityClass has `globalDefault: true`. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/?utm_source=chatgpt.com "Pod Priority and Preemption - Kubernetes"))

---

## 5. Preemption Behavior

-: **preemptionPolicy** (on the PriorityClass) controls eviction behavior when scheduling a higher-priority Pod:

- `PreemptLowerPriority` (default): evicts lower-priority Pods to free resources ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/?utm_source=chatgpt.com "Pod Priority and Preemption - Kubernetes"))
    
- `Never`: will wait in the scheduling queue instead of preempting
    

-: Scheduler order:

1. Sort pending Pods by priority.
    
2. Try to schedule each; if unschedulable → if `PreemptLowerPriority`, evict minimal set of lowest-priority victims, then schedule.
    
3. If `Never`, keep retrying on back-off without evicting. ([Kubernetes](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/?utm_source=chatgpt.com "Pod Priority and Preemption - Kubernetes"))
    

---

## 6. Use Cases

-: **Control-plane resilience**: built-in system classes ensure API server, controllers, etc., never get preempted.  
-: **Critical services**: assign high priority to databases or real-time workloads.  
-: **Batch jobs**: give them lower priority so they don’t starve interactive services.

---

_: Practice creating and assigning PriorityClasses, experiment with both preemption policies, and observe how scheduling changes under resource pressure!_