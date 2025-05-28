## 🚀 Deployment Rollouts, Updates & Rollbacks – Easy Recall Notes

### 🛠️ What Happens When a Deployment is Created?

- It **triggers a rollout**, creating **Revision 1** (initial version).
    
- On updating (like changing the container version), **a new rollout happens**, creating **Revision 2**, and so on.
    
- You can **track history** of these revisions.

### 📊 Useful Commands for Monitoring:

- `kubectl rollout status <deployment>` → Check **status** of the rollout.
    
- `kubectl rollout history <deployment>` → See **revision history**.
    
- `kubectl describe deployment <deployment>` → See **detailed deployment info**.
    

---

### 🎯 Deployment Strategies – Two Ways to Upgrade
![[Pasted image 20250528194715.png]]
#### 1️⃣ **Recreate Strategy**

- **All old Pods are deleted** first, then **new ones are created**.
    
- ❌ App goes **down temporarily** – bad user experience.
    
- **Not default** strategy.
    

#### 2️⃣ **Rolling Update Strategy** ✅ (Default)

- **One old Pod down → One new Pod up** (in a loop).
    
- ✔️ App stays **live** throughout.
    
- Seamless user experience.
    

🧠 _Tip to remember: “Rolling = Round-robin update”._

---

### 🔄 How to Update Your App

#### Option 1: Update via YAML

1. Change your `deployment.yaml` (e.g., update image/tag).
    
2. Run:
    
    ```bash
    kubectl apply -f deployment.yaml
    ```
    
3. 🚀 New rollout triggered → new replica set created → pods updated.
    

#### Option 2: Quick Image Update (CLI)

- Run:
    
    ```bash
    kubectl set image deployment/<name> <container-name>=<new-image>
    ```
    
- ⚠️ Be careful – config changes **won’t reflect in YAML**, can cause mismatch later.
    

---

### ⚙️ Under the Hood: What Happens During an Update?
![[Pasted image 20250528194830.png]]

- Kubernetes creates a **new ReplicaSet**.
    
- Gradually **spins up new pods** & **terminates old ones** (rolling style).
    
- View with:
    
    ```bash
    kubectl get replicasets
    ```
    
- You’ll see:
    
    - Old ReplicaSet with 0 pods.
        
    - New one with desired replica count (e.g., 5).
        

---

### ⏪ Rolling Back to Previous Version
![[Pasted image 20250528194921.png]]

- Something wrong after upgrade? No worries!
    
- Run:
    
    ```bash
    kubectl rollout undo deployment/<name>
    ```
    
- Kubernetes:
    
    - **Kills the new pods**
        
    - **Brings back the old pods** using the previous ReplicaSet.
        

🧠 _Tip to remember: “Undo brings back the good old days!”_

---

### 📌 Quick Command Cheat Sheet

|Action|Command|
|---|---|
|Create deployment|`kubectl create -f deployment.yaml`|
|List deployments|`kubectl get deployments`|
|Apply changes from YAML|`kubectl apply -f deployment.yaml`|
|Update image via CLI|`kubectl set image deployment/...`|
|Check rollout status|`kubectl rollout status <deployment>`|
|View rollout history|`kubectl rollout history <deployment>`|
|Undo last deployment|`kubectl rollout undo <deployment>`|
|View replica sets|`kubectl get replicasets`|
|Describe a deployment|`kubectl describe deployment <deployment>`|

---

### 🧠 Final Recall Triggers

- **Rolling Update = Safe + Default**
    
- **Recreate = Risky downtime**
    
- **New rollout = New replica set**
    
- **Undo = Back to stable previous version**
    
- Always keep YAML and CLI updates **in sync**.
