---
title: Vision-Language-Action Models
category: concepts
tags:
- vla
- robotics
- vision-language-model
- multimodal
- robot-control
- foundation-models
sources:
- 'AIEF2025 - Robotics: why now? - Quan Vuong and Jost Tobias Springberg, Physical Intelligence - https://www.youtube.com/watch?v=cGLa8DsOYdk'
- AIEF2025 - What Is a Humanoid Foundation Model? An Introduction to GR00T N1 - Annika & Aastha - https://www.youtube.com/watch?v=mWKYvT9Lc50
summary: A model architecture that extends Vision-Language Models (VLMs) for robotic control by adding robot state inputs and producing control actions instead of text responses. GR00T N1 extends this with...
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-05'
tier: supporting
created: '2026-07-04'
updated: '2026-07-05'
---

# Vision-Language-Action Models

**Vision-Language-Action (VLA) models** are a model architecture that adapts Vision-Language Models (VLMs) for the purpose of robotic control. A VLA takes the same inputs as a VLM (text prompts and images) plus additional robot state inputs (joint positions, etc.), and instead of producing text responses, it produces actions to control the robot directly. ^[extracted]

## Architecture

A VLA model operates as follows:

1. **Inputs** — Text prompt + image(s) + robot state (joint positions, sensor readings)
2. **Embedding** — Multimodal inputs are embedded and passed through a transformer backbone (typically a pre-trained VLM)
3. **Output** — Instead of autoregressively producing text tokens, the model produces control actions at high frequency for real-time robot control ^[extracted]

The key architectural difference from VLMs is the need for **high-frequency control signals** — VLA models must produce actions fast enough to keep the robot stable and responsive, which requires adapting the model architecture beyond standard VLM designs. ^[extracted]

## GR00T N1: A Foundation Model VLA

[[entities/nvidia-gr00t|GR00T N1]] represents a distinct VLA architecture that extends the basic VLA pattern with a **dual-system design** inspired by Daniel Kahneman's *Thinking Fast and Slow*: ^[extracted]

- **System Two** — A slow planner that breaks down complex tasks into executable sub-tasks
- **System One** — A fast executor operating at ~120 Hz that carries out System Two's plans

GR00T N1 uses a **noise-to-action** learning paradigm: sensors don't capture actions perfectly, so the model learns to map noisy sensor observations to correct actions through state and action encoders. ^[extracted]

The model takes three inputs (image observation, robot state, language prompt) and outputs robot action trajectories as floating-point joint vectors. With 2 billion parameters, it is described as "tiny in the world of LLMs, but still pretty sizable for a robot." ^[extracted]

## Cross-Embodiment VLA

A key innovation of GR00T N1 is **cross-embodiment** capability — the same base model can be fine-tuned for different robot embodiments while retaining general-purpose capabilities. This means one VLA can serve multiple robot types, unlike traditional approaches where each embodiment requires a separate model. ^[extracted]

## VLA vs VLM Training Pipelines

VLA training differs fundamentally from VLM training in three ways: ^[extracted]

| Aspect | VLM Training | VLA Training |
|--------|-------------|--------------|
| **Data source** | Web-scale data (scraped images + text) | No web-scale equivalent; must be collected via teleoperation or demonstration |
| **Model backbone** | Can use off-the-shelf pre-trained models | Pre-trained VLM backbones must be adapted for high-frequency control |
| **Deployment** | Cloud-based inference with established libraries | No standard solution; requires on-premise, on-device deployment across multiple robot locations |

The data sourcing problem is described as "a trillion dollar question for the industry" — there is no analogous web-scale dataset for robotics training. ^[extracted]

## Evolution Trajectory

VLA models follow a similar trajectory to VLMs but with a time lag: ^[extracted]

1. **2021-2022** — LLMs enhanced with vision encoders (multimodal LLMs emerge)
2. **2023** — RT2 (Google DeepMind) demonstrates early VLA capabilities; some of the earliest multimodal LLMs were actually trained for robotics purposes by researchers who later joined PI
3. **2024-2025** — VLA models achieve dexterous task performance (shirt folding, mobile manipulation) at scale; GR00T N1 announced as open-source cross-embodiment foundation model

## Related

- [[concepts/vision-language-models|Vision-Language Models]] — The VLM foundation VLA extends
- [[concepts/robotics-data-engine|Robotics Data Engine]] — The data pipeline that trains VLA models
- [[concepts/robotics-control-loop|Robotics Control Loop]] — The control system VLA models feed into
- [[entities/rt2|RT2]] — Early VLA model from Google DeepMind (researchers now at PI)
- [[entities/physical-intelligence|Physical Intelligence]] — Company pioneering VLA models
- [[entities/nvidia-gr00t|NVIDIA Project GR00T]] — GR00T N1 as a dual-system VLA with cross-embodiment
- [[concepts/noise-to-action-learning|Noise-to-Action Learning]] — Learning from noisy sensor observations
- [[concepts/system-one-system-two-robotics|System One / System Two Robotics]] — Dual-system architecture
- [[concepts/cross-embodiment-robotics|Cross-Embodiment Robotics]] — One model, multiple robot bodies
- [[concepts/physical-ai|Physical AI]] — The broader application domain
- [[concepts/data-pyramid|Data Pyramid]] — Training data strategy for VLA models
