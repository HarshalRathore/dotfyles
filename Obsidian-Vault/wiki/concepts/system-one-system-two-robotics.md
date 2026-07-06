---
title: System One / System Two Robotics
category: concepts
tags:
- system-one
- system-two
- robotics
- dual-system
- planning
- kahneman
- nvidia
- groot
summary: '"A dual-system architecture for robotics inspired by Daniel Kahneman''s Thinking Fast and Slow: System Two is the slow planner that breaks down complex tasks; System One is the fast executor operati...'
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
  type: implemented_by
- target: '[[concepts/physical-ai|Physical AI]]'
  type: enables
- target: '[[concepts/vision-language-action-models|Vision-Language-Action Models]]'
  type: extends
sources: []
---

# System One / System Two Robotics

A **dual-system architecture** for robotics inspired by Daniel Kahneman's *Thinking Fast and Slow*, where a robot's AI intelligence is split into two cooperating systems: a slow, deliberate planner (System Two) and a fast, reactive executor (System One).

## System Two: The Planner

System Two is the "brain" of the robot model. It operates **slowly** and is responsible for: ^[extracted]

- Breaking down complex, high-level tasks into simpler sub-tasks
- Planning the sequence of actions needed to achieve a goal
- Reasoning about the environment and available resources
- Providing instructions to System One

System Two is analogous to Kahneman's System 2: deliberate, analytical, and computationally expensive. It might take seconds or minutes to plan a complex manipulation task.

## System One: The Executor

System One is the "fast" system. It operates at approximately **120 hertz** (120 times per second) and is responsible for: ^[extracted]

- Executing the sub-tasks assigned by System Two
- Processing real-time sensor inputs
- Making millisecond-level control decisions
- Generating continuous action signals (joint angles, forces)

System One is analogous to Kahneman's System 1: fast, automatic, and reactive. It must respond to sensory feedback faster than a human could perceive, making real-time control decisions.

## The Input-Output Pipeline

The GR00T N1 architecture processes three types of input: ^[extracted]

1. **Image observation** — Visual data from robot-mounted cameras
2. **Robot state** — A snapshot of the robot's physical configuration and environment at a given instant
3. **Language prompt** — Natural language instruction (e.g., "pick up the industrial object and place it in the yellow bin")

The output is a **robot action trajectory** — a sequence of control signals that the robot's actuators execute. However, the robot does not see "trajectories" as humans do; it sees **floating-point vectors** that control different joints, generating continuous actions from these vectors. ^[extracted]

## Noise-to-Action Paradigm

The architecture uses a **noise-to-action** learning paradigm: sensors don't capture actions perfectly, introducing noise into the observations. The model must learn to map noisy sensor observations to correct actions. Data passes through state and action encoders to generate tokens for the foundation model. ^[extracted]

## Relationship to Kahneman's Framework

| Kahneman | Robotics | Characteristics |
|----------|----------|----------------|
| System 1 (fast) | System One | ~120 Hz, reactive, automatic |
| System 2 (slow) | System Two | Slow, deliberate, analytical |
| Cognitive bias | Sensor noise | Systematic errors in perception |
| Intuition | Motor execution | Trained automatic responses |

## Significance

This dual-system approach addresses a fundamental challenge in robotics: the tension between **deliberate planning** (needed for complex, novel tasks) and **real-time execution** (needed for safe, responsive physical interaction). A single monolithic model would struggle to excel at both — System Two needs depth of reasoning, while System One needs speed of response. ^[inferred]

## Open Questions

- How does the system handle failures in System Two's planning? (e.g., if the plan is infeasible)
- What happens when System One encounters unexpected situations not covered by System Two's plan?
- Can the boundary between System One and System Two blur for simpler tasks?
- How is the 120 Hz frequency determined — is it optimal for all robot types?

## Related

- [[entities/nvidia-gr00t|NVIDIA Project GR00T]] — Where this architecture was implemented
- [[concepts/physical-ai|Physical AI]] — The application domain
- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — VLA architectures
- [[concepts/humanoid-foundation-model|Humanoid Foundation Model]] — The model type using this architecture
