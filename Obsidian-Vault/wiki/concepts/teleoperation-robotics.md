---
title: "Teleoperation in Robotics"
category: concepts
tags:
  - teleoperation
  - robotics
  - data-collection
  - human-in-the-loop
  - telemanipulation
  - imitation-learning
summary: "The practice of humans remotely controlling robots through wearable interfaces (e.g., VR headsets + data gloves) to collect high-quality task execution data for training robotics foundation models.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/data-pyramid|Data Pyramid]]"
    type: produces
  - target: "[[concepts/dreamgen|DreamGen]]"
    type: feeds
  - target: "[[concepts/imitation-learning|Imitation Learning]]"
    type: enables
  - target: "[[concepts/human-in-the-loop|Human-in-the-Loop]]"
    type: is_a
---

# Teleoperation in Robotics

**Teleoperation** in robotics is the practice of humans remotely controlling robots through wearable interfaces to perform tasks, with the resulting trajectories used as high-quality training data for robotics foundation models.

## How It Works

A human operator wears devices that capture their movements and translate them to robot actions in real-time. Common setups include: ^[extracted]

- **VR headsets** (e.g., Apple Vision Pro) — Provide visual feedback and head/hand tracking
- **Data gloves** — Capture finger and hand movements for fine motor control
- **Motion capture suits** — Track full-body movements for whole-body robot control
- **Master arms** — Haptic feedback devices that replicate robot arm movements

The operator's movements are mapped to the robot's joint space, producing a trajectory of actions that are recorded as ground-truth training data.

## Role in the Data Pyramid

Teleoperation data sits at the **top of the [[concepts/data-pyramid|Data Pyramid]]** — it is the highest-quality but most scarce data source for robotics foundation models. ^[extracted]

| Property | Value |
|----------|-------|
| Quantity | Very small (hours to days per robot) |
| Quality | Very high (actual successful task execution) |
| Cost | Very expensive (operator time + hardware) |
| Limitation | ~24 hours per robot per day (human hours) |

## Relationship to Imitation Learning

Teleoperation data is the primary input for **imitation learning** — the paradigm where robots learn by watching (or rather, by having their actions recorded from) human demonstrations. The recorded teleoperation trajectories become the "demonstration dataset" from which the robot's policy is learned. ^[inferred]

## Data Multiplication

Because teleoperation data is so scarce, [[concepts/dreamgen|DreamGen]] and similar techniques are used to multiply each teleoperation trajectory into multiple variants through world foundation models, extracting maximum training value from each data point. ^[extracted]

## Open Questions

- How many teleoperation hours are needed to train a useful foundation model?
- Can teleoperation be automated (robots teaching robots) to reduce human dependency?
- How does teleoperation data quality vary across operator skill levels?
- What is the optimal teleoperation-to-simulation data ratio?

## Related

- [[concepts/data-pyramid|Data Pyramid]] — Where teleoperation data sits in the data hierarchy
- [[concepts/dreamgen|DreamGen]] — Multiplying teleoperation data through generation
- [[concepts/physical-ai|Physical AI]] — The application domain
- [[concepts/imitation-learning|Imitation Learning]] — Learning from human demonstrations
- [[concepts/human-in-the-loop|Human-in-the-Loop]] — Broader category of human-guided AI
