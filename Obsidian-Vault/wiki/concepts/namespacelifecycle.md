---
type: concept
title: "NamespaceLifecycle"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/admission-controllers_7667fc]]"
tags:
  - deployment
aliases:
  - Namespace Protection
  - Namespace Lifecycle Controller
---
# NamespaceLifecycle

## Definition
NamespaceLifecycle is a built-in validating admission controller in Kubernetes that ensures namespaces exist and protects critical system namespaces from deletion. It operates during the API request validation phase to maintain cluster integrity.

## Key Characteristics
- Operates as a built-in controller within the Kubernetes API server's **validating phase**.
- Validates that a referenced namespace exists before allowing resource creation in it.
- Protects predefined system namespaces (e.g., `kube-system`, `kube-public`) from deletion attempts.
- Rejects API requests that would delete a protected system namespace or create resources in a non-existent namespace.
- Contributes directly to cluster stability by preventing accidental disruptions to core control plane components.

## Applications
- **Preventing Accidental Cluster Damage**: Blocks administrative errors that could delete core namespaces like `kube-system`, which could cause cluster instability or outage.
- **Enforcing Namespace References**: Ensures all resources are deployed into valid, existing namespaces, providing a first line of defense against configuration errors.
- **Cluster Stability & Security**: Acts as a foundational safeguard in the Kubernetes admission control chain, ensuring basic cluster integrity policies are enforced automatically.

## Related Concepts
- [[concepts/validating-phase]]
- [[concepts/admission-controller]]

## Related Entities
None.

## Mentions in Source
- **NamespaceLifecycle**: ensures namespaces exist, protects system namespaces from deletion. — admission-controllers_7667fc
- Runs **ValidatingAdmissionWebhook**, **ValidatingAdmissionPolicy**, and built-in validating controllers (e.g., **NamespaceLifecycle**, **ResourceQuota**, **PodSecurity**, **NodeRestriction**). — admission-controllers_7667fc