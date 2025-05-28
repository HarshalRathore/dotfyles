### Why It Matters

- Containers run **one process**; understanding how that process is defined and overridden is key to stable workloads.

- Kubernetes Pods inherit their container’s entrypoint/CMD behavior—knowing how to tweak them lets you customize startup without rebuilding images.

---

## 1. Docker Basics: `CMD` vs. `ENTRYPOINT`

- **`CMD`** (default command):
    
    - Declares default **arguments** to the container’s entrypoint.
	
    - **JSON form** (recommended):
	
        ```dockerfile
CMD ["sleep", "5"]
        ```
	
    - If you run `docker run ubuntu-sleeper 10`, the entire CMD is **replaced** by `["10"]` → error unless entrypoint is set.

- **`ENTRYPOINT`** (fixed executable):
    
    - Declares the **program** to run at container start.
	
    - Anything you pass on `docker run` is **appended** as arguments.
	
        ```dockerfile
ENTRYPOINT ["sleep"]
CMD ["5"]
        ```
	
    - `docker run ubuntu-sleeper` → runs `sleep 5` (CMD used).
	
    - `docker run ubuntu-sleeper 10` → runs `sleep 10` (argument override).

---

## 2. Overriding at Runtime

- **Override CMD only**:

    ```bash
docker run ubuntu-sleeper 10  
# Effective: ["sleep", "10"]
    ```

- **Override ENTRYPOINT** (plus args):

    ```bash
docker run --entrypoint sleep2.0 ubuntu-sleeper 10  
# Runs: sleep2.0 10
    ```


---

## 3. Mapping to Kubernetes Pod Spec

|Dockerfile Instruction|Pod YAML Field|Overrides|
|---|---|---|
|`ENTRYPOINT`|`command`|Replaces entrypoint executable|
|`CMD`|`args`|Replaces only the default arguments|

- **Example Pod** (sleep 5 default):

    ```yaml
apiVersion: v1
kind: Pod
metadata:
  name: sleeper-pod
spec:
  containers:
  - name: sleeper
	image: ubuntu-sleeper
	# uses ENTRYPOINT["sleep"] + CMD["5"]
    ```

- **Override args (sleep 10)**:

    ```yaml
args: ["10"]      # overrides CMD only
    ```

- **Override entrypoint**:

```yaml
command: ["sleep2.0"]  # replaces ENTRYPOINT
args:    ["10"]        # still appends to ENTRYPOINT
    ```

---

## 4. Quick Recall Tips

- **`command` = ENTRYPOINT** → you’re picking the program.

- **`args` = CMD** → you’re picking its arguments.

- If you only need to tweak parameters, use **`args`**; leave **`command`** untouched.

- Always use **JSON-array form** in Dockerfile and Pod spec to avoid shell parsing surprises.