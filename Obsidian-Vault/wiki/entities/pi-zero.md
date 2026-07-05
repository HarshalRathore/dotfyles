---
title: "PI Zero"
category: entities
tags:
  - model
  - robotics
  - vla
  - physical-intelligence
  - shirt-folding
aliases:
  - PI0
  - pi zero model
sources:
  - "AIEF2025 - Robotics: why now? - Quan Vuong and Jost Tobias Springberg, Physical Intelligence - https://www.youtube.com/watch?v=cGLa8DsOYdk"
summary: "A VLA model released by Physical Intelligence that can perform highly dexterous tasks like shirt folding autonomously — demonstrated at AI Engineer World's Fair 2025."
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/physical-intelligence|Physical Intelligence]]"
    type: released-by
  - target: "[[concepts/vision-language-action-models|Vision-Language-Action Models]]"
    type: implements
  - target: "[[concepts/robotics-data-engine|Robotics Data Engine]]"
    type: trained-by
---

# PI Zero

**PI Zero** is a Vision-Language-Action (VLA) model released by [[entities/physical-intelligence|Physical Intelligence]] that can perform highly dexterous tasks autonomously. It was demonstrated at AI Engineer World's Fair 2025, where it successfully folded a shirt pulled from a dryer — a task with significant variability in initial conditions. ^[extracted]

## Capabilities

PI Zero demonstrates: ^[extracted]

- **High dexterity** — Can manipulate soft, deformable objects (clothing) with fine motor control
- **Autonomous operation** — Runs without human intervention after training
- **Generalization** — Handles variability in initial conditions (a shirt from a dryer has unpredictable creases and positioning)

## Training

PI Zero was trained on Physical Intelligence's data engine pipeline, which collected ~10,000 hours of successful robot episodes across tens of environments and hundreds of tasks within 6 months. ^[extracted]

## Significance

PI Zero represents one of the first demonstrations of a VLA model performing complex, dexterous household tasks autonomously — a capability that was previously only achievable through teleoperation or scripted behaviors. ^[inferred]

## Related

- [[entities/physical-intelligence|Physical Intelligence]] — Released by
- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — Model architecture
- [[concepts/robotics-data-engine|Robotics Data Engine]] — Training pipeline
- [[entities/rt2|RT2]] — Predecessor VLA model
