---
type: concept
title: "PodSecurity"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "admission-controllers_7667fc"
tags:
  - deployment
aliases:
  - PSP
---
# PodSecurity

## Definition
PodSecurity is a built-in validating admission controller that enforces Pod Security Standards on a per-namespace basis within a Kubernetes cluster. It validates pod security specifications during the admission control phase and rejects pods that violate the configured security policy for their target namespace. It serves as the direct replacement for the deprecated PodSecurityPolicy API.

## Key Characteristics
- Acts as a built-in validating admission controller in the Kubernetes API server request pipeline.
- Enforces security policies at the namespace level, rather than the cluster level.
- Supports three distinct security standards: `Privileged` (unrestricted), `Baseline` (minimally restrictive), and `Restricted` (heavily restricted, following security best practices).
- Validates multiple aspects of a pod's security context, including `securityContext`, capabilities (`add`/`drop`), volume types, and privileged access.
- Operates during the **Validating Phase** of admission control; pods are either admitted if compliant or rejected with an error if non-compliant.
- Replaces the deprecated and removed `PodSecurityPolicy` (PSP) resource, providing a simpler, namespace-scoped configuration model.

## Applications
- **Enforcing Security Baselines:** System administrators can set a `Baseline` or `Restricted` policy on production namespaces to prevent the scheduling of highly privileged or insecure pods, reducing the cluster's attack surface.
- **Multi-tenancy & Compliance:** Teams or tenants are assigned dedicated namespaces with appropriate security policies (e.g., `Restricted` for development, `Baseline` for legacy applications) to isolate workloads and meet compliance requirements.
- **Shift-Left Security:** Enables developers to receive immediate feedback during pod creation (via `kubectl apply` or CI/CD pipelines) if their deployment manifest violates the namespace security policy.
- **Auditing & Reporting:** When configured in `audit` or `warn` modes, it can log or warn on potential policy violations without blocking deployments, helping teams identify necessary security adjustments before enforcement is enabled.

## Related Concepts
- [[concepts/validating-phase]]
- [[concepts/admission-controller]]

## Related Entities
None

## Mentions in Source
- **PodSecurity**: enforces Pod Security Standards per namespace. — admission-controllers_7667fc
- Runs **ValidatingAdmissionWebhook**, **ValidatingAdmissionPolicy**, and built-in validating controllers (e.g., **NamespaceLifecycle**, **ResourceQuota**, **PodSecurity**, **NodeRestriction**). — admission-controllers_7667fc