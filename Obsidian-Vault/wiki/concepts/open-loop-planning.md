---
title: "Open-Loop Planning"
category: concepts
tags:
  - open-loop
  - planning
  - autonomous-driving
  - benchmarking
  - evaluation
aliases:
  - open-loop planning benchmarks
sources:
  - "AIEF2025 - Waymo's EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM"
summary: "An autonomous driving evaluation methodology where the model predicts future trajectories without interacting with the environment — used in benchmarks like NewSync to compare planning algorithms."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/new-sync-benchmark]]"
    type: related_to
  - target: "[[concepts/end-to-end-driving]]"
    type: related_to
---

# Open-Loop Planning

Open-loop planning is an evaluation methodology for autonomous driving systems where the model predicts future trajectories without interacting with the environment.

## How It Works

In open-loop planning:

1. **Input:** The model receives the current state (camera video, sensor data, routing instructions)
2. **Output:** The model predicts future waypoints (where the car should be over the next few seconds)
3. **Evaluation:** Predicted waypoints are compared against the actual trajectory from the driving log

The "open-loop" aspect means the model does not receive feedback from the environment during prediction — it cannot correct its mistakes in real-time.

## NewSync Benchmark

NewSync is one of the most popular open-loop planning benchmarks. It provides:

- Curated driving scenarios with ground truth trajectories
- Standardized evaluation metrics
- A common comparison platform for planning algorithms

Waymo's EMMA achieved state-of-the-art on NewSync with its simple end-to-end formulation. See [[concepts/new-sync-benchmark]].

## Advantages

1. **Standardized evaluation** — enables fair comparison across different planning approaches
2. **No real-world risk** — models can be evaluated without deploying to real cars
3. **Reproducible** — same scenarios and metrics for all participants
4. **Scalable** — can evaluate many scenarios quickly

## Limitations

1. **Does not capture closed-loop effects** — a model that makes a wrong prediction in open-loop might cause different outcomes in closed-loop driving
2. **Static evaluation** — does not test the model's ability to recover from errors
3. **Limited scenario coverage** — benchmarks cover a subset of real-world scenarios

## Related

- [[concepts/new-sync-benchmark]] — NewSync benchmark
- [[concepts/end-to-end-driving]] — EMMA achieved SOTA on NewSync
- [[concepts/autonomous-driving]] — Autonomous driving overview
