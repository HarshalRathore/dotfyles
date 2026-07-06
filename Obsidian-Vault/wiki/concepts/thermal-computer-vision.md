---
title: "Thermal Computer Vision"
category: concepts
tags:
  - computer-vision
  - thermal-imaging
  - cooking
  - perception
  - foundation-models
  - multi-modal
summary: Using thermal (infrared) imagery alongside RGB vision for food perception — judging doneness, browning, and cooking state by temperature and color patterns invisible to standard cameras.
sources:
  - "https://www.youtube.com/watch?v=mbwgiwjdlso"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/robotic-culinary-automation]]"
    type: uses
  - target: "[[concepts/robot-foundation-models]]"
    type: related_to
  - target: "[[concepts/private-robotics-data]]"
    type: related_to
---

Thermal computer vision uses infrared/thermal imagery to perceive and understand the physical state of objects — in CloudChef's case, food during cooking. This is distinct from standard RGB vision because it captures temperature distributions, not just color and shape.

CloudChef's system uses thermal and visual (RGB) embeddings "specific to cooking" to reason about food state. The robot "looks at how the onions are browning" during cooking and "compares it to how brown the onions were getting when the chef was cooking it," taking them to the "right amount of brownness." This requires the robot to get "clean readings every few minutes" during the cooking process.

The thermal modality is critical because:

1. **Doneness is primarily a thermal signal.** Whether shrimp is done, whether onions are caramelized, whether meat has reached the right internal temperature — these are fundamentally thermal properties that RGB cameras cannot reliably detect.

2. **Thermal data is not available at internet scale.** Abraham notes that "thermal modality does not have internet-scale data," which is why CloudChef installed sensors in active commercial kitchens to collect hundreds of thousands of live-cooked meals with thermal and RGB footage. This private data collection was a prerequisite for training their culinary perception models.

3. **It enables state estimation during cooking.** The system can estimate "where in the cooking process you are" and "track progress like a human being" by comparing live thermal/RGB feeds against expert demonstration data.

The combination of thermal and RGB embeddings is used to model recipes as state machines, where each state transition depends on the current thermal and visual state of the food being cooked.
