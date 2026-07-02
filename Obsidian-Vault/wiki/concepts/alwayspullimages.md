---
type: concept
title: "AlwaysPullImages"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "admission-controllers_7667fc"
tags:
  - security
aliases:
  - Always Pull Images Policy
---
# AlwaysPullImages

## Definition
AlwaysPullImages is a built-in mutating admission controller in Kubernetes that enforces the latest container image to be pulled from the registry before starting a container, even if the image is already present on the node. It modifies incoming Pod specifications to set the image pull policy to `Always`, ensuring that pods always run with the most current version of their specified container images.

## Key Characteristics
- It is a **MutatingAdmissionWebhook** or built-in controller that runs during the mutating phase of Kubernetes admission control.
- Modifies the `spec.containers[].imagePullPolicy` field in Pod specifications to `Always`.
- Ensures **image freshness** by preventing the use of stale, locally cached images.
- Enhances **security** by guaranteeing that the image being run matches the exact, latest image referenced in the registry, mitigating risks from tampered or outdated local images.
- It is **disabled by default** in Kubernetes clusters and must be explicitly enabled.
- Operates on all Pods admitted by the cluster where it is enabled.


## Applications
- **Security-sensitive environments**: Essential for environments where image integrity and freshness are critical, such as financial services, healthcare, or government systems.
- **Compliance-driven systems**: Helps meet regulatory standards that mandate the use of the latest, verified software versions.
- **Development and staging environments**: Useful for ensuring developers and testers always work with the latest image builds, avoiding confusion from stale cached versions.
- **Critical production workloads**: Provides an additional layer of assurance that production systems are running the intended, most current container images.


## Related Concepts
- [[concepts/mutating-phase]]
- [[concepts/admission-controller]]

## Related Entities
No related entities.


## Mentions in Source
- "Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**)." — admission-controllers_7667fc
- "Can modify the incoming object or related resources." — admission-controllers_7667fc