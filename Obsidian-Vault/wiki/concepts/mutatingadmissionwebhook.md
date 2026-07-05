---
type: concept
title: "MutatingAdmissionWebhook"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/admission-controllers_7667fc]]"
tags:
  - auth
aliases:
  - Mutating Admission Webhook
  - MAW
---
# MutatingAdmissionWebhook

## Definition
MutatingAdmissionWebhook is a type of admission controller in Kubernetes that calls external HTTP services to modify incoming API requests during the mutating phase. It allows for custom logic to be applied to objects before they are persisted to the cluster's data store.

## Key Characteristics
- Part of the Kubernetes admission control pipeline, executing after authentication and authorization but before object persistence.
- Calls external HTTP endpoints to inspect and mutate API requests.
- Enables dynamic policy enforcement and customization without modifying core API server code.
- Works in conjunction with built-in mutating controllers (e.g., AlwaysPullImages, DefaultStorageClass).
- Configurable via `MutatingWebhookConfiguration` resources.
- Primarily used for sidecar injection, default setting, label addition, and other object modifications.

## Applications
- Injecting sidecar containers (e.g., for logging, monitoring, or service mesh proxies) into Pods.
- Automatically adding labels or annotations to resources for organization and policy enforcement.
- Setting default values or environment variables for workloads.
- Implementing custom security policies that require modification of incoming requests.
- Facilitating dynamic admission control for operational and governance requirements.

## Related Concepts
- [[concepts/validatingadmissionwebhook]]
- [[concepts/validatingadmissionpolicy]]
- [[concepts/admission-controller]]

## Related Entities
- kubernetes-api-server|kubernetes-api-server]]

## Mentions in Source
- Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**). — admission-controllers_7667fc
- **MutatingAdmissionWebhook** & **ValidatingAdmissionWebhook**: call external HTTP services for custom logic. — admission-controllers_7667fc