## Summary

-: **Requests** reserve minimum CPU/memory for scheduling; **Limits** cap maximum usage at runtime. ([Kubernetes](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/?utm_source=chatgpt.com "Resource Management for Pods and Containers - Kubernetes"), [Sysdig](https://sysdig.com/blog/kubernetes-limits-requests/?utm_source=chatgpt.com "Understanding Kubernetes Limits and Requests - Sysdig"))  
-: CPU over-use is **throttled**; memory over-use triggers an **OOM kill**. ([Kubernetes](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/?utm_source=chatgpt.com "Resource Management for Pods and Containers - Kubernetes"))

---

## 1. Scheduling with Requests

-: Each container’s `resources.requests` tells the **kube-scheduler** what minimum CPU/memory it needs.  
-: Scheduler filters out nodes lacking the requested resources; pods stay **Pending** if none qualify.  
-: Example Pod snippet:

```yaml
resources:
  requests:
    cpu: "2"        # 2 vCPUs
    memory: "1Gi"   # 1 GiB RAM
```
---

## 2. Units & Granularity  
-: **CPU** can be fractional:  
- `0.1` CPU = `100m` (milliCPU)  
- Minimum `1m` (0.001 CPU)  
-: **Memory** uses SI or binary suffixes:  
- `256Mi` = 256 Mebibytes (2²⁰ bytes)  
- `1G` = 1 Gigabyte (10⁹ bytes)  
- **Gi** vs **G**: Gi = 1,024 Mi; G = 1,000 MB

---

## 3. Enforcing Limits  
-: Add `resources.limits` under each container to cap usage:
```yaml
resources:
  limits:
    cpu: "1"       # max 1 vCPU
    memory: "512Mi" # max 512 MiB
````

-: **CPU** → kernel throttles on excess; **Memory** → kernel OOM-kills container if pressure. ([Kubernetes](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/?utm_source=chatgpt.com "Resource Management for Pods and Containers - Kubernetes"))

---

## 4. Default Behavior & Best Practice Scenarios

-: **No requests/limits** → pods may schedule anywhere and consume all node resources; **dangerous**.  
-: **Limit only** → Kubernetes auto-sets request = limit.  
-: **Both set** → guaranteed request, allowed up to limit.  
-: **Request only** → guaranteed request, can burst above as long as capacity remains (ideal for flexible workloads). ([Kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/assign-cpu-resource/?utm_source=chatgpt.com "Assign CPU Resources to Containers and Pods - Kubernetes"))

---

## 5. Namespace Defaults with LimitRange

-: **LimitRange** objects can define per-container defaults/min/max for `requests` & `limits` in a namespace.  
-: Example LimitRange:

```yaml
apiVersion: v1
kind: LimitRange
metadata: { name: resource-limits }
spec:
  limits:
  - type: Container
    default:
      cpu: 500m
      memory: 256Mi
    defaultRequest:
      cpu: 250m
      memory: 128Mi
    max:
      cpu: "1"
      memory: 1Gi
    min:
      cpu: 100m
      memory: 64Mi
```

-: New Pods **without** explicit values inherit these defaults; violates min/max are **rejected**. ([Kubernetes](https://kubernetes.io/docs/concepts/policy/limit-range/?utm_source=chatgpt.com "Limit Ranges | Kubernetes"))

---

## 6. Aggregate Control with ResourceQuota

-: **ResourceQuota** enforces hard caps on total requests/limits across a namespace.  
-: Example:

```yaml
apiVersion: v1
kind: ResourceQuota
metadata: { name: compute-quota }
spec:
  hard:
    requests.cpu: "4"
    requests.memory: 4Gi
    limits.cpu: "10"
    limits.memory: 10Gi
```

-: Attempts to exceed these totals result in a **403 Forbidden** error. ([Kubernetes](https://kubernetes.io/docs/concepts/policy/resource-quotas/?utm_source=chatgpt.com "Resource Quotas - Kubernetes"))

---

## 7. Editing Pods vs. Deployments

-: **Pods**: only `image`, `activeDeadlineSeconds`, and `tolerations` are editable in-place; other changes require delete & recreate.  
-: **Deployments**: editing the pod template auto-rolls new Pods with updated `resources` fields.
