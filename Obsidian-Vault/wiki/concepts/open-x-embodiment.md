---
title: Open X-Embodiment Dataset
category: concepts
tags:
- robotics
- dataset
- open-data
- benchmark
- foundation-models
- data-collection
aliases:
- open x embodiment
- x-embodiment
sources:
- 'AIEF2025 - Robotics: why now? - Quan Vuong and Jost Tobias Springberg, Physical Intelligence - https://www.youtube.com/watch?v=cGLa8DsOYdk'
summary: The largest publicly available robotics dataset (~3,800 hours of data from static scenes in robot labs worldwide), used as a baseline benchmark that Physical Intelligence surpassed within 6 months...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/robotics-data-engine|Robotics Data Engine]]'
  type: baseline-for
- target: '[[concepts/real-world-robotics-data|Real-World Robotics Data]]'
  type: example-of
- target: '[[concepts/vision-language-action-models|Vision-Language-Action Models]]'
  type: trains
---

# Open X-Embodiment Dataset

The **Open X-Embodiment Dataset** is the largest publicly available robotics dataset, containing approximately 3,800 hours of data collected from static scenes in different robot labs around the world. It served as the baseline benchmark that [[entities/physical-intelligence|Physical Intelligence]] surpassed within 6 months of building their data engine. ^[extracted]

## Characteristics

- **Volume** — ~3,800 hours of robot demonstration data
- **Source** — Multiple robot labs worldwide
- **Environment** — Static scenes (fixed locations, controlled conditions)
- **Open** — Publicly available, enabling community benchmarking

## Significance as a Baseline

The Open X-Embodiment dataset represented the state of the art in public robotics data before Physical Intelligence's data engine. PI's achievement of collecting 10,000+ hours in 6 months — nearly 3x the entire public dataset — demonstrates the scale and effectiveness of their approach. ^[extracted]

## Limitations

The dataset is limited to static lab scenes, lacking the environmental diversity (hundreds of different scenes, mobile manipulation setups) that PI's data engine later achieved. This highlights the importance of data diversity, not just volume, for training robust VLA models. ^[inferred]

## Related

- [[concepts/robotics-data-engine|Robotics Data Engine]] — The pipeline that surpassed this baseline
- [[concepts/real-world-robotics-data|Real-World Robotics Data]] — The type of data in the dataset
- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — Models trained on this data
- [[entities/physical-intelligence|Physical Intelligence]] — Company that surpassed the dataset
