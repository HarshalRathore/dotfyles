## 🚀 Setting the Stage: Why Build Your Own Kubernetes Cluster?

Imagine you're part of a team moving your application into the modern cloud-native world. You have two options:

- **Managed Kubernetes** (like AWS EKS, GCP GKE, etc.)
- **Self-Managed Kubernetes** (you build and control it)

Your team chooses to **build a self-managed Kubernetes cluster** — for maximum flexibility and learning.  
This journey begins by manually setting up Kubernetes **from scratch**, starting with **one master node** and **two worker nodes**.

👉 **Master Node**: The brain of Kubernetes, responsible for cluster management.  
👉 **Worker Nodes**: The arms and legs — these run your actual applications (pods/containers).

---

## 🛠️ Planning the Infrastructure

### 🧠 Minimum Requirements (as per Kubernetes Docs)

- **Each Node**:
    
    - 2 CPUs
        
    - 2 GB RAM
        

For our cluster:

- 1x Master Node
- 2x Worker Nodes

They all will run **Ubuntu Server** OS (a popular, lightweight, cloud-friendly Linux distribution).

---

## ☁️ Choosing the Platform: Bare Metal or Cloud?

Since there's no IT team handing out servers, we'll **create virtual servers (EC2 instances) on AWS**.  
However, you could just as easily use:

- Your own physical servers
- VirtualBox
- DigitalOcean, GCP, etc.

**Important**: This guide is **platform-agnostic**. AWS is just an example.

---

## 🔐 Preparing AWS

### 1. Create an AWS Account

(If you already have one, skip.)

- Fill basic details + credit card for verification.
- You'll get **1 year of Free Tier** benefits (good enough for our demo cluster!).

### 2. Create an Admin User (Best Practice)

- Never use the AWS root account day-to-day.
- Create an Admin user using **IAM**.
- Give it both **Console access** and **Programmatic access** (CLI).

---

## 🕸️ Understanding AWS Networking (VPC Basics)

When you launch EC2 instances, they live inside a **VPC (Virtual Private Cloud)**:

- **Private IPs** for internal cluster communication.
- **Public IPs** for external SSH access.
- **Internet Gateway** connects VPC to the internet.
- **Security Groups** control firewall rules (which ports are open).

🔴 _Remember_: Kubernetes nodes need to talk to each other freely — internal communication is critical!

---

## 📦 Provisioning the Infrastructure (EC2 Instances)

### Step-by-Step:

1. **Launch EC2 Instance (Master Node)**:
    
    - OS: **Ubuntu 20.04 LTS**
        
    - Instance Type: **t2.medium** (2 CPU, 4GB RAM)
        
    - Key Pair: Create a new SSH key ("kubernetes-node.pem") — download and keep it safe.
        
    - Security Group: Allow **SSH (port 22)**.
        
2. **Launch EC2 Instances (Worker Nodes)**:
    
    - 2x Instances
        
    - OS: **Ubuntu 20.04 LTS**
        
    - Instance Type: **t2.large** (better, 2 CPU, 8GB RAM) _(or t2.medium if saving cost)_
        
    - Use the same Key Pair for SSH access.
        
3. **Name Your Servers** in AWS Console:
    
    - `master-node`
        
    - `worker-node-1`
        
    - `worker-node-2`
        

✅ After a few minutes, all three instances are up and running — **but they're just empty Ubuntu servers** right now.

---

## 🔑 Connecting to the Servers (SSH Access)

1. Move the `.pem` file to your `.ssh/` folder.
    
2. Set correct permissions:
	```chmod 400 kubernetes-node.pem```
3. Connect to the Master Node:
	```ssh -i ~/.ssh/kubernetes-node.pem ubuntu@<Master-Node-Public-IP>```
	(Accept the authenticity prompt.)
4. Become root:
	`sudo -i`
You now have full admin access inside your server!

---
## ⚡ Coming Next 
[[Kubernetes installation steps]]