![[Screenshot From 2024-12-01 18-22-03.png]]

# **Pods**:

- The smallest deployable unit in Kubernetes.
- Abstracts container runtime and usually runs one application container (but can run multiple if needed).
- Each pod has a unique internal IP address for communication.
- Pods are **ephemeral** (can be recreated), so relying on their IP is impractical.(for this reason we use [[#Services]])
# **Services**:

- Provide stable IP addresses and load balancing.
- Ensure consistent access to pods, even if they restart.
- Types of services:
- **Internal Services**: For communication within the cluster.
- **External Services**: To expose applications outside the cluster. These initially use node IP(s) and ports but can be replaced with user-friendly URLs using **Ingress**.

# **Ingress**:

- Ingress is a Kubernetes resource that manages external HTTP and HTTPS access to services within a cluster.
- It acts as a reverse proxy, routing user requests to the appropriate services using predefined rules.
- Supports host-based or path-based routing (e.g., `/api` routes to one service, `/app` to another).
# **Configuration Management**:

- **ConfigMaps**:
    - Store external configuration data (e.g., database URLs).
    - Enable changes without rebuilding application images.

- **Secrets**:
    - Store sensitive data (e.g., passwords).
    - Data is base64 encoded (further encryption is recommended for security).
    - Both ConfigMaps and Secrets can be accessed by pods through:
        - Environment variables.
        - Configuration files.

# **Volumes**:

- Attach persistent storage (local or remote) to pods to retain data across pod restarts.
- Kubernetes does not manage data persistence (e.g., backups); users are responsible for it.

# **Replication and Scalability**

- **Deployments**:
    - Manage multiple replicas of pods.
    - Provide a blueprint for scaling applications.
    - Services load balance traffic across these replicas.

- **StatefulSets**:    
    - Used for stateful applications (e.g., databases).
    - Ensure data consistency across replicas by managing shared storage.
    - More complex than Deployments; hosting databases externally is often simpler.

# **DaemonSets**:

- Deploy one pod per node in the cluster.
- Ideal for system-level applications (e.g., logging agents, network proxies).
- Automatically adjusts pod count when the number of nodes changes.

# Worker Nodes
- Run application containers containing pods.
- Require three processes:
    - **Container Runtime** (e.g., Docker, Containerd): Provides the environment to run containers.
    - **Kubelet**: Manages pod scheduling and resource allocation.
    - **Kube-Proxy**: Forwards requests from services to pods, ensuring efficient communication.

# Master Node
- Manage the cluster's state and coordinate worker nodes.
- Run control plane processes to maintain the cluster's functionality.
	Control Plane Processes on Master Nodes
	- **API Server**:    
	    - The gateway for all cluster interactions.
	    - Validates requests and manages security and authentication.
	- **Scheduler**:
	    - Assigns pods to worker nodes based on resource availability.
	- **Controller Manager**:
	    - Monitors cluster state and handles failures (e.g., rescheduling crashed pods).
	- **Etcd**:
	    - A distributed key-value store that maintains the cluster's state.
	    - Stores only metadata related to cluster management, not application data.
#### Role of Etcd in cluster Management
- Acts as the cluster's "brain," storing all state changes.
- Helps:
    - The scheduler decide pod placement.
    - The controller manager respond to failures.
    - The API server provide up-to-date cluster information.
- Uses replication and redundancy for high availability.

![[Pasted image 20241202221024.png]]

