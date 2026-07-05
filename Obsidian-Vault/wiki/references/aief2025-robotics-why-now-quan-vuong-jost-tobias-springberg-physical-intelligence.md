---
title: "Robotics: Why Now? — Quan Vuong and Jost Tobias Springberg, Physical Intelligence"
category: references
tags:
  - reference
  - talk
  - aief2025
  - robotics
  - vla
  - vision-language-action
  - physical-intelligence
  - data-engineering
aliases:
  - AIEF2025 Physical Intelligence
  - PI Robotics Talk
  - Robotics Why Now
sources:
  - "AIEF2025 - Robotics: why now? - Quan Vuong and Jost Tobias Springberg, Physical Intelligence - https://www.youtube.com/watch?v=cGLa8DsOYdk"
summary: "Physical Intelligence co-founders present their vision for general-purpose robot control via Vision-Language-Action models, their data engine pipeline, and why the AI wave has made robotics feasible now."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/physical-intelligence|Physical Intelligence]]"
    type: about
  - target: "[[concepts/vision-language-action-models|Vision-Language-Action Models]]"
    type: introduces
  - target: "[[concepts/robotics-data-engine|Robotics Data Engine]]"
    type: describes
  - target: "[[concepts/teleoperation-robotics|Teleoperation in Robotics]]"
    type: demonstrates
---

# Robotics: Why Now? — Quan Vuong and Jost Tobias Springberg, Physical Intelligence

> Co-founders Quan Vuong and Jost Tobias Springberg of [[entities/physical-intelligence|Physical Intelligence]] present the case for why robotics is finally becoming feasible at scale, their Vision-Language-Action (VLA) model architecture, and the data engine pipeline that powers it.

## Context

This talk was delivered at AI Engineer World's Fair 2025. Physical Intelligence (PI) is an AI robotics company whose mission is "to make a model that can control any robot to do any task." The speakers explicitly state this is not yet achievable — they believe multiple scientific breakthroughs are needed — but they are publishing their research openly, open-sourcing their model, and being transparent about their approach.

## Key Claims

**The robotics problem is fundamentally different from factory robotics.** Traditional robotics excels in constrained, structured environments (factory floors, repetitive motion). Bringing robots into the real world — semi-structured environments with unpredictable objects — remains an open challenge. ^[extracted]

**The AI wave has made robotics feasible now.** General AI development benefits robotics significantly, but PI is pioneering a new model architecture: Vision-Language-Action (VLA) models, which adapt VLMs for robotic control. ^[extracted]

**VLA training pipelines are fundamentally different from VLM training.** VLM training has a clear analog: take a pre-trained model, source data from the web, fine-tune on a cluster in the cloud, deploy with established libraries. For VLA training, there is no analogous "web-scale" data source — this is "a trillion dollar question for the industry." ^[extracted]

**Three unique engineering challenges for VLA training:**
1. **Data sourcing** — No web-scale equivalent exists for robotics training data; the data problem is the central bottleneck. ^[extracted]
2. **Model architecture adaptation** — Pre-trained VLM backbones must be adapted for high-frequency control signals required by robots. ^[extracted]
3. **On-device deployment** — No standard solution exists for deploying large robot policies across multiple on-premise, on-device locations. ^[extracted]

**PI's data engine pipeline:** They build their data pipeline from scratch, starting with an expanding set of tasks (folding clothes, buying groceries, etc.), using human operators with leader arms (teleoperation) to demonstrate tasks, collecting data around the clock, annotating in the cloud, and training policies that solve tasks autonomously. ^[extracted]

**Data scale has been the key differentiator:** The biggest publicly available dataset (Open X-Embodiment) had ~3,800 hours of data from static lab scenes. After 6 months of PI's pipeline: 10,000 hours of successful episodes across tens of environments and hundreds of tasks. After another 6 months: massive scale and diversity across hundreds of scenes, including mobile manipulation setups. ^[extracted]

**VLA models follow a similar trajectory to VLMs but with a time lag.** RT2 (from Google DeepMind researchers who are now at PI) emerged in 2023 after LLMs had already been enhanced with vision encoders. Some of the earliest multimodal LLMs were actually trained for robotics purposes by researchers now at PI. ^[extracted]

## VLA Architecture

A VLA model extends a Vision-Language Model (VLM) by:
- Adding robot state inputs (joint positions, etc.)
- Producing control actions instead of text responses
- Operating at high frequency for real-time robot control

The model takes text prompts and images (like a VLM), embeds them through a transformer, but instead of autoregressively producing text, it produces actions to control the robot directly. ^[extracted]

## Data Collection Pipeline

1. **Task selection** — Define an ever-expanding set of tasks to test capabilities
2. **Teleoperation** — Human operators control leader arms that trace motions, transferred via software to robot effectors
3. **Continuous collection** — Scheduled sessions around the clock with dashboard tracking
4. **Cloud annotation** — Data served in big buckets, filterable by annotations
5. **Model training** — Policies trained on curated data
6. **Autonomous deployment** — Trained policies run on robots without human intervention

## Notable Quotes

- "Our mission is to make a model that can control any robot to do any task."
- "There is this vision language action model that we're pioneering."
- "What the analogous data source for the web actually is — [is] a trillion dollar question for the industry."
- "More than 50 percent of the work is getting the data pipeline right."

## Related

- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — Core model architecture
- [[concepts/robotics-data-engine|Robotics Data Engine]] — PI's data pipeline
- [[entities/physical-intelligence|Physical Intelligence]] — The company
- [[entities/quan-vuong|Quan Vuong]] — Co-founder
- [[entities/jost-tobias-springberg|Jost Tobias Springberg]] — Co-founder
- [[entities/rt2|RT2]] — Predecessor VLA model (Google DeepMind, researchers now at PI)
- [[concepts/open-x-embodiment|Open X-Embodiment Dataset]] — The baseline dataset PI surpassed

## Sources

- AIEF2025 - Robotics: why now? - Quan Vuong and Jost Tobias Springberg, Physical Intelligence - https://www.youtube.com/watch?v=cGLa8DsOYdk
