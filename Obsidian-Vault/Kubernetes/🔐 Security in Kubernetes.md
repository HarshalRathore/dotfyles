Kubernetes is the go-to platform for deploying production applications, making **security** a critical concern. Security in Kubernetes can be categorized into several layers:

---

## 🚪 1. **Cluster Access Security (Host-Level)**

- Ensure **SSH access** is secure:
    
    - ❌ Disable root access
        
    - ❌ Disable password-based login
        
    - ✅ Enable SSH-key based authentication only
        
- Secure the **infrastructure** (physical or cloud). If the host is compromised, so is the entire cluster.
    

---

## 📡 2. **Kubernetes API Server: The Control Plane Gateway**

All management requests flow through the **kube-apiserver**. Hence, securing this is vital.

### 🔑 a. **Authentication**

- Determines: **Who can access the API server?**
    
- Kubernetes doesn’t manage users directly (except **ServiceAccounts**). Options include:
    
    - Static password file (`--basic-auth-file`) _(Deprecated since v1.19)_
        
    - Static token file (`--token-auth-file`)
        
    - X.509 client certificates
        
    - Integration with external identity providers:
        
        - LDAP
            
        - Kerberos
            
        - OIDC
            
- All authentication is handled by **kube-apiserver**
    

#### 👤 Human vs Machine Users

|User Type|Example|Managed by K8s|
|---|---|---|
|Humans|Admins, Devs|❌ No|
|Machines|Pods, Services|✅ Yes (via `ServiceAccounts`)|

---

### 🛡️ b. **Authorization**

- Determines: **What actions can authenticated users perform?**
    
- Handled by various modules:
    
    - ✅ **RBAC** (Role-Based Access Control) → Most common
        
    - ✅ **ABAC** (Attribute-Based Access Control)
        
    - ✅ Node Authorizer
        
    - ✅ Webhooks
        

**RBAC Structure**:

- `Role`: Defines permissions
    
- `RoleBinding`: Assigns users/groups to Roles
    
- `ClusterRole` & `ClusterRoleBinding`: For cluster-wide permissions
    

---

## 🔐 3. **Securing Internal Component Communication**

- All traffic between:
    
    - kube-apiserver ↔ etcd
        
    - kube-controller-manager
        
    - kube-scheduler
        
    - kubelet
        
    - kube-proxy
        
- is encrypted with **TLS certificates**

---

## 🌐 4. **Pod-to-Pod Communication**

- 🔄 By default, all pods can communicate with each other
    
- 🔒 Use **Network Policies** to restrict communication between Pods
    
    - Specify allowed ingress/egress traffic per Pod/Namespace
        

---

## ⚠️ Static Auth Files (for Learning Only)

### 📁 Example: Basic Auth via CSV file

> **Deprecated as of Kubernetes v1.19**  
> Use only for local learning or legacy setups

#### Sample CSV:

```csv
password123,user1,u0001
password123,user2,u0002
```

#### Mount File and Pass Flag:

```yaml
# kube-apiserver.yaml
- --basic-auth-file=/tmp/users/user-details.csv
```

#### Authenticate via cURL:

```bash
curl -v -k https://localhost:6443/api/v1/pods -u "user1:password123"
```

---

## 📌 RBAC Example for User Access

```yaml
# Role
kind: Role
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  namespace: default
  name: pod-reader
rules:
- apiGroups: [""]
  resources: ["pods"]
  verbs: ["get", "watch", "list"]

# RoleBinding
kind: RoleBinding
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: read-pods
  namespace: default
subjects:
- kind: User
  name: user1
  apiGroup: rbac.authorization.k8s.io
roleRef:
  kind: Role
  name: pod-reader
  apiGroup: rbac.authorization.k8s.io
```

---

## 📌 Summary

|Security Aspect|Description|
|---|---|
|**Authentication**|Who can access the cluster|
|**Authorization**|What users can do|
|**TLS Encryption**|Secures internal component communication|
|**Network Policies**|Restrict Pod-to-Pod access|
|**Host Security**|SSH hardening, infra protection|

---

Let me know if you'd like visual diagrams, a mind map, or Markdown export!