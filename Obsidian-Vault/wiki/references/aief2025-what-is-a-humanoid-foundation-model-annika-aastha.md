---
title: What Is a Humanoid Foundation Model? An Introduction to GR00T N1 — Annika & Aastha
category: references
tags:
- conference
- aief2025
- robotics
- humanoid
- foundation-model
- nvidia
- groot
- physical-ai
sources:
- AIEF2025 - What Is a Humanoid Foundation Model? An Introduction to GR00T N1 - Annika & Aastha - https://www.youtube.com/watch?v=mWKYvT9Lc50
summary: NVIDIA GR00T team members Annika and Aastha explain the GR00T N1 humanoid foundation model, the data pyramid strategy, and the three-computer physical AI lifecycle from simulation to edge deployment.
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-05'
tier: supporting
created: '2026-07-05'
updated: '2026-07-05'
---

# What Is a Humanoid Foundation Model? An Introduction to GR00T N1

**Speakers:** Annika and Aastha, both from [[entities/vidya|Vidya]], team members who developed the GR00T N1 Robotics Foundation Model.

## Key Themes

### Opening Framing: Physical AI as the Next Frontier

Annika opens with a McKinsey Global Institute finding: in the world's 30 most advanced economies, there are actually too many jobs for the number of people who can fill them — a 4.2x ratio of jobs-to-workers over the last decade. The jobs at risk of being unfilled are in leisure, hospitality, healthcare, construction, transportation, and manufacturing. None of these can be solved by ChatGPT alone; they require "operating instruments and devices in the physical world" — what the speakers call **Physical AI**. ^[extracted]

The speakers argue that humanoid form matters not for aesthetics but for utility: "The world was made for humans." Specialist robots (e.g., a barista robot that makes espresso) cannot cook rice. Generalist robots need to operate in a human-built world, making human-like form the most practical design choice. ^[extracted]

### The Physical AI Lifecycle: Three-Computer Problem

The GR00T team frames the robotics development pipeline as three distinct stages — which NVIDIA calls the "three-computer problem" due to their vastly different compute characteristics: ^[extract00]

1. **Simulation** — Data generation using powerful simulation hardware (e.g., NVIDIA OVX Omniverse machines). Generates synthetic data at scale.
2. **Training** — Model training using massive compute (e.g., NVIDIA DGX systems) to consume enormous datasets and learn from them.
3. **Edge Deployment** — Running the model on edge devices (e.g., NVIDIA AGX) requiring small, efficient models.

GR00T N1 is a **two billion parameter model** — described as "tiny in the world of LLMs, but still pretty sizable for a robot." It is open source, highly customizable, and **cross-embodiment**, meaning the base model can be fine-tuned for different robot embodiments and use cases. ^[extracted]

### The Data Pyramid

With no "internet-scale dataset" of robots doing tasks available (robots "haven't made it YouTube yet"), the GR00T team developed a **data pyramid** with three tiers: ^[extracted]

| Tier | Data Type | Quantity | Quality | Cost |
|------|-----------|----------|---------|------|
| Top | Real world data (teleoperated robots) | Very small | Very high | Very expensive |
| Middle | Synthetic data (simulation environments) | Large | Variable | Labor-intensive |
| Bottom | Internet data (human task videos) | Enormous | Low relevance to robots | Cheap/free |

**Real world data** is collected by humans teleoperating robots (e.g., wearing Apple Vision Pro and gloves), producing ground-truth task completion data. Limited to ~24 hours per robot per day (human hours), making it extremely scarce. ^[extracted]

**Synthetic data** sits in the middle — theoretically infinite through GPU-driven simulation, but practically constrained by the labor-intensive nature of building high-quality simulation environments requiring specialist skills. ^[extracted]

**Internet data** (human task videos like cooking tutorials) is not directly robot-relevant but contributes to the overall data strategy rather than being discarded. ^[extracted]

### Data Multiplication: DreamGen

A key technique mentioned is **DreamGen** (announced at Computex), which takes collected human teleoperation trajectories and multiplies them through video generation models — specifically World Foundation Models fine-tuned for this purpose. This allows the team to extract maximum value from scarce high-quality real data. ^[extracted]

### GR00T N1 Architecture: System One / System Two

Aastha explains the GR00T N1 architecture, inspired by Daniel Kahneman's *Thinking Fast and Slow*: ^[extracted]

- **System Two** — The "brain" of the model. Executes slowly to break down complex tasks into simpler sub-tasks that System One can execute. Functions as a planner.
- **System One** — The "fast" system, operating at approximately **120 hertz**. Executes the sub-tasks assigned by System Two.

The input to the model consists of: image observation, robot state, and language prompt. The output is a **robot action trajectory** — e.g., "pick up the industrial object and place it in the yellow bin." ^[extracted]

The robot sees output as floating-point vectors controlling different joints, not as motion trajectories visible to humans. The **robot state** is a snapshot of the robot and environment at an instant; the **action** is what the robot decides to do next based on that state. ^[extracted]

The architecture uses a **noise-to-action** paradigm: sensors don't capture action perfectly, so the model learns from noisy observations to predict actions. Data passes through state and action encoders to generate tokens. ^[extracted]

### Open Questions Raised

- How to effectively combine simulation data with real-world data?
- How to multiply scarce high-quality data through world foundation models?
- What is the optimal balance between the three tiers of the data pyramid?
- How does the sim-to-real gap affect policies trained in simulation?

## Related

- [[entities/nvidia-gr00t|NVIDIA Project GR00T]] — GR00T N1 foundation model details
- [[concepts/physical-ai|Physical AI]] — The challenge of making AI operable in the physical world
- [[concepts/data-pyramid|Data Pyramid]] — The three-tier data strategy for robotics
- [[concepts/system-one-system-two-robotics|System One / System Two Robotics]] — Kahneman-inspired dual-system architecture
- [[concepts/three-computer-problem|Three-Computer Problem]] — Simulation → Training → Edge deployment
- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — VLA models for robotics
