---
type: entity
title: "Metrics Server"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-autoscaling_59fbf3]]"
tags:
  - product
aliases:
  - Metrics Server for Kubernetes
---
# Metrics Server

## Basic Information
- Type: product
- Source: kubernetes-autoscaling_59fbf3

## Description
Metrics Server is a cluster component that collects resource usage data from nodes and pods in a Kubernetes cluster. It provides the metrics (CPU and memory) necessary for autoscaling mechanisms like Horizontal Pod Autoscaler and Vertical Pod Autoscaler to make scaling decisions. Metrics Server is a required dependency for both HPA and VPA to function correctly. As a core part of the Kubernetes monitoring stack, it is typically deployed as a Kubernetes resource itself within the cluster. The component aggregates resource consumption data and exposes it through the Kubernetes Metrics API for internal use by other cluster components.

## Related Entities
- [[entities/kubeadm]] — Cluster bootstrapping tool that may be used to set up clusters where Metrics Server is deployed

## Related Concepts
- [[concepts/horizontalpodautoscaler]] — Depends on Metrics Server for CPU/memory metrics to automatically scale pod replicas
- [[concepts/vertical-pod-autoscaler]] — Requires Metrics Server to collect resource usage data for vertical scaling decisions

## Mentions in Source
- "Monitors CPU/memory (via Metrics Server) or custom metrics." — [[concepts/horizontalpodautoscaler]]
- "Requires Metrics Server." — [[concepts/horizontalpodautoscaler]]
- "Depends on Metrics Server." — [[concepts/horizontalpodautoscaler]]