### 1. DNS Between Containers on a User-Defined Network
When you use a **user-defined bridge network** like in your Compose file (`k8s_net`), Docker runs an embedded DNS server at the subnet’s gateway IP (e.g. `172.20.0.1`). Containers automatically register their **service names** and **container_names** as DNS A-records.

- **From inside** `master`, you can `ping worker1` or `ping worker2` (once you set `hostname:`), because each name resolves via Docker’s internal DNS.
    
- **From your host machine**, that embedded DNS is _not_ used—you only see the raw IPs. To resolve `master` from the host, you’d need to add an entry in your host’s `/etc/hosts` or run a DNS server.
### 2. What IP Does the Host Have on That Network?
Your host isn’t a “member” of the Docker bridge network; it’s the **gateway**. Docker automatically assigns the first IP in the subnet (e.g. `172.20.0.1`) to the bridge interface on the host:
```
$ ip addr show docker0
3: docker0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 ...
    inet 172.20.0.1/24 brd 172.20.0.255 scope global docker0
```
- **172.20.0.1** is the host’s IP **on** that docker bridge.
- Containers use that as their default gateway to reach “the outside.”

### 3. What is the Bridge Network in Docker?

Docker **by default** connects containers to a **virtual switch** (software network) called a **bridge**.

You can think of it like a **small virtual LAN (local area network)** **inside** your machine:

- Each container is like a small computer connected to that network.
    
- They all get an internal IP address (e.g., `172.20.0.X`).
    
- Traffic between containers is **private** and stays inside your machine unless routed.
    

👉 In your case, `k8s_net` is a **user-defined bridge network** (better than the default one because it supports automatic DNS, which we'll talk about next).

You can list all networks: `docker network ls` 
and inspect the bridge: ``docker network inspect k8s_net``
	You'll see the subnet (`172.20.0.0/16`) and which containers are connected.

### 4. What is the "Embedded DNS Server" in Docker?

You said it very well: **DNS = phonebook** of IPs and names.

When you create a **user-defined bridge network**, Docker **automatically starts a tiny internal DNS server** to help containers find each other **by name** instead of IP.

🛠 How it works:

- The DNS server **lives** inside the Docker daemon (the `dockerd` process).
    
- It listens at the bridge network's **gateway IP** (`172.20.0.1` for example).
    
- Each container is configured with `/etc/resolv.conf` to use `172.20.0.1` as its **nameserver**.
    
- When you `ping worker1` from `master`, `master` asks `172.20.0.1`, "Hey, what is worker1’s IP?"
    
- The embedded DNS answers: "172.20.0.11".
    

🔥 Even if you did **not set hostname** inside the container, **Docker registers** the **container name** (from `docker-compose.yml`) into the embedded DNS.

That's why you **can ping `worker1`** even though you didn’t change `/etc/hostname`.

**This DNS server lives inside Docker**, not inside a visible container—you can’t "see" it as a running container, but it is part of Docker engine functionality.

You can even verify the container's `/etc/resolv.conf`: `cat /etc/resolv.conf`
You'll probably see:
```
nameserver 127.0.0.11
options ndots:0
```
* 127.0.0.11 is a special loopback IP handled inside Docker for DNS queries.

Docker’s embedded DNS isn’t a separate process you can see listening on 172.20.0.1 inside each container—instead, Docker hijacks DNS resolution in the container’s network namespace by:

1. **Injecting a special nameserver IP (127.0.0.11)** into each container’s `/etc/resolv.conf`.
    
2. **Intercepting all UDP/TCP port 53 queries** sent to that loopback address and transparently NAT’ing them to its internal DNS server, which actually lives in the Docker daemon’s network stack on the host.
    

---
### 5. How it works step-by-step

1. **Container’s `/etc/resolv.conf`**
```
nameserver 127.0.0.11
options ndots:0
```
- Tells the container’s resolver library: “Send all DNS queries to 127.0.0.11.”

2. **Network Namespace Magic**
	- Each container uses its own Linux network namespace.
	- Docker configures **iptables** rules in that namespace so that any packet destined for **127.0.0.11:53** is **redirected** to the Docker daemon’s embedded DNS process (which actually listens on the host’s bridge IP, e.g. 172.20.0.1:53).

3. **Transparent Redirection**
	- Even though the container “thinks” it’s talking to 127.0.0.11, behind the scenes the packet is NAT’d over to the Docker-managed DNS service.	
	- That DNS service knows about all containers on the user-defined network (their names & IPs) and answers accordingly.

4.  **Why not 172.20.0.1 in `/etc/resolv.conf`?**
	- Using 127.0.0.11 keeps DNS queries local to the container’s loopback interface.
	- It avoids having to reconfigure each container’s routing table to reach 172.20.0.1.
	- Docker’s iptables rules do the heavy lifting to forward traffic under the covers.
#### Visual summary:-
```
[app process] --(DNS query)--> 127.0.0.11:53
     │
iptables REDIRECT rule
     ↓
docker-proxy/NAT
     ↓
[Docker daemon’s DNS] listening on host’s bridge IP (172.20.0.1:53)
     ↓
DNS lookup (worker1 → 172.20.0.11)
     ↑
reply packet (back through NAT/iptables)
     ↑
127.0.0.11:53 → [app process]
```
### 6. 📂 Linux Network Namespace
**Definition**
A network namespace is a separate instance of the Linux network stack (interfaces, routing table, iptables).
**Hands-On Viewing**
1. List namespaces:
	`lsns | grep net`
2. Find container PID:
	`docker inspect -f '{{.State.Pid}}' master`
3. Enter netns:
	```
	sudo nsenter -t <PID> -n
	ip a        # see only container’s veth0, lo
	```
4. Inspect iptables in netns:
	`sudo nsenter -t <PID> -n iptables -t nat -L -n -v`

### 7. 📂 All Linux Namespace Types
Since kernel 5.6 there are **eight** namespaces [Wikipedia](https://en.wikipedia.org/wiki/Linux_namespaces?utm_source=chatgpt.com):

| Type       | What It is        | Isolates                                                 |
| ---------- | ----------------- | -------------------------------------------------------- |
| **mnt**    | Mount Namespace   | Filesystem mounts                                        |
| **pid**    | PID namespace     | Process ID numbering, separate init (PID1)               |
| **net**    | Network namespace | Interfaces, IPs, routes, netfilter                       |
| **ipc**    | IPC namespace     | SysV IPC (shared memory, message queues, semaphores)     |
| **uts**    | UTS namespace     | Hostname & NIS domain                                    |
| **user **  | User namespace    | UID/GID mappings (root inside container != root on host) |
| **cgroup** | Cgroup namespace  | Cgroup hierarchy Indentification                         |
| **time**   | Time namespace    | Monotonic & boot clocks isolation                        |
