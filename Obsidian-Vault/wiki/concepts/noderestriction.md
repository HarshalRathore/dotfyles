---
type: concept
title: "NodeRestriction"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/admission-controllers_7667fc]]"
tags:
  - security
aliases:
  - NodeRestrictionAdmissionController
  - NodeRestrictionController
---
# NodeRestriction

## Definition
NodeRestriction is a built-in validating admission controller in Kubernetes that limits the permissions of kubelets to update only the node and pod objects they own. It runs during the validating phase of the admission control pipeline, ensuring that kubelets cannot modify nodes or pods belonging to other nodes, thereby enhancing cluster security by preventing compromised kubelets from affecting the broader cluster.

## Key Characteristics
- Acts as a validating admission controller in the Kubernetes API server request pipeline
- Restricts kubelet API access to only node and pod objects owned by that specific node
- Works in conjunction with the NodeAuthorizer to enforce node-level authorization
- Prevents a compromised kubelet from modifying or creating resources on other nodes
- Enabled by default in modern Kubernetes clusters for security hardening
- Operates during the validation phase of admission control

## Applications
- **Cluster Security Hardening**: Essential for securing multi-node clusters against lateral movement from compromised nodes
- **Node Isolation**: Enforces workload isolation at the node level by preventing cross-node interference
- **Compliance Requirements**: Helps meet security compliance standards that require strict node isolation
- **Cloud Provider Deployments**: Used by managed Kubernetes services to enforce node security boundaries
- **Shared Infrastructure Security**: Protects against threats in environments where nodes share underlying infrastructure

## Related Concepts
- [[concepts/validating-phase]]
- [[concepts/admission-controller]]
- [[concepts/node-authorizer]]

## Related Entities
*No related entities*

## Mentions in Source
- **NodeRestriction**: ... — admission-controllers_7667fc
- Runs **ValidatingAdmissionWebhook**, **ValidatingAdmissionPolicy**, and built-in validating controllers (e.g., **NamespaceLifecycle**, **ResourceQuota**, **PodSecurity**, **NodeRestriction**). — admission-controllers_7667fc