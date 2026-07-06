---
summary: This source provides a concise guide to managing application deployments in Deployment using Kubernetes. It explains that creating a Deployment triggers an initial rollout (Revision 1), with subseq...
type: source
title: Deployment Rollouts, Updates & Rollbacks – Easy Recall Notes - Summary
created: '2026-06-30'
updated: '2026-06-30'
lifecycle: draft
base_confidence: 0.7
source_file: ''
tags:
- rolling-update-strategy
- recreate-strategy
- replicasets
- rollout
- deployment-strategies
- replica-set-creation
- Deployment Strategies
- Revision History
- rollback
- Deployment
- kubectl rollout status
- kubectl rollout history
- kubectl set image
- Deployment Rollout Status
- kubectl rollout undo
aliases:
- 'K8s Deployment Management: Updates'
- Rollouts & Rollbacks
- Kubernetes Deployment Rollout Reference
contentHash: c0a-4fbce6e8
generation_complete: true
category: sources
sources: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
# Deployment Rollouts, Updates & Rollbacks – Easy Recall Notes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source provides a concise guide to managing application deployments in [[concepts/deployment]] using [[entities/kubernetes]]. It explains that creating a Deployment triggers an initial [[concepts/rollout]] (Revision 1), with subsequent updates creating new revisions. The document details two primary [[concepts/deployment-strategies]]: the default [[concepts/rolling-update-strategy]] for zero-downtime upgrades, and the [[concepts/recreate-strategy]], which causes temporary downtime. Updates are performed via YAML file changes or CLI commands like [[concepts/kubectl-set-image]]. Under the hood, Kubernetes manages this by creating a new [[concepts/replica-set-creation]] during updates, gradually replacing Pods. It also covers monitoring with [[concepts/kubectl-rollout-status]] and [[concepts/kubectl-rollout-history]], and performing rollbacks to a previous version using .

## Key Entities
- [[entities/kubectl]]
- [[entities/kubernetes]]
- [[entities/pods]]

## Key Concepts
- [[concepts/rolling-update-strategy]]
- [[concepts/recreate-strategy]]
- [[concepts/replicasets]]
- [[concepts/rollout]]
- [[concepts/deployment-strategies]]
- [[concepts/replica-set-creation]]
- [[concepts/revision-history]]
- [[concepts/rollback]]
- [[concepts/deployment]]

## Main Points
- **Revision Tracking:** Every Deployment update triggers a new rollout, creating an incrementally numbered revision (Revision 1, 2, etc.) that can be monitored and rolled back to.
- **Deployment Strategies:** The default **Rolling Update Strategy** ensures zero downtime by replacing Pods one at a time. The **Recreate Strategy** deletes all old Pods first, causing temporary downtime.
- **Update Mechanics:** Updates create a new [[concepts/replica-set-creation]], which gradually spins up new [[entities/pods]] while terminating old ones.
- **Monitoring and Rollback:** Use [[concepts/kubectl-rollout-status]] and [[concepts/kubectl-rollout-history]] to track deployments. Rollbacks are performed with , which restores the previous ReplicaSet.
- **Configuration Mismatch Warning:** Using the [[concepts/kubectl-set-image]] CLI command updates the cluster directly but will not change the source YAML file, potentially causing a configuration drift.