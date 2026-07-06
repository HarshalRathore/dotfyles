---
title: Robot State and Action
category: concepts
tags:
- robot-state
- robot-action
- robotics
- state-space
- control-theory
- nvidia
- groot
summary: '"The fundamental state-action framework in robotics: robot state is a snapshot of the robot and environment at an instant; action is what the robot decides to do next based on that state.'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/nvidia-gr00t|NVIDIA Project GR00T]]'
  type: used_by
- target: '[[concepts/noise-to-action-learning|Noise-to-Action Learning]]'
  type: relates_to
- target: '[[concepts/robotics-control-loop|Robotics Control Loop]]'
  type: relates_to
sources: []
---

# Robot State and Action

In robotics, **state** and **action** are the fundamental building blocks of robot intelligence. The **robot state** is a snapshot of the robot and its environment at a given instant; the **action** is what the robot decides to do next based on that state.

## Robot State

A robot state captures everything relevant about the robot and its environment at a single point in time: ^[extracted]

- **Physique** — The robot's physical configuration (joint angles, limb positions, base pose)
- **Environment** — The current state of the surrounding world (object positions, surfaces, obstacles)
- **Sensors** — Current sensor readings (camera images, LiDAR point clouds, IMU data, joint encoders)

The state is the robot's "understanding" of where it is and what's around it at this instant.

## Robot Action

An action is the robot's decision about what to do next, given its current state: ^[extracted]

- **Joint vectors** — Floating-point values controlling different joints (the robot's native action space)
- **Trajectories** — Sequences of actions over time (the human-perceivable representation)
- **Continuous signals** — The actual control signals sent to actuators

The key insight from [[entities/nvidia-gr00t|GR00T N1]] is that what humans perceive as a "motion trajectory" (e.g., "pick up and place") is, from the robot's perspective, a sequence of floating-point joint vectors. ^[extracted]

## The State-Action Loop

Robot intelligence operates as a continuous loop: ^[inferred]

```
State → Action → New State → Action → ...
```

At each timestep:
1. The robot observes its state (sensors)
2. The model predicts the next action
3. The action is executed by actuators
4. The environment changes, producing a new state
5. Repeat

This is the same state-action loop that underlies reinforcement learning, imitation learning, and model-based control — but foundation models like GR00T N1 learn to perform this loop end-to-end from data rather than hand-designed algorithms.

## Relationship to Foundation Models

In a foundation model context, the state-action loop is learned rather than programmed: ^[inferred]

- **Traditional robotics** — State estimation and action planning are separate, hand-designed modules
- **Foundation model robotics** — A single model learns the mapping from state observations to actions from data

This is what makes foundation models powerful: they can learn complex state-action mappings that would be extremely difficult to hand-code.

## Related

- [[entities/nvidia-gr00t|NVIDIA Project GR00T]] — Where this framework is implemented
- [[concepts/noise-to-action-learning|Noise-to-Action Learning]] — Learning from noisy state observations
- [[concepts/robotics-control-loop|Robotics Control Loop]] — The broader control architecture
- [[concepts/imitation-learning|Imitation Learning]] — Learning state-action mappings from demonstrations
