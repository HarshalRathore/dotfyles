---
title: "NewSync Benchmark"
category: concepts
tags:
  - benchmark
  - autonomous-driving
  - open-loop
  - planning
  - evaluation
aliases:
  - Newsyn
sources:
  - "AIEF2025 - Waymo's EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM"
summary: "One of the most popular open-loop planning benchmarks for autonomous driving, where Waymo's EMMA achieved state-of-the-art results with a simple end-to-end formulation."
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
  - target: "[[concepts/open-loop-planning]]"
    type: related_to
  - target: "[[concepts/end-to-end-driving]]"
    type: related_to
  - target: "[[entities/waymo]]"
    type: related_to
---

# NewSync Benchmark

NewSync is one of the most popular open-loop planning benchmarks for autonomous driving. It provides a standardized platform for evaluating and comparing planning algorithms.

## What It Measures

NewSync evaluates a planning model's ability to predict the vehicle's future trajectory given the current state:

- **Input:** Camera/sensor data + routing instructions at time t
- **Output:** Predicted future waypoints at times t+1, t+2, ..., t+n
- **Ground truth:** Actual trajectory from driving logs

## Performance

Waymo's EMMA achieved state-of-the-art results on NewSync with a simple end-to-end formulation:

- Outperformed all other models at the time
- Beat customized small models, large models, and specialized systems
- Achieved this with a single model taking camera video + routing text as input

## Dataset Size

NewSync contains approximately 1,000 driving scenarios. This is relatively small compared to Waymo's production datasets:

- Waymo's Remote Open Motion dataset: ~100,000 clips (100× larger than NewSync)
- Academic datasets are typically smaller than NewSync

## Limitations

- **Small dataset** — only ~1k scenarios limits generalization evaluation
- **Open-loop only** — does not test closed-loop driving performance
- **Academic focus** — curated scenarios may not represent real-world complexity

## Related

- [[concepts/open-loop-planning]] — Open-loop planning methodology
- [[concepts/end-to-end-driving]] — EMMA's SOTA on NewSync
- [[entities/waymo]] — Waymo's EMMA
- [[concepts/scaling-laws]] — Larger datasets (100k vs 1k) show continued improvement
