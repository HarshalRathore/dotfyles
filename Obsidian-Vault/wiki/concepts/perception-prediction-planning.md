---
title: Perception-Prediction-Planning
category: concepts
tags:
- perception
- prediction
- planning
- autonomous-driving
- modular-pipeline
aliases:
- perception prediction planning
- PPP pipeline
sources:
- 'AIEF2025 - Waymo''s EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM'
summary: 'The traditional modular architecture for autonomous driving systems, consisting of three sequential stages: perception (understand the world), prediction (forecast future states), and planning (det...'
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/end-to-end-driving]]'
  type: replaced_by
- target: '[[concepts/foundation-models-autonomous-driving]]'
  type: related_to
---

# Perception-Prediction-Planning

The Perception-Prediction-Planning (PPP) pipeline is the traditional modular architecture for autonomous driving systems. It decomposes the driving problem into three sequential stages.

## Three Stages

### 1. Perception

The system understands the world by detecting and classifying:

- Other vehicles
- Pedestrians
- Cyclists
- Traffic lights
- Crossroads and road geometry

Waymo's production system uses LiDAR, radar, cameras, and an oracle perception system for high-accuracy perception.

### 2. Prediction

Given the current world state from perception, the system predicts future states:

- Where other agents will be in the next few seconds
- How traffic lights will change
- What pedestrians will do

### 3. Planning

Based on perception and prediction, the system determines driving actions:

- Turn direction (left, right, straight)
- Acceleration profiles
- Steering angles
- Speed adjustments

## Characteristics

- **HD map priors** — relies on high-definition maps for road geometry, lane markings, traffic light locations
- **Multi-sensor fusion** — uses LiDAR, radar, and cameras
- **Specialized models** — each stage uses models specialized for its subtask
- **Explainable** — each stage's output is interpretable

## Limitations

- **Complexity** — requires building, maintaining, and integrating three sophisticated systems
- **Error propagation** — errors in perception compound through prediction to planning
- **Not self-supervised** — requires manual labeling for training
- **Map-dependent** — limited to areas with HD map coverage

## Foundation Model Alternative

End-to-end systems like Waymo's EMMA replace the PPP pipeline with a single foundation model that takes camera video and routing text as input and outputs waypoints directly. See [[concepts/end-to-end-driving]].

## Related

- [[concepts/end-to-end-driving]] — The alternative paradigm
- [[entities/waymo]] — Waymo's production system uses PPP
- [[concepts/foundation-models-autonomous-driving]] — Foundation models as an alternative
- [[concepts/camera-only-driving]] — Camera-only vs multi-sensor
