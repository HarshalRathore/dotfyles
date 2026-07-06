---
title: Data Pyramid
category: concepts
tags:
- data-pyramid
- robotics
- synthetic-data
- teleoperation
- data-strategy
- nvidia
- groot
summary: '"A three-tier data strategy for robotics foundation models: scarce high-quality real-world teleoperation data at the top, large-scale synthetic simulation data in the middle, and weakly-relevant in...'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/physical-ai|Physical AI]]'
  type: enables
- target: '[[entities/nvidia-gr00t|NVIDIA Project GR00T]]'
  type: used_by
- target: '[[concepts/dreamgen|DreamGen]]'
  type: extends
- target: '[[concepts/simulation-realism-hierarchy|Simulation Realism Hierarchy]]'
  type: related_to
sources: []
---

# Data Pyramid

The **Data Pyramid** is a three-tier data strategy for training robotics foundation models, developed by the [[entities/nvidia-gr00t|GR00T]] team. It addresses the fundamental problem that there is no internet-scale dataset of robots performing tasks — robots "haven't made it YouTube yet." ^[extracted]

## The Three Tiers

### Top Tier: Real World Data

**Quantity:** Very small (hours to days of data per robot)
**Quality:** Very high (ground truth of actual task completion)
**Cost:** Very expensive
**Collection method:** Human teleoperation — humans wear devices (e.g., Apple Vision Pro + gloves) to control a real robot through task completion

This is the highest-value data because it represents actual successful task execution by a physical robot. However, it is severely limited by human endurance (capped at ~24 hours per robot per day, realistically less due to fatigue). ^[extracted]

### Middle Tier: Synthetic Data

**Quantity:** Large (theoretically infinite through GPU-driven generation)
**Quality:** Variable (depends on simulation fidelity)
**Cost:** Labor-intensive (building high-quality simulation environments requires specialist skills)
**Collection method:** Physics-based simulation environments (e.g., NVIDIA Omniverse) where virtual robots perform tasks

Synthetic data sits in the practical middle: it can be generated at scale but the simulation environments themselves are expensive to build and maintain. The quality of synthetic data depends on how well the simulation matches reality (the sim-to-real gap). ^[extracted]

### Bottom Tier: Internet Data

**Quantity:** Enormous (unlimited web-scrapable video)
**Quality:** Low relevance to robots (human-performed tasks, not robot-performed)
**Cost:** Free/cheap
**Collection method:** Scraping human task videos (e.g., cooking tutorials) from the internet

This data is not directly robot-relevant but is not discarded. It contributes to the overall data strategy by providing visual context, task structure, and environmental understanding that can be partially transferred to robot training. ^[extracted]

## Data Multiplication

A key extension of the Data Pyramid is **data multiplication** — extracting maximum value from scarce high-quality real data through generative techniques. [[concepts/dreamgen|DreamGen]] (announced at Computex) takes human teleoperation trajectories and multiplies them through video generation models (World Foundation Models fine-tuned for this purpose). ^[extracted]

This allows the pyramid to function as a data flywheel: a small amount of real data → multiplied into synthetic variants → combined with simulation data → used to train foundation models.

## Relationship to Other Data Strategies

The Data Pyramid is specific to robotics. Other AI domains have different data challenges: ^[inferred]

| Domain | Primary Data Source | Scale Challenge |
|--------|-------------------|-----------------|
| Language models | Internet text | Quality/curation |
| Vision models | Internet images | Diversity/labels |
| Robotics (Data Pyramid) | Teleop + simulation + internet | Quantity of robot data |

## Open Questions

- What is the optimal ratio of real:synthetic:internet data for training?
- How do we measure the quality of synthetic data relative to real data?
- Can data multiplication through world foundation models close the quality gap?
- Does the Data Pyramid scale — or does it hit a ceiling where more data yields diminishing returns?

## Related

- [[concepts/physical-ai|Physical AI]] — The application domain requiring this data strategy
- [[entities/nvidia-gr00t|NVIDIA Project GR00T]] — Where the Data Pyramid was developed
- [[concepts/dreamgen|DreamGen]] — Data multiplication technique
- [[concepts/simulation-realism-hierarchy|Simulation Realism Hierarchy]] — Fidelity tradeoffs in simulation
- [[concepts/large-scale-simulation|Large-Scale Simulation]] — Simulation-based evaluation and training
- [[concepts/vision-language-action-models|Vision-Language-Action Models]] — Models trained on this data
