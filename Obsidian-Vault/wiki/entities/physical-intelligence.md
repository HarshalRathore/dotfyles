---
title: "Physical Intelligence"
category: entities
tags:
  - company
  - robotics
  - ai
  - vla
  - physical-intelligence
  - open-source
aliases:
  - PI
  - physical intelligence company
sources:
  - "AIEF2025 - Robotics: why now? - Quan Vuong and Jost Tobias Springberg, Physical Intelligence - https://www.youtube.com/watch?v=cGLa8DsOYdk"
summary: "AI robotics company founded by Quan Vuong and Jost Tobias Springberg, building Vision-Language-Action models for general-purpose robot control. Open-sources research and models. Collected 10,000+ hours of robotics data in 6 months."
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
  - target: "[[concepts/vision-language-action-models|Vision-Language-Action Models]]"
    type: develops
  - target: "[[concepts/robotics-data-engine|Robotics Data Engine]]"
    type: builds
  - target: "[[entities/pi-zero|PI Zero]]"
    type: released
  - target: "[[entities/quan-vuong|Quan Vuong]]"
    type: founded-by
  - target: "[[entities/jost-tobias-springberg|Jost Tobias Springberg]]"
    type: founded-by
---

# Physical Intelligence

**Physical Intelligence** (PI) is an AI robotics company with the mission "to make a model that can control any robot to do any task." Founded by Quan Vuong and Jost Tobias Springberg, the company is pioneering Vision-Language-Action (VLA) models — a new architecture that adapts multimodal LLMs for robotic control.

## Approach

PI takes an open approach: they publish their research, open-source their model, and are publicly transparent about their methods and challenges. They believe multiple scientific breakthroughs are needed before general-purpose robot control is achievable, and they are contributing to that body of knowledge. ^[extracted]

## Data Engine

PI built a data collection pipeline from scratch. Within 6 months, they collected ~10,000 hours of successful robot episodes across tens of environments and hundreds of tasks — surpassing the entire Open X-Embodiment dataset (3,800 hours from static lab scenes). After another 6 months, they added mobile manipulation setups and hundreds of diverse scenes. ^[extracted]

## PI Zero

PI released a model called PI Zero that can perform highly dexterous tasks like shirt folding autonomously. This was demonstrated at AI Engineer World's Fair 2025, where the model folded a shirt pulled from a dryer — a task with significant variability in initial conditions. ^[extracted]

## Key Insight

The founders argue that robotics benefits enormously from general AI development, but requires a new model architecture (VLA) and a completely new data pipeline — there is no web-scale equivalent for robotics training data, which they describe as "a trillion dollar question for the industry." ^[extracted]

## Related

- [[entities/quan-vuong|Quan Vuong]] — Co-founder
- [[entities/jost-tobias-springberg|Jost Tobias Springberg]] — Co-founder
- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — Core technology
- [[entities/pi-zero|PI Zero]] — Their released model
- [[entities/rt2|RT2]] — Predecessor VLA (researchers from Google DeepMind now at PI)
