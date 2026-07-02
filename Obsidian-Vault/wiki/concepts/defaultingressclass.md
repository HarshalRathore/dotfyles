---
type: concept
title: "DefaultIngressClass"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "admission-controllers_7667fc"
tags:
  - deployment
aliases:
  - Ingress Class Default Assignment
---
# DefaultIngressClass

## Definition
DefaultIngressClass is a built-in mutating admission controller within Kubernetes that automatically assigns a default `IngressClass` to an `Ingress` resource when none is explicitly specified. It modifies incoming `Ingress` objects during the admission process to ensure they are associated with a valid ingress controller.

## Key Characteristics
- **Built-in Mutating Controller:** It is a native part of the Kubernetes API server, running during the admission control phase.
- **Automatic Assignment:** Provides a default `IngressClass` to any `Ingress` resource lacking an explicit `ingressClassName` field.
- **Annotation-Based:** Works by adding or modifying the `kubernetes.io/ingress.class` annotation on the `Ingress` object.
- **Simplifies Management:** Eliminates the need to specify a class for every `Ingress` in clusters with a single, preferred ingress controller.
- **Relies on IngressClass Resource:** Its behavior is governed by the `IngressClass` resource, specifically by the annotation `ingressclass.kubernetes.io/is-default-class`.

## Applications
- **Cluster Simplification:** Used in clusters with a single, primary ingress controller to provide a seamless default for all `Ingress` resources.
- **Reduced Configuration Overhead:** Developers and operators don't need to remember or specify the correct class name for each `Ingress` manifest, reducing boilerplate and potential configuration errors.
- **Graceful Migration:** Facilitates migration to a new ingress controller by setting the new controller's `IngressClass` as the default, ensuring new traffic routes correctly without modifying existing manifests immediately.

## Related Concepts
- Admission Controller|Admission Controller]]
- Mutating Phase|Mutating Phase]]

## Related Entities
(None specified)

## Mentions in Source
- Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**). — admission-controllers_7667fc
- Can modify the incoming object or related resources. — admission-controllers_7667fc