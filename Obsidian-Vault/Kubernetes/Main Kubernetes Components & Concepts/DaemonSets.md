## Summary

-: A **DaemonSet** ensures that **one copy** of a Pod runs on **each eligible node** in the cluster; Pods are added/removed automatically as nodes join/leave. ([Kubernetes](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/?utm_source=chatgpt.com "DaemonSet - Kubernetes"))  
-: Ideal for deploying **node-local agents** (logging, monitoring, networking) that must run everywhere. ([Kubernetes](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/?utm_source=chatgpt.com "DaemonSet - Kubernetes"))

---

## 1. What Is a DaemonSet?

-: A controller (like ReplicaSet) that maintains **exactly one Pod** per targeted node.  
-: When a node is **added**, the DaemonSet controller **creates** its Pod there; when a node is **removed**, its Pod is **garbage-collected**. ([Kubernetes](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/?utm_source=chatgpt.com "DaemonSet - Kubernetes"))

---

## 2. Common Use Cases

-: **kube-proxy** or **CNI plugins** (network agents) on every node.  
-: **Log collectors** (e.g., Fluentd, Fluent Bit) or **monitoring agents** (e.g., Prometheus Node Exporter).  
-: **Storage daemons** (e.g., Ceph, Glusterd) that require node-local access. ([Kubernetes](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/?utm_source=chatgpt.com "DaemonSet - Kubernetes"))

---

## 3. Basic DaemonSet Manifest Structure

```yaml
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: my-daemon
spec:
  selector:
    matchLabels:
      app: my-daemon
  template:
    metadata:
      labels:
        app: my-daemon
    spec:
      containers:
      - name: agent
        image: my-agent:latest
        # additional spec (volumes, resources, etc.)
```

-: `.spec.selector.matchLabels` **must** match `.spec.template.metadata.labels`. ([Kubernetes](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/?utm_source=chatgpt.com "DaemonSet - Kubernetes"))  
-: Works just like a ReplicaSet, but targeting **nodes** instead of scaling counts.

---

## 4. Lifecycle & Scheduling

-: **Pre-v1.12**: DaemonSet bypassed the scheduler by setting `.spec.nodeName` directly on each Pod.  
-: **v1.12+**: DaemonSet uses the **default scheduler** plus **node affinity** under the hood to bind Pods to nodes. ([Kubernetes](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/?utm_source=chatgpt.com "DaemonSet - Kubernetes"))

---

## 5. Managing DaemonSets

-: **Create**:

```bash
kubectl apply -f my-daemonset.yaml
```

-: **View**:

```bash
kubectl get daemonset
kubectl describe daemonset my-daemon
```

-: **Update**: modify `.spec.template` and `kubectl apply`; DaemonSet will **roll out** new Pods on nodes.  
-: **Delete**:

```bash
kubectl delete daemonset my-daemon
```

→ cleans up all created Pods.

---

## 6. Scoping & Node Selection

-: You can limit which nodes get the Pod via **node selectors**, **node affinity**, or **taints/tolerations** in the DaemonSet’s Pod spec.  
-: Example (node affinity):

```yaml
spec:
  template:
    spec:
      affinity:
        nodeAffinity:
          requiredDuringSchedulingIgnoredDuringExecution:
            nodeSelectorTerms:
            - matchExpressions:
              - key: node-role.kubernetes.io/worker
                operator: Exists
```
