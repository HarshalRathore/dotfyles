---
title: "Humanoid Foundation Model"
category: concepts
tags:
  - humanoid
  - foundation-model
  - robotics
  - physical-ai
  - cross-embodiment
  - nvidia
  - groot
summary: "A foundation model designed specifically for humanoid robots — a general-purpose AI that can be fine-tuned across different robot embodiments to perform diverse physical tasks in human-built environments.
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/physical-ai|Physical AI]]"
    type: implements
  - target: "[[entities/nvidia-gr00t|NVIDIA Project GR00T]]"
    type: implemented_by
  - target: "[[concepts/cross-embodiment-robotics|Cross-Embodiment Robotics]]"
    type: requires
  - target: "[[concepts/data-pyramid|Data Pyramid]]"
    type: trained_on
---

# Humanoid Foundation Model

A **humanoid foundation model** is a large-scale AI model designed to serve as a general-purpose intelligence for humanoid robots — capable of being fine-tuned across different robot embodiments to perform diverse physical tasks in human-built environments.

## Core Properties

### Cross-Embodiment Generalization

The defining characteristic of a humanoid foundation model is **cross-embodiment** capability: the same base model can be adapted to control different robot bodies (embodiments) with varying physical dimensions, joint configurations, and sensor layouts. This contrasts with traditional robotics approaches where models are trained for a single specific robot. ^[extracted]

[[entities/nvidia-gr00t|GR00T N1]] is the canonical example: a two billion parameter base model that can be fine-tuned for different humanoid robot embodiments while retaining its general-purpose capabilities. ^[extracted]

### Physical World Operation

Unlike language or vision foundation models, humanoid foundation models must operate in the physical world — controlling actuators, processing sensor inputs, and making real-time decisions. This requires: ^[extracted]

- **Multimodal understanding** — Processing images, robot state vectors, and language instructions simultaneously
- **Action prediction** — Outputting continuous control signals (joint angles, forces, trajectories) rather than text tokens
- **Temporal reasoning** — Understanding cause-effect relationships in physical dynamics
- **Real-time execution** — Operating at control frequencies (e.g., 120 Hz for [[concepts/system-one-system-two-robotics|System One]])

### The Form Factor Rationale

Humanoid form is not chosen for aesthetics but for **environmental compatibility**. The human world — tools, door handles, stairs, kitchen layouts — was designed for human physical form. A generalist robot that needs to operate in this world most efficiently copies that form. Specialist robots (e.g., a barista robot) excel at narrow tasks but cannot generalize across domains. ^[extracted]

## Training Data Challenge

Humanoid foundation models face a fundamental data problem: there is no internet-scale dataset of robots performing tasks. The [[concepts/data-pyramid|Data Pyramid]] strategy addresses this through a combination of: ^[extracted]

1. Scarce high-quality real-world teleoperation data
2. Large-scale synthetic simulation data
3. Weakly-supervised internet video data
4. Data multiplication via world foundation models (e.g., [[concepts/dreamgen|DreamGen]])

## Relationship to Other Foundation Models

Humanoid foundation models differ from other foundation model categories: ^[inferred]

| Dimension | Language FM | Vision FM | Humanoid FM |
|-----------|-------------|-----------|-------------|
| Output modality | Text tokens | Image pixels | Action vectors |
| Training data | Internet text | Internet images | Simulation + teleop |
| Inference latency | Seconds | Seconds | Milliseconds (120 Hz) |
| Embodiment | None | None | Physical robot body |
| Safety critical | Low | Low | High (physical harm) |

## Open Questions

- How large does a humanoid foundation model need to be? GR00T N1 uses 2B parameters — is this sufficient, or will scaling laws from LLMs apply?
- What is the optimal sim-to-real transfer strategy?
- Can a single foundation model handle all manipulation tasks, or are specialized sub-models still needed?
- How does the model handle long-horizon tasks requiring planning across minutes or hours?

## Related

- [[concepts/physical-ai|Physical AI]] — The broader challenge of making AI operable in the physical world
- [[entities/nvidia-gr00t|NVIDIA Project GR00T]] — GR00T N1 implementation
- [[concepts/data-pyramid|Data Pyramid]] — Training data strategy
- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — VLA architecture patterns
- [[concepts/cross-embodiment-robotics|Cross-Embodiment Robotics]] — Generalizing across robot bodies
- [[concepts/system-one-system-two-robotics|System One / System Two Robotics]] — Dual-system architecture
