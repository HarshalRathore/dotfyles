---
type: concept
title: Mutating Phase
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/admission-controllers_7667fc]]'
tags:
- scheduling
aliases:
- Mutating Admission Phase
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Mutating Phase
---
# Mutating Phase

## Definition
The Mutating Phase is the first stage within the Kubernetes admission control pipeline, occurring after authentication and authorization but before validation. During this phase, `MutatingAdmissionWebhooks` and built-in mutating controllers intercept incoming API requests to modify (mutate) the target object or related resources before it is persisted.

## Key Characteristics
- It is the initial step in the admission control process.
- It allows for the modification of API request objects.
- Common mutations include injecting default values, adding labels or annotations, and altering resource specifications.
- It is executed by both dynamic webhooks (`MutatingAdmissionWebhook`) and a set of built-in mutating controllers (e.g., `LimitRanger`, `DefaultStorageClass`).
- Mutations must be idempotent, as the phase can be retried.
- It sets the final state of an object that will be passed to the subsequent Validating Phase.

## Applications
- **Policy Enforcement:** Automatically inject required fields like security contexts, environment variables, or resource limits to ensure compliance with organizational policies.
- **Default Injection:** Apply sensible defaults for fields that are not specified by the user, such as `storageClassName` for PersistentVolumeClaims.
- **Annotation Tagging:** Add metadata annotations to objects for logging, monitoring, or identification by other system components.
- **Resource Transformation:** Modify or enrich resource definitions, such as adding sidecar containers or adjusting tolerations.

## Related Concepts
- Validating Phase|Validating Phase]]
- [[concepts/mutatingadmissionwebhook]]
- [[concepts/admission-controller]]

## Related Entities
No related entities are specified.

## Mentions in Source
- **Mutating Phase** — admission-controllers_7667fc
- Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**). Can modify the incoming object or related resources. — admission-controllers_7667fc