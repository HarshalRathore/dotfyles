---
title: "Three-Computer Problem"
category: concepts
tags:
  - three-computer-problem
  - robotics
  - compute
  - simulation
  - edge-deployment
  - nvidia
  - ovx
  - dgx
  - agx
summary: "NVIDIA's framing of the robotics development pipeline as three distinct compute stages — simulation (OVX), training (DGX), and edge deployment (AGX) — each requiring fundamentally different hardware architectures.
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/physical-ai|Physical AI]]"
    type: describes
  - target: "[[concepts/edge-ai-hardware-acceleration|Edge AI Hardware Acceleration]]"
    type: related_to
  - target: "[[concepts/on-device-inference|On-Device Inference]]"
    type: related_to
  - target: "[[entities/nvidia-gr00t|NVIDIA Project GR00T]]"
    type: used_by
---

# Three-Computer Problem

The **Three-Computer Problem** is NVIDIA's framing of the robotics development pipeline as three distinct compute stages, each requiring fundamentally different hardware architectures and software stacks. The term highlights that robotics is not a single compute problem but three separate problems that must be solved in sequence. ^[extracted]

## The Three Stages

### 1. Simulation — OVX Omniverse

**Hardware:** NVIDIA OVX (Omniverse) machines
**Compute characteristic:** Massive parallel simulation
**Purpose:** Generate synthetic training data by simulating robot-environment interactions

The simulation stage is where [[concepts/data-pyramid|synthetic data]] is created. OVX machines run physics-based simulations (e.g., NVIDIA Omniverse) where virtual robots perform tasks in virtual environments. This stage requires: ^[extracted]

- High-fidelity physics simulation (gravity, friction, collisions, deformable objects)
- Massive parallelization (thousands of simulations running simultaneously)
- Realistic sensor simulation (camera feeds, LiDAR, joint state sensors)

### 2. Training — DGX

**Hardware:** NVIDIA DGX systems
**Compute characteristic:** Massive sequential compute for model training
**Purpose:** Consume enormous datasets (real + synthetic + internet data) and train the foundation model

The training stage is where the actual foundation model (e.g., [[entities/nvidia-gr00t|GR00T N1]]) is trained. This requires: ^[extracted]

- Large-scale distributed training infrastructure
- GPU clusters optimized for transformer-like architectures
- Storage for petabyte-scale datasets
- Long training runs (days to weeks)

### 3. Edge Deployment — AGX

**Hardware:** NVIDIA AGX (edge AI modules)
**Compute characteristic:** Power-efficient, low-latency inference
**Purpose:** Run the trained model on the physical robot in real-time

The edge stage is where the model must be small enough and efficient enough to run on an edge device attached to the robot. This requires: ^[extracted]

- Model compression (quantization, pruning, distillation)
- Low-power inference (battery-operated robots)
- Real-time execution (control loops at 120 Hz for [[concepts/system-one-system-two-robotics|System One]])
- Robustness to environmental variation

## Why It's a "Problem"

The Three-Computer Problem is challenging because: ^[inferred]

1. **Different optimization targets** — Simulation optimizes for parallelism, training optimizes for throughput, edge optimizes for latency and power
2. **Model size constraints** — A model trained on DGX may be too large to deploy on AGX
3. **Data pipeline complexity** — Moving data between simulation → training → edge requires careful orchestration
4. **Hardware fragmentation** — Each stage may require different NVIDIA (or non-NVIDIA) hardware

## Relationship to Other Compute Problems

The Three-Computer Problem is analogous to other multi-stage compute challenges: ^[inferred]

| Problem | Stages |
|---------|--------|
| Three-Computer (robotics) | Simulation → Training → Edge |
| MLOps pipeline | Data prep → Training → Serving |
| Autonomous driving | Sensor processing → Perception → Planning |

## Open Questions

- Can a single hardware platform serve multiple stages? (e.g., can DGX also handle edge deployment?)
- How does model quantization affect the performance of foundation models trained on DGX when deployed on AGX?
- What are the cost implications of maintaining three distinct compute infrastructures?
- Can simulation hardware (OVX) be repurposed for training, reducing infrastructure costs?

## Related

- [[concepts/physical-ai|Physical AI]] — The broader challenge this problem sits within
- [[entities/nvidia-gr00t|NVIDIA Project GR00T]] — Where the Three-Computer Problem was articulated
- [[concepts/edge-ai-hardware-acceleration|Edge AI Hardware Acceleration]] — Edge compute considerations
- [[concepts/on-device-inference|On-Device Inference]] — Running models on edge devices
- [[concepts/large-scale-simulation|Large-Scale Simulation]] — Simulation-stage compute
