---
type: concept
title: "ValidatingAdmissionWebhook"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "admission-controllers_7667fc"
tags:
  - auth
aliases:
  - VWA
  - Validation Webhook
---
# ValidatingAdmissionWebhook

## Definition
ValidatingAdmissionWebhook is an admission controller in Kubernetes that invokes external HTTP services to validate API requests during the validating phase. It accepts or rejects objects based on custom validation logic but cannot modify them, enabling the enforcement of complex policies beyond the built-in controllers.

## Key Characteristics
- **External Validation**: Calls external HTTP services to run custom validation logic.
- **Non-Modifying**: Can only accept or reject an object; it cannot mutate or alter the object's state.
- **Pipeline Position**: Runs after MutatingAdmissionWebhooks and built-in validating controllers.
- **Policy Enforcement**: Used to enforce complex compliance, security, or business rules.
- **Extensibility**: Provides a mechanism to integrate arbitrary validation services into the Kubernetes API server pipeline.

## Applications
- Enforcing custom security policies and compliance checks on resources.
- Validating complex business rules for application deployments.
- Implementing organization-specific governance standards for cluster resources.
- Adding custom validation logic to supplement Kubernetes' built-in resource validation.

## Related Concepts
- [[concepts/mutatingadmissionwebhook]]
- [[concepts/validatingadmissionpolicy]]
- [[concepts/admission-controller]]

## Related Entities
- kubernetes-api-server|Kubernetes API Server]]

## Mentions in Source
- Runs **ValidatingAdmissionWebhook**, **ValidatingAdmissionPolicy**, and built-in validating controllers (e.g., **NamespaceLifecycle**, **ResourceQuota**, **PodSecurity**, **NodeRestriction**). — admission-controllers_7667fc
- **MutatingAdmissionWebhook** & **ValidatingAdmissionWebhook**: call external HTTP services for custom logic. — admission-controllers_7667fc