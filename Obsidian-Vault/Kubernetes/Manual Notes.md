# Setting up Nodes 
I created 3 virtual machines and treated them as nodes, some important points while creating vm(s) for our cluster:-
* Firstly keep the CPU count to >=2 (not less than 2) otherwise kubeadm gives error at time of init.
* Allotted 1.5GB of RAM to each VM, 1GB is the minimum i guess.
* Give them at least 10GB of space otherwise they'll run out of space soon.
* I modified the network of the VM to Bridged Adapter(basically puts the Virtual machines as a complete standalone entity on the network, which network? the network with which your host is connected in this case your home network your router so your host(laptop) has some 192.168.1.23 ip and your virtual machines have 192.168.1.5 ip for an example) but you can explore or choose other if you know what you want.
* Now write down IP of each of your virtualmachine and add them to each of your virtual machines `/etc/hosts` file so now the VMs can communicate with each other using name resolution also add these to your host so you can easily ssh with just names of the nodes or virtual machines
```
user@master:~$ cat /etc/hosts
127.0.0.1 localhost
127.0.1.1 master

#The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters

192.168.1.4 master
192.168.1.3 worker1
192.168.1.5 worker2
```

# Initializing cluster setup process
### Turn off swap on master and workers
Do this with `swapoff -a` check with `cat /proc/swaps` it shouldn't show any devices or entry now edit the `/etc/fstab` file and remove any line which has swap word in it basically try to find what line is setting up swap device.
## Opening up ports
### Ports to open on master node
You can double check from the official docs but here are the ports
```
sudo iptables -I INPUT -p tcp --dport 6443 -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 2379:2380 -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 10250 -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 10259 -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 10257 -j ACCEPT

```

### Ports to open on worker nodes
```
sudo iptables -I INPUT -p tcp --dport 10250 -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 10256 -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 30000:32767 -j ACCEPT
```

## Installing CRI (Container Runtime Interface):-
Try to follow the official docs but here are the commands that were followed, this is same for both master and worker nodes
```
echo "[Worker] Installing containerd…"
sudo apt-get update
cat <<EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter

# Setup required sysctl params, these persist across reboots.
cat <<EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF

# Apply sysctl params without reboot
sudo sysctl --system

sudo apt-get install -y containerd

sudo mkdir -p /etc/containerd
sudo containerd config default | tee /etc/containerd/config.toml
sudo systemctl restart containerd
```

## Installing kubeadm, kubelet and kubectl :-
Same as above try to follow the docs but here are the commands 
```
sudo apt-get update
# apt-transport-https may be a dummy package; if so, you can skip that package
sudo apt-get install -y apt-transport-https ca-certificates curl gpg

# If the directory `/etc/apt/keyrings` does not exist, it should be created before the curl command, read the note below.
sudo mkdir -p -m 755 /etc/apt/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.33/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

# This overwrites any existing configuration in /etc/apt/sources.list.d/kubernetes.list
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.33/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

sudo systemctl enable --now kubelet
```

## Initializing kubeadm 
kubeadm does a lot of stuff like generating certificates for communication, static pods manifests and much more run this command to start the process `sudo kubeadm init` and to revert it `sudo kubeadm reset` 

## Installing some CNI (Container Networking Interface) :-
The tutorial is saying install weaveNet 
