-: **Admission Controllers** are pieces of code in the API server that intercept **create**, **update**, and **delete** requests **after** authentication/authorization but **before** persistence. They validate, mutate, or reject objects to enforce policies.

---

## 1. Why Admission Control?

-: Enforce cluster-wide policies beyond RBAC (e.g., image registry restrictions, required labels, security contexts).  
-: Validate object fields or automatically mutate requests (e.g., inject defaults, add finalizers).

---

## 2. Phases of Admission

1. **Mutating Phase**
    
    - Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**).
    - Can modify the incoming object or related resources.

2. **Validating Phase**
    
    - Runs **ValidatingAdmissionWebhook**, **ValidatingAdmissionPolicy**, and built-in validating controllers (e.g., **NamespaceLifecycle**, **ResourceQuota**, **PodSecurity**, **NodeRestriction**).
    - Only checks and rejects—cannot change objects.


---

## 3. Common Built-in Admission Controllers

- **NamespaceLifecycle**: ensures namespaces exist, protects system namespaces from deletion.
- **LimitRanger**: enforces `LimitRange` constraints and applies defaults if missing.
- **ServiceAccount**: auto-creates ServiceAccounts and tokens for Pods.
- **DefaultTolerationSeconds**: adds default tolerations for NotReady/Unreachable node taints.
- **ResourceQuota**: enforces total resource usage per namespace.
- **TaintNodesByCondition**: taints new nodes as NotReady/NoSchedule.
- **PodSecurity**: enforces Pod Security Standards per namespace.

---

## 4. Webhooks & Extensibility

- **MutatingAdmissionWebhook** & **ValidatingAdmissionWebhook**: call external HTTP services for custom logic.
- **ValidatingAdmissionPolicy**: embed declarative CEL policies directly in-cluster without external webhooks.

---

## 5. Enabling & Disabling Controllers

- API-server flags:    
    - `--enable-admission-plugins=<comma-separated>` to turn on additional controllers.
	
    - `--disable-admission-plugins=<comma-separated>` to turn off defaults.

- On kubeadm clusters, edit the `kube-apiserver` manifest under `/etc/kubernetes/manifests`.

---

## 6. Example: Namespace Auto-Provision

- **NamespaceExists** (validating): rejects requests to non-existent namespaces.
- **NamespaceAutoProvision** (mutating, disabled by default): auto-creates missing namespaces before continuing.

---
