## 1. Environment Variables in Pods
![[Pasted image 20250528200133.png]]

- **`env` field** injects variables into containers:

    ```yaml
spec:
  containers:
  - name: app
	image: my-image
	env:
	- name: APP_COLOR
	  value: "blue"
    ```
    
- **From ConfigMap or Secret**: use `valueFrom` instead of `value`:

```yaml
	env:
	- name: APP_COLOR
	  valueFrom:
		configMapKeyRef:
		  name: app-config
		  key: app_color
	- name: DB_PASS
	  valueFrom:
		secretKeyRef:
		  name: app-secret
		  key: db_password
    ```


---

## 2. ConfigMaps: Centralize Plaintext Config

### Creation
![[Pasted image 20250528202842.png]]

- **Imperative** (literals):

    ```bash
kubectl create configmap app-config \
  --from-literal=app_color=blue \
  --from-literal=log_level=debug
    ```

- **Imperative** (file):

```bash
kubectl create configmap app-config --from-file=./config.properties
```

- **Declarative** (`app-config.yaml`):

```yaml
apiVersion: v1
kind: ConfigMap
metadata: { name: app-config }
data:
  app_color: blue
  log_level: debug
```

```bash
kubectl apply -f app-config.yaml
```


### Injection into Pods

- **Environment**:

```yaml
envFrom:
- configMapRef:
	name: app-config
```

- **Volume-mounted files** (advanced): mount whole ConfigMap as files in a `volume`.

---

## 3. Secrets: Storing Sensitive Data

### Why Secrets?

- ConfigMaps store plaintext → unsuitable for passwords/keys.

- Secrets store **base64-encoded** data (not encrypted by default).
### Creation
![[Pasted image 20250528202945.png]]
- **Imperative**:

```bash
kubectl create secret generic app-secret \
  --from-literal=db_user=admin \
  --from-literal=db_password=supersecret
```

- **Imperative** (file):

```bash
kubectl create secret generic app-secret --from-file=./password.txt
```

- **Declarative** (`app-secret.yaml`):

```yaml
apiVersion: v1
kind: Secret
metadata: { name: app-secret }
data:
  db_user:  YWRtaW4=          # base64 of “admin”
  db_password: c3VwZXJzZWNyZXQ=  # base64 of “supersecret”
```

```bash
kubectl apply -f app-secret.yaml
    ```    

### Viewing & Decoding

- List: `kubectl get secrets`

- Describe (hides values): `kubectl describe secret app-secret`

- YAML (shows base64 data): `kubectl get secret app-secret -o yaml`

- Decode:

```bash
echo "c3VwZXJzZWNyZXQ=" | base64 --decode
```    

### Injection into Pods

- **Environment**:

```yaml
envFrom:
- secretRef:
	name: app-secret
```

- **Volume**: mount secret as files; each key becomes a file with its value.    

---

## 4. Encrypting Secrets at Rest

### The Problem

- By default, etcd stores Secrets ==**unencrypted**== → anyone with etcd access reads plaintext.    

### [Enabling Encryption](https://kubernetes.io/docs/tasks/administer-cluster/encrypt-data/)

1. **Check** if enabled:

```bash
ps aux | grep kube-apiserver | grep encryption-provider-config
```

1. **Create** `EncryptionConfiguration` (e.g., `enc-config.yaml`):

```yaml
apiVersion: apiserver.config.k8s.io/v1
kind: EncryptionConfiguration
resources:
  - resources: ["secrets"]
	providers:
	  - aescbc:
		  keys:
		  - name: key1
			secret: "<base64-32-byte-key>"
	  - identity: {}
```

1. **Mount & Configure** API-server (e.g., in `/etc/kubernetes/manifests/kube-apiserver.yaml`):

```yaml
- --encryption-provider-config=/etc/kubernetes/enc/enc-config.yaml
volumes:
- hostPath: { path: /etc/kubernetes/enc }
  name: enc-conf
volumeMounts:
- mountPath: /etc/kubernetes/enc
  name: enc-conf
```

1. **Restart** API-server; verify new Secrets are encrypted in etcd:

```bash
ETCDCTL_API=3 etcdctl get /registry/secrets/default/my-secret \
  --cert=/etc/kubernetes/pki/etcd/server.crt \
  --key=/etc/kubernetes/pki/etcd/server.key \
  --cacert=/etc/kubernetes/pki/etcd/ca.crt
```

Encrypted data appears garbled.

1. **Re-encrypt existing Secrets** by re-saving:

```bash
kubectl get secret my-secret -o json | kubectl apply -f -
```


---

### 🔑 Recall Tips

- **`env` vs `envFrom`**: single vars vs whole ConfigMap/Secret.
    
- **ConfigMap** = plaintext; **Secret** = base64-encoded.
    
- **`command`** overrides ENTRYPOINT; **`args`** overrides CMD.
    
- **Encrypt at Rest**: use an **`EncryptionConfiguration`**, place your chosen provider first (not `identity`).