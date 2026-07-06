---
type: concept
title: Manual Scaling
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/kubernetes-autoscaling_59fbf3]]'
tags:
- scaling
aliases:
- Manual H/V Scale
- Manual Replica Scaling
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Manual Scaling
---
# Manual Scaling

## Definition
Manual scaling is the direct, user-initiated process of changing scaling parameters in a Kubernetes cluster. It involves explicitly adjusting either the number of pod replicas (horizontal scaling) or the resource requests and limits assigned to pods (vertical scaling) through command-line tools like `kubectl`. This approach contrasts with automated scaling mechanisms such as the Horizontal Pod Autoscaler (HPA) and Vertical Pod Autoscaler (VPA), which adjust resources based on observed metrics and defined policies.

## Key Characteristics
- **User-Initiated**: Scaling actions are triggered explicitly by a human operator rather than by automated controllers.
- **Two Primary Forms**:
  - **Manual Horizontal Scaling**: Changing the replica count of a Deployment, ReplicaSet, or StatefulSet using `kubectl scale` or by editing the manifest directly.
  - **Manual Vertical Scaling**: Modifying resource requests and limits in a pod or deployment spec using `kubectl edit`, which forces pod recreation to apply the new resource configuration.
- **Immediate but Non-Persistent**: Manual changes apply immediately but do not inherently react to future load changes, unlike autoscalers.
- **Direct Control**: Provides granular, step-by-step control over scaling decisions, useful for testing, debugging, or specific operational scenarios.
- **Pod Recreation for Vertical Changes**: Vertical scaling changes (resource requests/limits) require the pod to be terminated and recreated, unlike horizontal scaling which simply adds or removes replicas.

## Applications
- **Development and Testing**: Quickly adjusting replica counts to simulate different load conditions or to allocate specific resources during development cycles.
- **Scheduled Maintenance**: Manually scaling down replicas before maintenance windows and scaling back up afterward.
- **Traffic Spike Preparation**: Pre-emptively scaling out before a known high-traffic event (e.g., product launch, marketing campaign).
- **Debugging Resource Issues**: Manually bumping resource limits to isolate whether performance problems stem from resource constraints.
- **Cost Management**: Scaling down non-essential workloads during off-peak hours to reduce infrastructure costs when autoscaling is not configured.
- **Small or Stable Workloads**: Environments where workloads are predictable and the overhead of autoscaling configuration is unnecessary.

## Related Concepts
- [[concepts/scaling]]
- [[concepts/automated-scaling]]
- [[concepts/horizontal-scaling]]
- [[concepts/vertical-scaling]]

## Related Entities
- [[entities/kubectl]]

## Mentions in Source
- Manual H-Scale (pods): `kubectl scale` or edit replica count. — kubernetes-autoscaling_59fbf3
- Manual V-Scale (resources): `kubectl edit` to bump requests/limits → pod recreated. — kubernetes-autoscaling_59fbf3