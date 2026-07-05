---
title: "Physical AI"
category: concepts
tags:
  - physical-ai
  - robotics
  - embodied-ai
  - humanoid
  - nvidia
  - foundation-model
summary: "The challenge of taking large language model intelligence and making it operable in the physical world — controlling robots, instruments, and devices that interact with matter rather than just processing information.
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/humanoid-foundation-model|Humanoid Foundation Model]]"
    type: implemented_by
  - target: "[[concepts/vision-language-action-models|Vision-Language-Action Models]]"
    type: uses
  - target: "[[concepts/data-pyramid|Data Pyramid]]"
    type: trained_on
  - target: "[[entities/nvidia-gr00t|NVIDIA Project GR00T]]"
    type: implemented_by
---

# Physical AI

**Physical AI** is the challenge of taking the massive intelligence demonstrated by large language models and making it operable in the physical world — controlling robots, instruments, and devices that interact with matter rather than just processing information.

## The Core Insight

The prevailing view (articulated by [[entities/annika-and-aastha|Annika and Aastha]] at AIEF2025) is that AI's next frontier is not more intelligence in the digital realm, but **intelligence that can act physically**. The argument: many of the world's most pressing labor shortages are in industries (healthcare, construction, manufacturing, transportation) that "cannot be solved by ChatGPT alone" because they require "operating instruments and devices in the physical world." ^[extracted]

This reframes the AI progress narrative: we have built extraordinary digital intelligence; the remaining challenge is bridging that intelligence into physical action.

## Why Humanoid Form?

Physical AI researchers argue that **humanoid form is an engineering necessity, not an aesthetic choice**: ^[extracted]

- The human-built world (tools, door handles, stairs, kitchen layouts, vehicles) was designed for human physical form
- A generalist robot needs to operate in this world to be generally useful
- Specialist robots (e.g., a dedicated espresso machine robot) excel at narrow tasks but cannot generalize
- The most practical path to a generalist physical AI is to copy the physical form it will operate within

## The Three-Computer Problem

Physical AI development spans three distinct compute domains — what NVIDIA calls the "three-computer problem": ^[extracted]

| Stage | Compute Type | Example Hardware | Purpose |
|-------|-------------|-----------------|---------|
| Simulation | Massive parallel simulation | NVIDIA OVX Omniverse | Generate synthetic training data |
| Training | Massive sequential compute | NVIDIA DGX | Train foundation models on data |
| Edge | Power-efficient inference | NVIDIA AGX | Deploy model on physical robot |

Each stage has fundamentally different compute characteristics, requiring different hardware architectures and software stacks.

## Relationship to Foundation Models

Physical AI is the application domain; foundation models are the approach. A **humanoid foundation model** (e.g., [[entities/nvidia-gr00t|GR00T N1]]) is the bridge between the two — a large-scale model trained on physical-world data that can be deployed to control physical robots. ^[inferred]

The data challenge is fundamental: unlike language models trained on internet text or vision models trained on internet images, physical AI models have no equivalent "internet-scale" dataset of robots performing tasks. This necessitates the [[concepts/data-pyramid|Data Pyramid]] strategy combining real teleoperation data, synthetic simulation data, and internet video data.

## Open Questions

- What is the right model size for physical AI? GR00T N1 uses 2B parameters — too large for some edge deployments, too small for complex reasoning.
- How does physical AI handle the safety-critical nature of physical actions (unlike text generation)?
- Can physical AI achieve the same kind of emergent capabilities seen in LLMs, or are the constraints of physics fundamentally limiting?
- How do we evaluate physical AI systems? Traditional NLP/Vision benchmarks don't apply.

## Related

- [[concepts/humanoid-foundation-model|Humanoid Foundation Model]] — The model architecture for physical AI
- [[concepts/data-pyramid|Data Pyramid]] — The data strategy for training physical AI models
- [[concepts/three-computer-problem|Three-Computer Problem]] — The compute challenge across simulation, training, and edge
- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — VLA architectures for physical AI
- [[concepts/cross-embodiment-robotics|Cross-Embodiment Robotics]] — Generalizing across robot bodies
- [[concepts/system-one-system-two-robotics|System One / System Two Robotics]] — Dual-system architecture for physical AI
