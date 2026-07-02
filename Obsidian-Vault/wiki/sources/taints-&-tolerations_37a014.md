---
summary: "This source details the mechanisms of **Taints** and **Tolerations** within the Taints and Tolerations scheduling system of Kubernetes. Taints are applied to nodes to create a repulsion effect, pre..."
type: source
title: "Taints and Tolerations in Kubernetes - Summary"
created: "2026-06-30"
updated: "2026-06-30"
lifecycle: draft
base_confidence: 0.7
source_file: ""
tags:
  - Taints
  - Tolerations
aliases:
  - Kubernetes Taints and Tolerations
contentHash: "14fd-7c15b573"
generation_complete: True
---
# Taints and Tolerations in Kubernetes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source details the mechanisms of **Taints** and **Tolerations** within the [[concepts/taints]] and [[concepts/tolerations]] scheduling system of [[entities/kubernetes]]. Taints are applied to nodes to create a repulsion effect, preventing pods without matching tolerations from being scheduled onto them. The system works through specific attributes: a taint's key, value, and effect (NoSchedule, PreferNoSchedule, or NoExecute), which are matched against a pod's toleration specification. This pairing does not guarantee placement but provides strong control over pod-node affinity. A primary use case is dedicating nodes to specialized hardware (like GPUs) or isolating nodes for maintenance. The source emphasizes that control-plane nodes are automatically tainted by default and that the NoExecute effect can evict running pods, underscoring the need for careful configuration, often combined with [[concepts/node-affinity]] for precise scheduling control.

## Key Entities
- [[entities/kubernetes]]

## Key Concepts
- [[concepts/taints]]
- [[concepts/tolerations]]

## Main Points
- Taints and tolerations control pod scheduling, allowing nodes to repel pods that lack matching tolerations.
- Taints consist of a key, optional value, and one of three effects: NoSchedule, PreferNoSchedule, or NoExecute.
- The NoExecute effect can evict existing pods that do not tolerate a newly applied taint.
- Auto-tainting on control-plane nodes ensures user pods are scheduled only on appropriate worker nodes by default.
- Best practices include keeping taint keys simple and combining this mechanism with node affinity for advanced scheduling logic.