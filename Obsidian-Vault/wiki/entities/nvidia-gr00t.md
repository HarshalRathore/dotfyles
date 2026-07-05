---
title: "NVIDIA Project GR00T"
category: entities
tags:
  - nvidia
  - groot
  - robotics
  - foundation-model
  - humanoid
  - open-source
  - physical-ai
aliases:
  - GR00T
  - GR00T N1
  - Project GR00T
sources:
  - "AIEF2025 - What Is a Humanoid Foundation Model? An Introduction to GR00T N1 - Annika & Aastha - https://www.youtube.com/watch?v=mWKYvT9Lc50"
summary: "NVIDIA's strategy for bringing humanoid and other forms of robotics into the world. GR00T N1 is an open-source, cross-embodiment, 2-billion-parameter robotics foundation model announced at GTC in March 2025.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/nvidia|NVIDIA]]"
    type: owned_by
  - target: "[[concepts/humanoid-foundation-model|Humanoid Foundation Model]]"
    type: implements
  - target: "[[concepts/physical-ai|Physical AI]]"
    type: enables
  - target: "[[concepts/data-pyramid|Data Pyramid]]"
    type: trained_on
  - target: "[[concepts/system-one-system-two-robotics|System One / System Two Robotics]]"
    type: implements
  - target: "[[concepts/three-computer-problem|Three-Computer Problem]]"
    type: addresses
---

# NVIDIA Project GR00T

**Project GR00T** is NVIDIA's comprehensive strategy for bringing humanoid and other forms of robotics into the world. It encompasses everything from compute infrastructure to software to research — not simply one foundation model, but an entire ecosystem. ^[extracted]

## GR00T N1 Foundation Model

The centerpiece of Project GR00T is **GR00T N1**, a robotics foundation model announced at GTC in March 2025.

### Key Properties

| Property | Value |
|----------|-------|
| Parameters | 2 billion |
| Open source | Yes |
| Customizable | Highly |
| Cross-embodiment | Yes |
| Announcement | GTC, March 2025 |

GR00T N1 is described as "tiny in the world of LLMs, but still pretty sizable for a robot." Its **cross-embodiment** capability means the same base model can be fine-tuned for different robot embodiments and use cases. ^[extracted]

### Architecture

GR00T N1 uses a **dual-system architecture** inspired by Daniel Kahneman's *Thinking Fast and Slow*: ^[extracted]

- **System Two** — Slow planner that breaks down complex tasks into executable sub-tasks
- **System One** — Fast executor operating at ~120 Hz that carries out System Two's plans

The model takes three inputs (image observation, robot state, language prompt) and outputs a robot action trajectory as floating-point vectors controlling different joints.

### Training Data

GR00T N1 is trained on data following the [[concepts/data-pyramid|Data Pyramid]] strategy: ^[extracted]

1. **Real world data** — Teleoperated robot trajectories (scarce, high-quality)
2. **Synthetic data** — Simulation-generated data (large-scale, variable quality)
3. **Internet data** — Human task videos (enormous, low robot-relevance)

Data multiplication via [[concepts/dreamgen|DreamGen]] (announced at Computex) extends the pyramid by generating variants of teleoperation trajectories through world foundation models.

### Compute Pipeline

GR00T N1 development spans the [[concepts/three-computer-problem|Three-Computer Problem]]: ^[extracted]

1. **Simulation** (OVX Omniverse) — Generate synthetic data
2. **Training** (DGX) — Train the foundation model
3. **Edge deployment** (AGX) — Run the model on physical robots

## Project GR00T Ecosystem

Project GR00T extends beyond the N1 model to include: ^[extracted]

- **Compute infrastructure** — OVX, DGX, AGX hardware stack
- **Simulation platforms** — NVIDIA Omniverse for synthetic data generation
- **Software tools** — Development frameworks for robot model customization
- **Research** — Ongoing work in robotics foundation models, sim-to-real transfer, and physical AI
- **Community** — Open-source model weights and tools for the robotics research community

## Open Questions

- How will GR00T N1 scale as robot embodiments become more diverse?
- What is the minimum model size for useful edge deployment?
- How does GR00T N1 compare to competing robotics foundation models (e.g., from Physical Intelligence, Tesla)?
- Will cross-embodiment generalization hold as models grow larger?

## Related

- [[entities/nvidia|NVIDIA]] — Parent organization
- [[concepts/humanoid-foundation-model|Humanoid Foundation Model]] — The model type GR00T N1 implements
- [[concepts/physical-ai|Physical AI]] — The broader challenge
- [[entities/vidya|Vidya]] — Company where Annika and Aastha (GR00T developers) work
