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
	    - Control plane component that watches for newly created [Pods](https://kubernetes.io/docs/concepts/workloads/pods/) with no assigned [node](https://kubernetes.io/docs/concepts/architecture/nodes/), and selects a node for them to run on.
	- **Controller Manager**:
		- In robotics and automation, a control loop is a non-terminating loop that regulates the state of a system.
		  Here is one example of a control loop: a thermostat in a room.
		  When you set the temperature, that's telling the thermostat about your desired state. The actual room temperature is the current state. The thermostat acts to bring the current state closer to the desired state, by turning equipment on or off. In Kubernetes, controllers are control loops that watch the state of your cluster, then make or request changes where needed. Each controller tries to move the current cluster state closer to the desired state.
	    - Logically, each [controller](https://kubernetes.io/docs/concepts/architecture/controller/) is a separate process, but to reduce complexity, they are all compiled into a single binary and run in a single process.
	    - There are many different types of controllers. Some examples of them are:
			- Node controller: Responsible for noticing and responding when nodes go down.
			- Job controller: Watches for Job objects that represent one-off tasks, then creates Pods to run those tasks to completion.
			- EndpointSlice controller: Populates EndpointSlice objects (to provide a link between Services and Pods).
			- ServiceAccount controller: Create default ServiceAccounts for new namespaces.
	- **Etcd**:
	    - A distributed key-value store that maintains the cluster's state.
	    - Stores only metadata related to cluster management, not application data.
	    - It listens on port `2379` it has a `etcdctl` utility to talk with the etcd api server.
	    - Kubeadm runs it as a static pod 
#### Role of Etcd in cluster Management
- Acts as the cluster's "brain," storing all state changes.
- Helps:
    - The scheduler decide pod placement.
    - The controller manager respond to failures.
    - The API server provide up-to-date cluster information.
- Uses replication and redundancy for high availability.

![[Pasted image 20241202221024.png]]

