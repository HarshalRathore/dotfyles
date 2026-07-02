---
summary: "This source provides a concise overview of Kubernetes autoscaling fundamentals, covering the distinction between [[concepts/vertical-scaling]] and "
tags:
  - Horizontal Scaling
  - Vertical Scaling
  - Horizontal Pod Autoscaler
  - Vertical Pod Autoscaler
  - "In-Place Pod Vertical Scaling"
  - Scaling
  - Cluster Autoscaler
  - Workload Scaling
  - Cluster Scaling
  - Manual Scaling
  - Automated Scaling
  - Resource Requests
  - Resource Limits
  - Stateful Workloads
  - Stateless Services
  - Recommender
  - Updater
  - Admission Controller
  - updatePolicy.mode
aliases:
  - K8s Autoscaling Notes
  - Kubernetes Scaling Quick Reference
contentHash: "c0b-58aa9aa6"
generation_complete: True
---
# Kubernetes Autoscaling: Quick-Recall Notes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source provides a concise overview of Kubernetes autoscaling fundamentals, covering the distinction between [[concepts/vertical-scaling]] and [[concepts/horizontal-scaling]], [[concepts/workload-scaling]] versus [[concepts/cluster-scaling]], and [[concepts/manual-scaling]] versus [[concepts/automated-scaling]]. It details the built-in [[concepts/horizontal-pod-autoscaler]] for adding/removing pods based on metrics from the [[entities/metrics-server]], and the add-on [[concepts/vertical-pod-autoscaler]] for adjusting pod [[concepts/resource-requests]] and [[concepts/resource-limits]]. The document explains the alpha feature [[concepts/in-place-pod-vertical-scaling]] and concludes with a decision guide recommending HPA for stateless services and VPA for stateful workloads.

## Key Entities
- **[[entities/metrics-server]]**: Cluster component providing CPU and memory metrics to autoscalers.
- **[[entities/kubectl]]**: Command-line tool used for manual scaling operations.

## Key Concepts
- **Core Scaling Types**: [[concepts/horizontal-scaling]], [[concepts/vertical-scaling]], [[concepts/workload-scaling]], [[concepts/cluster-scaling]].
- **Autoscalers**: [[concepts/horizontal-pod-autoscaler]], [[concepts/vertical-pod-autoscaler]], [[concepts/cluster-autoscaler]].
- **Scaling Methods**: [[concepts/manual-scaling]], [[concepts/automated-scaling]].
- **VPA Components**: [[concepts/recommender]], [[concepts/updater]], [[concepts/admission-controller]], `updatePolicy.mode`.
- **Workload Types**: [[concepts/stateless-services]], [[concepts/stateful-workloads]].
- **Emerging Feature**: [[concepts/in-place-pod-vertical-scaling]].

## Main Points
- Kubernetes scaling has two primary dimensions: adjusting resources per pod ([[concepts/vertical-scaling]]) versus adjusting the pod instance count ([[concepts/horizontal-scaling]]).
- Scaling can be applied at the workload level (pods) or the infrastructure ([[concepts/cluster-scaling]]).
- The [[concepts/horizontal-pod-autoscaler]] is the built-in solution for automating horizontal scaling based on metrics.
- The [[concepts/vertical-pod-autoscaler]] is an add-on for automating vertical scaling by right-sizing pod resource allocations.
- [[concepts/in-place-pod-vertical-scaling]] is an alpha feature aiming to enable resource updates without pod restarts.
- A decision guide recommends [[concepts/horizontal-pod-autoscaler]] for stateless services needing rapid scaling and [[concepts/vertical-pod-autoscaler]] for stateful workloads requiring resource tuning.