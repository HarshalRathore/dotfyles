---
title: Model Versioning and Model Repo Pattern
category: concepts
tags: [model-versioning, model-repo, immutable-versions, model-deployment, ml-ops]
summary: A model management pattern where each model has an immutable versioned repository in object storage with YAML-based active-version pointers, enabling reproducible deployments and hot-rollout updates.
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
  - target: "[[concepts/hot-model-rollout]]"
    type: extends
  - target: "[[concepts/inference-serving]]"
    type: related_to
  - target: "[[concepts/model-distillation]]"
    type: related_to
---

Model versioning is the practice of managing multiple versions of ML models in a structured, reproducible way. Luma's implementation — inspired by Triton Inference Server's model repo concept — uses immutable versioned folders in object storage with YAML-based active-version pointers.

## Model Repo Structure

Each model has a folder structure in object storage (e.g., S3, SeaweedFS):

```
models/
  dream-machine/
    v1.0/
      model.pt
      requirements.txt
      config.yaml
    v1.1/
      model.pt
      requirements.txt
      config.yaml
    active.yaml          # Points to current active version
```

### Key Design Decisions

1. **Immutable versions**: Each version (v1.0, v1.1, etc.) is immutable — the full Python environment, dependencies, checkpoints, and configuration are stored together. This ensures reproducibility.

2. **YAML active pointer**: A simple YAML file at the model root defines which version is currently active. This is the only mutable element.

3. **Full environment capture**: Each version stores the complete Python environment (all dependencies needed to run the model), not just the model weights. This eliminates "works on my machine" problems.

## Benefits

- **Reproducible deployments**: Any version can be reloaded exactly as it was, with the same dependencies and checkpoints
- **Instant rollback**: If a new version causes issues, switching the YAML pointer back to the previous version restores the old behavior
- **Isolated environments**: Different model versions can run with different Python environments and dependencies without conflict
- **Simple mental model**: The YAML pointer is easier to reason about than complex deployment manifests

## Hot Rollout

The model versioning system enables [[concepts/hot-model-rollout]]: when the active.yaml file is updated, workers automatically switch to the new version without restarting. This allows rolling out model changes to thousands of GPUs across multiple cloud providers simultaneously, without downtime.

## Tradeoffs

- **Storage cost**: Storing full environments for every version consumes significant object storage
- **Version explosion**: Without governance, the number of versions can grow unbounded
- **Coordination**: Hot-rollout requires workers to detect YAML changes and switch versions cleanly
