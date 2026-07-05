---
title: "Self-Supervised Driving"
category: concepts
tags:
  - self-supervised
  - autonomous-driving
  - training
  - end-to-end
  - scaling
aliases:
  - self-supervised autonomous driving
sources:
  - "AIEF2025 - Waymo's EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM"
summary: "A training methodology for autonomous driving where the model learns from driving logs without manual labeling — the car's actual future trajectory provides the ground truth signal."
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/end-to-end-driving]]"
    type: enables
  - target: "[[concepts/scaling-laws]]"
    type: related_to
  - target: "[[concepts/autonomous-driving]]"
    type: related_to
---

# Self-Supervised Driving

Self-supervised learning in autonomous driving is a training methodology where the model learns from driving logs without manual labeling. The car's actual future trajectory provides the ground truth signal.

## How It Works

In a self-supervised driving formulation:

1. **Input:** Camera video + routing instructions at time t
2. **Ground truth:** The car's actual future waypoints at time t+1, t+2, ..., t+n (from the driving log)
3. **Training:** The model is trained to predict these future waypoints

Because every driving log contains both the input (what the car saw) and the output (where the car actually went), no manual labeling is needed.

## Advantages

1. **Scalability** — any driving log is training data. No expensive annotation pipeline.
2. **Continuous learning** — new driving logs automatically become training data.
3. **No human bias** — the model learns from actual human driving behavior, not from labeled annotations.
4. **Self-supervised signal** — the car's own trajectory is the supervision signal.

## Comparison to Supervised Learning

Traditional supervised approaches require:

- Manual labeling of driving scenarios
- Expert annotation of trajectories
- Curated datasets (e.g., NewSync with ~1k clips)

Self-supervised approaches use:

- Raw driving logs (no labeling)
- The car's own behavior as ground truth
- Datasets orders of magnitude larger (Waymo's 100k clips)

## Limitations

- **Copies human errors** — the model learns from whatever the human driver did, including mistakes
- **No expert knowledge** — cannot learn from driving that is better than human
- **Limited to logged scenarios** — only learns from what has been driven

## Related

- [[concepts/end-to-end-driving]] — EMMA uses self-supervised training
- [[concepts/scaling-laws]] — Scaling benefits from larger self-supervised datasets
- [[entities/waymo]] — Waymo's EMMA is self-supervised
