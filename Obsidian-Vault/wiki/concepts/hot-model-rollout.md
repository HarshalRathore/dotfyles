---
title: Hot Model Rollout
category: concepts
tags: [model-deployment, zero-downtime, hot-reload, model-versioning, ml-ops]
summary: The ability to update model versions across a fleet of GPU workers without restarting them — enabling simultaneous deployment to thousands of GPUs with zero downtime.
sources:
  - "https://www.youtube.com/watch?v=ey4o9m6aswi"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/model-versioning]]"
    type: extends
  - target: "[[concepts/inference-serving]]"
    type: related_to
  - target: "[[concepts/distributed-inference]]"
    type: related_to
---

Hot model rollout is the capability to update model versions across a distributed fleet of GPU workers without restarting the workers themselves. This enables zero-downtime deployment of model changes to thousands of GPUs simultaneously.

## How It Works

Luma's hot rollout system builds on their model versioning pattern:

1. **YAML pointer update**: When a new model version is ready, the `active.yaml` file in the model's object storage folder is updated to point to the new version
2. **Worker detection**: GPU workers continuously monitor the YAML file for changes
3. **In-place switch**: When a change is detected, workers switch to loading the new version's weights and environment without restarting the process
4. **Fleet-wide deployment**: The YAML update is visible to all workers simultaneously, enabling coordinated fleet-wide rollout

## Benefits

- **Zero downtime**: No service interruption during model updates
- **Fleet-wide coordination**: Thousands of GPUs across multiple cloud providers update simultaneously
- **No restart overhead**: Avoids the expensive process of stopping workers, loading new models, and restarting
- **Instant rollback**: Reverting the YAML pointer rolls back all workers instantly

## Predecessor: Parallel SSH

Before hot rollout, Luma managed model deployments by running parallel SSH commands across all GPU machines — a manual, error-prone process that was described as the "early days" of their infrastructure. Hot rollout eliminated this entirely.

## Relationship to Model Versioning

Hot rollout is the deployment mechanism that makes model versioning practical at scale. Without it, version management would require restart cycles or manual intervention for each worker, making the YAML pointer approach infeasible for large fleets.
