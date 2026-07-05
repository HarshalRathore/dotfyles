---
title: "RT2"
category: entities
tags:
  - model
  - robotics
  - vla
  - google-deepmind
  - vision-language-model
aliases:
  - robot transformer 2
  - RT-2
sources:
  - "AIEF2025 - Robotics: why now? - Quan Vuong and Jost Tobias Springberg, Physical Intelligence - https://www.youtube.com/watch?v=cGLa8DsOYdk"
summary: "An early Vision-Language-Action model from Google DeepMind (2023) that demonstrated generalization capabilities for robotic control. Some of its researchers later joined Physical Intelligence."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vision-language-action-models|Vision-Language-Action Models]]"
    type: implements
  - target: "[[entities/physical-intelligence|Physical Intelligence]]"
    type: influenced
  - target: "[[entities/google-deepmind|Google DeepMind]]"
    type: developed-by
---

# RT2

**RT2** (Robot Transformer 2) is an early Vision-Language-Action model developed by Google DeepMind, emerging in 2023. It demonstrated that multimodal LLMs could be adapted for robotic control, showing generalization capabilities such as picking different objects in the same scene. ^[extracted]

## Significance

RT2 was one of the first proofs of concept showing that VLA models could generalize beyond their training data — a key requirement for general-purpose robot control. Some of the researchers who worked on RT2 at Google DeepMind later joined [[entities/physical-intelligence|Physical Intelligence]], bringing that expertise to PI's VLA development. ^[extracted]

## Timeline Position

RT2 emerged in 2023, after LLMs had already been enhanced with vision encoders (2021-2022), but before VLA models achieved dexterous task performance at scale. It represents the first generation of VLA models — impressive as proofs of concept but limited in capability compared to later models like PI Zero. ^[inferred]

## Related

- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — Model category
- [[entities/physical-intelligence|Physical Intelligence]] — Company where some RT2 researchers now work
- [[entities/google-deepmind|Google DeepMind]] — Original developer
- [[entities/pi-zero|PI Zero]] — Later-generation VLA model
