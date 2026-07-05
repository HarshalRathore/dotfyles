---
title: "Hybrid Autonomy Model"
category: concepts
tags:
  - robotics
  - autonomy
  - teleoperation
  - foundation-models
  - human-in-the-loop
  - food-tech
summary: A 95% autonomous / 5% teleoperated hybrid model where foundation models handle routine tasks and humans intervene for edge cases, achieving better speed and reliability than either approach alone.
sources:
  - "[[sources/watchv=mbwgiwjdlso]]"
provenance:
  extracted: 0.85
  inferred: 0.10
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
  - target: "[[concepts/robot-foundation-models]]"
    type: related_to
  - target: "[[concepts/robot-evaluation-methods]]"
    type: related_to
---

The hybrid autonomy model combines autonomous foundation model execution with teleoperation fallback, achieving a system that is approximately 95% autonomous and 5% teleoperated. CloudChef describes this as "way faster and way more reliable than just teleop or just foundation models."

The model works as follows:

**Foundation model as primary executor.** The robot foundation model handles the vast majority of cooking tasks — the routine motions, the standard recipe steps, the predictable variations. This is the "culinary school" training that enables the robot to cook autonomously.

**Teleoperation as fallback.** When the foundation model encounters an edge case it hasn't been trained on — a novel ingredient, an unusual appliance configuration, an unexpected food state — the system falls back to teleoperation. A human remotely controls the robot to handle the situation, and the interaction is recorded as training data.

**Data flywheel effect.** Teleoperation interactions generate training data that improves the foundation model, which reduces the need for future teleoperation. This creates a self-reinforcing loop of improvement.

The hybrid model is particularly effective for cooking because:

1. **Cooking has many edge cases.** Ingredient variation, appliance differences, and novel recipes create a long tail of situations that are expensive to cover with pure autonomy but cheap to handle with teleoperation.
2. **The cost of failure is high.** A failed cooking attempt wastes ingredients and time. Teleoperation ensures reliability even when the foundation model is uncertain.
3. **The improvement signal is clear.** When teleoperation is needed, the exact human action is recorded, providing a clear supervised learning signal for the foundation model.
