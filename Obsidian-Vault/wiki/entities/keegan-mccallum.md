---
title: Keegan McCallum
category: entities
tags: [person, infrastructure, ml-engineering, gpu-scaling, model-serving, luma-ai]
summary: ML engineer at Luma AI who presented on scaling Dream Machine to 1M users in 4 days at AI Engineer World's Fair 2025.
sources:
  - "https://www.youtube.com/watch?v=ey4o9m6aswi"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.92
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/luma-ai]]"
    type: related_to
  - target: "[[entities/sorish]]"
    type: related_to
  - target: "[[entities/vasu]]"
    type: related_to
---

Keegan McCallum is an ML engineer at Luma AI who presented "Dream Machine: Scaling to 1M users in 4 days" at the AI Engineer World's Fair 2025. He led the infrastructure redesign that enabled Luma to handle a 10x traffic spike on Dream Machine's launch day, scaling from 500 to approximately 9,000 H100 GPUs in a matter of hours.

Keegan described the launch-day chaos in detail: starting with a planned allocation of 500 H100 GPUs, the team manually SSH'd into every available GPU from every provider to spin up workers, reaching ~5,000 GPUs within 6 hours. When Luma's CEO tweeted about scaling, traffic surged again, forcing them to repurpose their entire training cluster (another ~4,000 H100 GPUs) — which still barely made a dent in the queue.

He presented Luma's post-launch serving architecture: a decoupled CPU/GPU system built on vanilla PyTorch with Redis-backed distributed queues, SLURM-based scheduling, SeaweedFS for distributed storage, and Tailscale for cross-provider connectivity. He detailed their SLA-based fair scheduling system designed to prevent work starvation across user tiers.

Keegan also discussed Luma's model versioning system (immutable model repos in object storage with YAML active-version pointers), automated hot-rollout of model changes across thousands of GPUs, and their "Excel team" of 10 engineers optimizing low-level PyTorch operations.

He noted that Luma is actively hiring for infrastructure, research, and general AI roles.
