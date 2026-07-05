---
type: concept
title: "ValidatingAdmissionPolicy"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/admission-controllers_7667fc]]"
tags:
  - auth
aliases:
  - Kubernetes Admission Policy
  - ValidatingAdmissionPolicy
---
# ValidatingAdmissionPolicy

## Definition
ValidatingAdmissionPolicy is a Kubernetes admission control method that allows declarative CEL (Common Expression Language) policies to be embedded directly in-cluster for validation. It provides a lightweight, configuration-driven alternative to webhooks for enforcing validation rules during the admission process, enabling the API server to reject non-compliant resource requests before they are persisted.

## Key Characteristics
- Uses declarative Common Expression Language (CEL) to define validation rules.
- Runs directly within the Kubernetes API server without requiring external webhook infrastructure.
- Operates during the **validating phase** of the admission control pipeline.
- Offers a static, configuration-driven approach to policy enforcement.
- Coexists with validating webhooks and built-in controllers to form a flexible enforcement framework.
- Enhances cluster security by enabling simple, in-cluster validation rules.

## Applications
- Enforcing simple validation rules (e.g., requiring specific labels, restricting image registries) without the overhead of a webhook service.
- Providing lightweight admission control for clusters where deploying a separate webhook server is impractical.
- Implementing static, configuration-as-code security and compliance policies.
- Supplementing or replacing specific use cases handled by complex validating webhooks.
- Used as part of a defense-in-depth strategy alongside other admission controllers.

## Related Concepts
- [[concepts/validatingadmissionwebhook]]
- [[concepts/admission-controller]]

## Related Entities
- *(No specific entities are linked at this time.)*

## Mentions in Source
- "Runs **ValidatingAdmissionWebhook**, **ValidatingAdmissionPolicy**, and built-in validating controllers (e.g., **NamespaceLifecycle**, **ResourceQuota**, **PodSecurity**, **NodeRestriction**)." — admission-controllers_7667fc
- "**ValidatingAdmissionPolicy**: embed declarative CEL policies directly in-cluster without external webhooks." — admission-controllers_7667fc