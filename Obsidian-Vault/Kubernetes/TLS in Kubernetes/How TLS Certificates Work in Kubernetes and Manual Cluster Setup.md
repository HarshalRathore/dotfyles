#### 1. **The Need for TLS in Kubernetes**

- Kubernetes is a distributed system where multiple components communicate over the network, such as the API server, kubelet, and etcd.
- To ensure these communications are secure and authenticated, Kubernetes uses **TLS certificates** and **Mutual TLS (mTLS)**.
- TLS prevents unauthorized access, protects sensitive data, and ensures that only trusted components can communicate with each other.

#### 2. **Understanding TLS Certificates in Kubernetes**

- A **Certificate Authority (CA)** is created to serve as the trusted entity for signing all certificates in the cluster.
- Each Kubernetes component (e.g., API server, kubelet, scheduler) requires its own certificate to:
    1. **Authenticate itself** to other components.
    2. **Encrypt communication** between components.
- Certificates are issued and signed by the CA, ensuring that only trusted certificates are used within the cluster.
- For example, the kubelet authenticates to the API server using a client certificate, while the API server uses a server certificate for secure communication with clients and other components.

#### 3. **Manual Setup of a Kubernetes Cluster**

![[Pasted image 20241204112940.png]]

- **Step 1: Install Container Runtime and kubelet**
    - Begin by installing a **container runtime** (e.g., Docker or containerd) and **kubelet** on all nodes (master and worker).
    - These are essential for running containers and managing resources.

- **Step 2: Deploy Master Components as Static Pods**
    - On the control-plane node, deploy critical components like the API server, scheduler, controller manager, and etcd as **static pods**.
    - Static pods are managed directly by the kubelet without relying on the API server, solving the "chicken and egg" problem of Kubernetes bootstrapping.

- **Step 3: Set Up kube-proxy**
    - Deploy **kube-proxy** on all nodes to manage communication between services and pods within the cluster.

#### 4. **TLS Certificate Management**

![[Pasted image 20241204113120.png]]

- **Step 1: Create a Self-Signed CA**
    - Generate a self-signed CA certificate to act as the central authority for issuing and signing other certificates.
- **Step 2: Issue Certificates for Each Component**
    - Generate and sign certificates for components like the API server, etcd, scheduler, controller manager, and kubelet.
    - Each certificate is stored in `/etc/kubernetes/pki` for secure access.
- **Step 3: Configure Mutual TLS (mTLS)**
    - Set up mTLS for components to authenticate and securely communicate with each other. For example:
        - The API server authenticates etcd using a client certificate.
        - The kubelet authenticates to the API server using its certificate.
- **Step 4: Administrator Access**
    - Administrators must have a client certificate signed by the CA to interact with the API server via `kubectl`.

#### 5. **Simplifying the Setup with kubeadm**

- Manually setting up a Kubernetes cluster with TLS certificates and configuration can be complex and error-prone.
- **kubeadm** is a command-line tool designed to simplify this process.
    - It automates the generation of certificates, configuration of components, and the bootstrapping of the cluster.
    - With a single command, kubeadm sets up a functional cluster, reducing the risk of configuration mistakes.

## Manual TLS setup 

**1. Certificate Types & Naming Conventions**

- **CA certificates** (root): `ca.crt`, `ca.key`

- **Server certificates** (public key `.crt`, private key `.key`):
    
    - API Server: `apiserver.crt` / `apiserver.key`
	
    - etcd Server: `etcdserver.crt` / `etcdserver.key`
	
    - Kubelet Server (per node): `<nodeName>-kubelet.crt` / `<nodeName>-kubelet.key`

- **Client certificates** (for authenticating to API Server):
    
    - Admin user: `admin.crt` / `admin.key`
	
    - kube-scheduler: `scheduler.crt` / `scheduler.key`
	
    - kube-controller-manager: `controller-manager.crt` / `controller-manager.key`
	
    - kube-proxy: `kubeproxy.crt` / `kubeproxy.key`
	
    - Kubelet as client (per node): `system:node:<nodeName>.crt` / `.key`


> **Tip**: Filenames ending in `.key` (or containing “key”) are private keys; `.crt`/`.pem` are public certificates.

---

**2. Trust Root: The Cluster CA**

- Generate CA key & self-signed cert:

```bash
openssl genrsa -out ca.key 2048
openssl req -x509 -new -nodes -key ca.key -subj "/CN=kubernetes-ca" -out ca.crt
```

- All other certs are signed by this CA.


---

**3. Generating Client Certs (e.g. `admin`)**

1. **Private key**

```bash
openssl genrsa -out admin.key 2048
```

1. **CSR** (Common Name = user identity; add `-subj "/CN=kube-admin/OU=system:masters"` for group)

```bash
openssl req -new -key admin.key -subj "/CN=kube-admin/OU=system:masters" -out admin.csr
```

1. **Sign CSR**

```bash
openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key \
  -CAcreateserial -out admin.crt -days 365
```


Repeat for each client (scheduler, controller-manager, kube-proxy, node clients), choosing appropriate `CN` & `OU`.

---

**4. Generating Server Certs with SANs (e.g. API Server)**

1. **Create OpenSSL config** (`apiserver.cnf`):

```ini
[req]
req_extensions = v3_req
[v3_req]
subjectAltName = @alt_names
[alt_names]
DNS.1 = kubernetes
DNS.2 = kubernetes.default
DNS.3 = kubernetes.default.svc
IP.1  = 10.96.0.1    # API server ClusterIP
```

1. **Key & CSR**

```bash
openssl genrsa -out apiserver.key 2048
openssl req -new -key apiserver.key -subj "/CN=kube-apiserver" \
  -config apiserver.cnf -out apiserver.csr
```

1. **Sign with CA**

```bash
openssl x509 -req -in apiserver.csr -CA ca.crt -CAkey ca.key \
  -CAcreateserial -out apiserver.crt -extensions v3_req \
  -extfile apiserver.cnf -days 365
```


---

**5. Distributing Certificates**

- Every component (API Server, etcd, kubelets) gets its own cert & key and the CA’s `ca.crt`.

- Client tools (e.g. `kubectl`) use a kubeconfig that references `<user>.crt`, `<user>.key`, and `ca.crt`.


---

**6. Verification & Usage**

- **API Server flags** (example):

```yaml
--tls-cert-file=/etc/kubernetes/pki/apiserver.crt
--tls-private-key-file=/etc/kubernetes/pki/apiserver.key
--client-ca-file=/etc/kubernetes/pki/ca.crt
--etcd-cafile=/etc/kubernetes/pki/ca.crt
--etcd-certfile=/etc/kubernetes/pki/apiserver.crt
--etcd-keyfile=/etc/kubernetes/pki/apiserver.key
```

- **kubelet flags** (per node):

```yaml
--tls-cert-file=/var/lib/kubelet/pki/<node>-kubelet.crt
--tls-private-key-file=/var/lib/kubelet/pki/<node>-kubelet.key
--client-ca-file=/etc/kubernetes/pki/ca.crt 
```


---

> **Certificate:**  
   A certificate is a digital document that contains important information such as:
	- The subject’s identity (who the certificate belongs to)  
	- The subject’s public key  
	- The issuer’s identity (usually a Certificate Authority, or CA)  
	- The digital signature of the issuer  
	- Validity period (when it starts and expires)  
	- Key usage and extended key usage (optional but often important for specifying the purpose of the certificate)
> 
> **Certificate Authority (CA):**  
   A Certificate Authority is a trusted entity that issues digital certificates. To become a CA, you first generate an RSA key pair (private and public key). Then you create a **root certificate**, which includes the CA's public key and other identity details. This root certificate is self-signed (i.e., the CA signs its own certificate) and is used by clients (like browsers) to verify the authenticity of other certificates issued by the CA.
> 
> **Server Certificate:**  
   When a server wants a trusted certificate, it first generates an RSA key pair. Then it creates a **Certificate Signing Request (CSR)**, which includes its public key and identity information. The CSR is digitally signed using the server’s private key to prove ownership of the key.   
   This CSR is sent to a trusted CA. The CA:
    1.Verifies the digital signature using the public key inside the CSR.
    2.Hashes the CSR content.
    3.Compares the hash with the decrypted signature to ensure the content wasn’t tampered with.
>
  If everything is valid, the CA signs the certificate using its **private key**, producing a valid **server certificate**.
> 
> **Client Certificate:**  
   Clients (like browsers or systems) have a list of trusted **root certificates** from different CAs. When a client receives a server certificate, it:
    1.Uses the public key of the issuing CA (from the root certificate) to verify the server certificate’s digital signature.
    2.Checks the hash and other fields like validity and usage.
>
Sometimes, the server may also request a **client certificate** for mutual authentication. In that case, the client provides its own certificate (also issued by a trusted CA), and the server performs similar verification steps to validate the client.

