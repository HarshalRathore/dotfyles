---
title: Mobile Manipulation in Robotics
category: concepts
tags:
- robotics
- mobile-robotics
- manipulation
- locomotion
- foundation-models
aliases:
- mobile manipulation
- mobile robot manipulation
sources:
- 'AIEF2025 - Robotics: why now? - Quan Vuong and Jost Tobias Springberg, Physical Intelligence - https://www.youtube.com/watch?v=cGLa8DsOYdk'
summary: Robotics capability combining mobile locomotion with dexterous manipulation — enabling robots to move through environments while performing tasks. Added by Physical Intelligence as a new data colle...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/robotics-control-loop|Robotics Control Loop]]'
  type: extends
- target: '[[concepts/robotics-data-engine|Robotics Data Engine]]'
  type: requires
- target: '[[concepts/vision-language-action-models|Vision-Language-Action Models]]'
  type: controlled-by
---

# Mobile Manipulation in Robotics

**Mobile manipulation** is the robotics capability of combining mobile locomotion with dexterous manipulation — enabling robots to move through environments while performing tasks. At AI Engineer World's Fair 2025, Physical Intelligence demonstrated this capability as a new frontier in their data collection pipeline, moving beyond static lab scenes to robots that navigate and manipulate objects in diverse environments. ^[extracted]

## Significance

Mobile manipulation represents a significant step up in robotics complexity: ^[extracted]

- **Static scenes** (the prior state of the art) — robots operate in fixed locations with limited environmental variation
- **Mobile manipulation** — robots move through environments, encountering novel objects, layouts, and conditions while performing tasks

Physical Intelligence began collecting "significant amounts of data using mobile manipulation setups" after 12 months of their data engine, marking a transition from controlled lab environments to more realistic, diverse scenarios. ^[extracted]

## Engineering Challenges

Mobile manipulation introduces several engineering challenges beyond static manipulation: ^[inferred]

- **Locomotion + manipulation coordination** — The robot must balance movement with precise manipulation
- **Novel environments** — Unlike static lab scenes, mobile robots encounter unpredictable layouts and objects
- **Data diversity** — Hundreds of different scenes and environments must be covered for robust training
- **On-device deployment** — Mobile robots require policies that run entirely on-device, with no cloud dependency

## Related

- [[concepts/robotics-control-loop|Robotics Control Loop]] — The control system for mobile manipulation
- [[concepts/robotics-data-engine|Robotics Data Engine]] — The pipeline that collects mobile manipulation data
- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — Models that control mobile manipulation
- [[concepts/real-world-robotics-data|Real-World Robotics Data]] — The data from mobile scenarios
