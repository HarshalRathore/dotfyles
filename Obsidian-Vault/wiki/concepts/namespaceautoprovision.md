---
type: concept
title: "NamespaceAutoProvision"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "admission-controllers_7667fc"
tags:
  - deployment
aliases:
  - Namespace Auto Provisioning
  - NSAutoProvision
---
# NamespaceAutoProvision

## Definition
NamespaceAutoProvision is a mutating admission controller within Kubernetes that automatically creates a namespace if it does not exist when a resource creation request targeting that namespace is made. It operates during the mutating phase of the admission control pipeline, allowing subsequent controllers and the API server to process the request as if the namespace had been pre-created. The controller is disabled by default for security reasons.

## Key Characteristics
- Operates as a **mutating** admission controller, intercepting requests during the mutating phase.
- **Disabled by default** due to security considerations, requiring explicit enablement.
- **On-demand namespace creation:** Automatically creates missing namespaces as a side effect of processing resource creation requests.
- **Simplifies resource deployment** by removing the prerequisite step of manually creating namespaces first.
- **Primarily suited for development, testing, or ephemeral environments** where strict control over namespace creation is less critical.
- **Poses potential security risks** in production environments by allowing arbitrary namespace creation, which could bypass organizational policies or lead to uncontrolled resource sprawl.

## Applications
- **Development and CI/CD Pipelines:** Streamlines automated deployment scripts and development workflows by eliminating the need for separate namespace setup steps.
- **Rapid Prototyping:** Allows developers to quickly spin up isolated environments by simply creating resources in new namespaces without prior configuration.
- **Dynamic Environments:** Useful in scenarios where namespaces are frequently created and destroyed, such as in testing frameworks or lab environments.
- **Simplifying User Operations:** Can reduce operational overhead for teams unfamiliar with Kubernetes by making namespace creation implicit.

## Related Concepts
- Mutating Phase|Mutating Phase]]
- Admission Controller|Admission Controller]]
- [[concepts/namespaceexists]]

## Related Entities
- [[entities/kubernetes-v1-24]]

## Mentions in Source
- "**NamespaceAutoProvision** (mutating, disabled by default): auto-creates missing namespaces before continuing." — admission-controllers_7667fc
- "**NamespaceExists** (validating): rejects requests to non-existent namespaces." — admission-controllers_7667fc