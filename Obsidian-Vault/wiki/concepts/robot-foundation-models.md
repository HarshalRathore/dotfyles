---
title: "Robot Foundation Models"
category: concepts
tags:
  - robotics
  - foundation-models
  - motion-primitives
  - teleoperation
  - fine-tuning
  - imitation-learning
summary: Foundation models trained on robotic motion primitives (picking, stirring, sautéing) via fine-tuning and teleoperation, enabling robots to learn cooking skills from expert demonstrations.
sources:
  - "https://www.youtube.com/watch?v=mbwgiwjdlso"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.83
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/robotic-culinary-automation]]"
    type: uses
  - target: "[[concepts/robot-evaluation-methods]]"
    type: related_to
  - target: "[[concepts/hybrid-autonomy-model]]"
    type: related_to
---

Robot foundation models are large-scale machine learning models adapted for robotic manipulation tasks. In CloudChef's approach, these models are fine-tuned to handle cooking-specific motion primitives — picking up objects, stirring pots, sautéing, grilling, pouring — through a combination of demonstration learning and teleoperation fallback.

The training pipeline involves:

**Motion primitive learning.** The robot must learn the basic physical skills that humans take for granted: how to pick something up, how to stir a pot, how to pour. These are the "culinary school" fundamentals that the robot foundation models are fine-tuned on.

**Teleoperation for edge cases.** When the foundation model encounters a situation it hasn't been trained on, the system falls back to teleoperation — a human remotely controlling the robot. This hybrid approach allows the system to collect training data from real kitchen work while maintaining operational capability.

**Expert demonstration learning.** The robot learns new recipes from a single expert demonstration — watching a chef cook once, then being able to reproduce the recipe. This is described as learning "from a chef" rather than being pre-programmed.

**Motor skill evaluation.** CloudChef evaluates the robot's motor skills through specific benchmarks: sautéing (almost as fast as a human cook), picking and pouring (slightly less fast), grilling, and stirring. These evaluations measure both speed and accuracy of physical manipulation.

The foundation model approach is contrasted with teleoperation-only systems: the hybrid (95% autonomous, 5% teleoperated) is described as "way faster and way more reliable than just teleop or just foundation models."
