---
title: Noise-to-Action Learning
category: concepts
tags:
- noise-to-action
- robotics
- sensor-noise
- imitation-learning
- action-prediction
- nvidia
- groot
sources: []
summary: A learning paradigm in robotics where models learn to predict actions from noisy sensor observations — because sensors don't capture action perfectly, the model must learn to map imperfect observat...
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

# Noise-to-Action Learning

**Noise-to-Action** is a learning paradigm in robotics where foundation models learn to predict correct actions from noisy sensor observations — addressing the fundamental reality that sensors don't capture the true state of the world perfectly.

## The Problem

In robotics, every sensor introduces noise: camera feeds have compression artifacts and lighting variation, joint encoders have quantization error, IMUs drift over time. The model must learn to produce correct actions despite receiving imperfect observations. ^[extracted]

This contrasts with supervised learning paradigms where the input is assumed to be clean. In noise-to-action, the noise is an inherent part of the input distribution that the model must learn to handle.

## The Architecture

In [[entities/nvidia-gr00t|GR00T N1]], the noise-to-action pipeline works as follows: ^[extracted]

1. **Raw sensor observations** — Noisy image data, robot state vectors, and language prompts
2. **State encoder** — Transforms noisy observations into a latent representation
3. **Action encoder** — Transforms target actions into a latent representation
4. **Foundation model** — Learns the mapping from encoded states to encoded actions
5. **Action output** — Floating-point vectors controlling robot joints

The encoders are critical because they compress noisy raw data into representations that the foundation model can reason about effectively.

## Why "Noise-to-Action" Instead of "State-to-Action"?

The terminology emphasizes that the input is not a clean state estimate but a **noisy observation**. This has several implications: ^[inferred]

- The model must implicitly denoise observations as part of learning
- Training data must include realistic noise distributions (not just clean simulations)
- The model's robustness to sensor noise becomes a key performance factor
- Sim-to-real transfer must account for the fact that real sensors are noisier than simulated ones

## Relationship to Other Learning Paradigms

| Paradigm | Input | Output | Key Challenge |
|----------|-------|--------|---------------|
| Noise-to-Action | Noisy sensor data | Robot actions | Sensor noise + sim-to-real |
| State-to-Action | Clean state estimate | Robot actions | State estimation accuracy |
| Image-to-Action | Raw pixels | Robot actions | Visual representation learning |
| Text-to-Action | Language prompt | Robot actions | Instruction understanding |

## Open Questions

- How much noise can the model tolerate before performance degrades?
- Can the model learn to estimate and compensate for sensor noise implicitly?
- Does noise-to-action generalize across different sensor configurations?
- How does the quality of encoders affect noise-to-action performance?

## Related

- [[entities/nvidia-gr00t|NVIDIA Project GR00T]] — Where this paradigm was implemented
- [[concepts/robot-state-action|Robot State and Action]] — The underlying concepts
- [[concepts/imitation-learning|Imitation Learning]] — Broader learning paradigm
- [[concepts/simulation-realism-hierarchy|Simulation Realism Hierarchy]] — Sim-to-real noise considerations
