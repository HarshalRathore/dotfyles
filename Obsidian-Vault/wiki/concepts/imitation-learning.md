---
title: "Imitation Learning in Robotics"
category: concepts
tags:
  - imitation-learning
  - robotics
  - teleoperation
  - demonstration
  - behavioral-cloning
  - foundation-model
summary: "The paradigm where robots learn by watching human demonstrations — teleoperation trajectories serve as the demonstration dataset from which the robot's policy is learned, forming the basis for foundation model training.
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/teleoperation-robotics|Teleoperation in Robotics]]"
    type: uses
  - target: "[[concepts/data-pyramid|Data Pyramid]]"
    type: trained_on
  - target: "[[concepts/noise-to-action-learning|Noise-to-Action Learning]]"
    type: extends
---

# Imitation Learning in Robotics

**Imitation learning** is the paradigm where robots learn to perform tasks by watching human demonstrations — the recorded teleoperation trajectories become the "demonstration dataset" from which the robot's policy is learned.

## The Core Idea

Instead of programming robots with explicit rules or training them through trial-and-error reinforcement learning, imitation learning lets robots learn by example: ^[inferred]

1. A human performs a task (via teleoperation)
2. The trajectory is recorded as training data
3. A model learns to map state observations to actions from this dataset
4. The trained model can then perform the task autonomously

## Role in Foundation Model Training

For [[entities/nvidia-gr00t|GR00T N1]] and other robotics foundation models, imitation learning is the primary training paradigm: ^[inferred]

- **Teleoperation data** provides the demonstrations
- **Synthetic simulation data** provides augmented demonstrations
- **Internet video data** provides weak supervision for visual understanding
- The foundation model learns a **general policy** from all these sources

## Relationship to Other Learning Paradigms

| Paradigm | How It Learns | Data Need | Safety |
|----------|--------------|-----------|--------|
| Imitation Learning | From demonstrations | Moderate | High (human-guided) |
| Reinforcement Learning | From rewards | Very high | Lower (trial-and-error) |
| Model-Based Learning | From world model | Variable | Variable |
| Foundation Model (IL) | From massive demonstrations | Massive | High |

## Open Questions

- How many demonstrations are needed for a foundation model to learn a task well?
- Can imitation learning handle tasks the demonstrator didn't explicitly demonstrate?
- How does the model generalize to novel environments not seen in demonstrations?
- Can robots learn from each other (robot-to-robot imitation)?

## Related

- [[concepts/teleoperation-robotics|Teleoperation in Robotics]] — How demonstrations are collected
- [[concepts/data-pyramid|Data Pyramid]] — Where demonstration data sits
- [[concepts/noise-to-action-learning|Noise-to-Action Learning]] — How demonstrations are learned from
- [[concepts/dreamgen|DreamGen]] — Multiplying demonstration data
