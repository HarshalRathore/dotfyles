---
type: entity
title: "Kubectl"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "install-kubernetes-components_c70e92"
  - "manual-notes_10b5c5"
  - "rolling-updates-&-rollbacks_f484ef"
  - "replication-controller-&-replicaset_285a2a"
  - "kubernetes-autoscaling_59fbf3"
tags:
  - product
aliases:
  - kubectl CLI
---
## Related Entities
- kubernetes
- [[entities/kubeadm]]
- [[entities/kubelet]]
- pods
- ReplicationController
- ReplicaSet

## Related Concepts
- [[kubernetes-api-server]]
- [[concepts/control-plane-node]]
- [[concepts/bootstrapping]]
- [[concepts/replicasets]]
- [[concepts/scaling]]
- [[concepts/deployment]]
- [[concepts/services]]
- [[concepts/resource-requests]]
- [[concepts/resource-limits]]

## Mentions in Source

> **Source: kubernetes-installation-steps_e573e8**
> - "Any (kubectl, kubelets)"
> - "3. **Installing kubeadm, kubelet, kubectl**"

> **Source: install-kubernetes-components_c70e92**
> - "**kubectl**: CLI to interact with your cluster."
> - "Verify installation: `kubectl version --client`"

> **Source: manual-notes_10b5c5**
> - "sudo apt-get install -y kubelet kubeadm kubectl"
> - "sudo apt-mark hold kubelet kubeadm kubectl"

> **Source: rolling-updates-&-rollbacks_f484ef**
> - "kubectl rollout status <deployment> → Check **status** of the rollout."
> - "kubectl rollout history <deployment> → See **revision history**."
> - "kubectl apply -f deployment.yaml"
> - "kubectl set image deployment/<name> <container-name>=<new-image>"

> **Source: replication-controller-&-replicaset_285a2a**
> - "kubectl expose rs nginx-rs --port=80 --target-port=80 --name=nginx-svc"
> - "kubectl scale rs nginx-rs --replicas=5"
> - "kubectl get rc,rs,pods"
> - "kubectl describe rs nginx-rs"

> **Source: kubernetes-autoscaling_59fbf3**
> - "Manual H-Scale (pods): `kubectl scale` or edit replica count."
> - "Manual V-Scale (resources): `kubectl edit` to bump requests/limits → pod recreated."

> **Source: kubernetes-autoscaling_59fbf3**
> - "Manual H-Scale (pods): `kubectl scale` or edit replica count."
> - "Manual V-Scale (resources): `kubectl edit` to bump requests/limits → pod recreated."