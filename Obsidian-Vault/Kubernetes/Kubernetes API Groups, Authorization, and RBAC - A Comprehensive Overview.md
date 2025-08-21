# API Groups in Kubernetes
### 🔹 What is the Kubernetes API?

- Kubernetes API Server (`kube-apiserver`) is the **central point of communication** with the cluster.

- All operations via `kubectl` or direct REST calls interact with this API.

- Example: To get version info  
`https://<master-node>:6443/version`


### 🔹 Accessing Cluster Resources

- Example: List pods  
`https://<master-node>:6443/api/v1/pods`

- Here:

- `/api/v1` = **API group and version**

- `/pods` = **resource**


---

## 🧱 API Groups Overview

### 📂 Types of API Groups

1. **Core API Group** (`/api/v1` – no named group prefix)

- Includes core Kubernetes resources like:
	
	- Pods, Services, Nodes, Namespaces, Secrets, ConfigMaps
	
	- Persistent Volumes (PV), Persistent Volume Claims (PVC)
	
	- Events, Endpoints, Replication Controllers, Bindings

1. **Named API Groups** (`/apis/<group>/<version>`)

- For modular and newer Kubernetes functionality

- Organized by domain/purpose

- Examples:
	
	- `apps/v1` → Deployments, ReplicaSets, StatefulSets
	
	- `networking.k8s.io/v1` → NetworkPolicies
	
	- `certificates.k8s.io/v1` → CertificateSigningRequests
	
	- `rbac.authorization.k8s.io/v1` → Roles, RoleBindings

---

## 🔨 Resources and Verbs

- **Resources**: Individual object types under each group (e.g., deployments, pods)

- **Verbs**: Actions that can be performed on resources:

- `get`, `list`, `create`, `delete`, `update`, `watch`, etc.

---

## 🔍 Viewing API Groups on a Cluster

### ✅ Methods:

1. **Direct Access via cURL**:

- `curl https://<master>:6443/`
	
	- Lists all available API groups

- ❗ Requires authentication (certs, tokens, etc.)

- Example with certs:

```bash
curl --cert user.crt --key user.key --cacert ca.crt https://<master>:6443/apis
```

1. **Using `kubectl proxy`**:

- Command:

```bash
kubectl proxy
```

- Runs a local HTTP proxy at `http://localhost:8001/`

- Uses credentials from `~/.kube/config` automatically

- Then access:

```bash
curl http://localhost:8001/
```


---

## 🚫 Kube Proxy vs. Kubectl Proxy

| Tool              | Purpose                                                                                  |
| ----------------- | ---------------------------------------------------------------------------------------- |
| **Kube Proxy**    | Handles network routing for services and pods within the cluster                         |
| **Kubectl Proxy** | A local proxy for securely accessing the Kubernetes API Server via the user's kubeconfig |

---

## 🧠 Summary

- Kubernetes APIs are **logically grouped** into core and named groups.

- Each group has **resources**, and each resource supports various **verbs** (actions).

- `kubectl proxy` is a safe, credential-aware way to explore the API without passing certs manually.

- Understanding these groups is crucial for **authorization** and **RBAC** in Kubernetes (next topic).

# 🔐 Kubernetes Authorization Mechanisms

After authentication, Kubernetes uses authorization modules to determine if a user or component has the necessary permissions.[Kubernetes](https://kubernetes.io/docs/reference/access-authn-authz/authorization/?utm_source=chatgpt.com)
### 🔸 Node Authorization

- **Purpose**: Specifically authorizes API requests made by kubelets, ensuring they can only perform actions necessary for their operation. [Kubernetes](https://kubernetes.io/docs/reference/access-authn-authz/node/?utm_source=chatgpt.com)
- **Identification**: Requests from kubelets are identified by usernames prefixed with `system:node:` and belonging to the `system:nodes` group.

### 🔸 Attribute-Based Access Control (ABAC)

- **Mechanism**: Uses policies defined in JSON files to grant permissions based on user attributes.
- **Limitation**: Requires manual updates and API server restarts upon policy changes, making it less flexible.

### 🔸 Role-Based Access Control (RBAC)

- **Mechanism**: Grants permissions based on roles assigned to users or groups, allowing dynamic and fine-grained access control.
- **Components**:
    - **Roles**: Define permissions within a namespace.
    - **ClusterRoles**: Define cluster-wide permissions.
    - **RoleBindings**: Bind Roles to users or groups within a namespace.
    - **ClusterRoleBindings**: Bind ClusterRoles to users or groups cluster-wide.

### 🔸 Webhook Authorization

- **Mechanism**: Delegates authorization decisions to an external service via HTTP callbacks.[Kubernetes](https://kubernetes.io/docs/reference/access-authn-authz/rbac/?utm_source=chatgpt.com)
- **Use Case**: Allows integration with external policy engines like Open Policy Agent (OPA) for complex authorization scenarios.

### 🔸 AlwaysAllow and AlwaysDeny

- **AlwaysAllow**: Permits all requests without any checks.    
- **AlwaysDeny**: Denies all requests, regardless of credentials.
- **Usage**: Primarily for testing purposes; not recommended for production environments.

### 🔸 Configuring Authorization Modes

- **Flag**: `--authorization-mode`
- **Example**: `--authorization-mode=Node,RBAC,Webhook`
- **Order Matters**: Authorization modules are evaluated in the order specified; the first module to approve or deny a request determines the outcome. [Kubernetes](https://kubernetes.io/docs/reference/access-authn-authz/authorization/?utm_source=chatgpt.com)
---
## 🛡️ Implementing RBAC in Kubernetes
*RBAC is a robust method for managing permissions within a Kubernetes cluster.*
### 🔹 Defining Roles and ClusterRoles

- **Role Example**:
```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  namespace: default
  name: pod-reader
rules:
- apiGroups: [""]
  resources: ["pods"]
  verbs: ["get", "watch", "list"]
```

- **ClusterRole Example**:
```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRole
metadata:
  name: cluster-admin
rules:
- apiGroups: ["*"]
  resources: ["*"]
  verbs: ["*"]
``` 

### 🔹 Binding Roles to Users or Groups

- **RoleBinding Example**:
```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: read-pods
  namespace: default
subjects:
- kind: User
  name: jane
  apiGroup: rbac.authorization.k8s.io
roleRef:
  kind: Role
  name: pod-reader
  apiGroup: rbac.authorization.k8s.io
```

- **ClusterRoleBinding Example**:
```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: admin-binding
subjects:
- kind: User
  name: admin
  apiGroup: rbac.authorization.k8s.io
roleRef:
  kind: ClusterRole
  name: cluster-admin
  apiGroup: rbac.authorization.k8s.io
```
### 🔹 Verifying Permissions

- **Check Access**:
	- `kubectl auth can-i create deployments --as jane`
- **Namespace-Specific Check**:
	- `kubectl auth can-i delete pods --as jane --namespace=dev`
### 🔹 Restricting Access to Specific Resources

- **Example**: Granting access to specific pods.
```yaml
rules:
- apiGroups: [""]
  resources: ["pods"]
  resourceNames: ["blue-pod", "orange-pod"]
  verbs: ["get", "delete"]
```
