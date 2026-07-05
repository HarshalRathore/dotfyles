---
title: "Rishabh Garg"
category: entities
tags: [person, robotics, tesla, optimus, software-engineering]
aliases: [Rishabh Garg Tesla]
sources:
  - "AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk"
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
  - target: "[[entities/tesla|Tesla]]"
    type: works_at
  - target: "[[entities/tesla-optimus|Tesla Optimus]]"
    type: works_on
  - target: "[[concepts/software-vs-policy-debugging|Software vs Policy Debugging]]"
    type: author_of
---

# Rishabh Garg

Rishabh Garg is a software engineer at [[entities/tesla|Tesla]] working on the [[entities/tesla-optimus|Tesla Optimus]] humanoid robot program. He speaks on the challenges of building high-performance robotics software systems — specifically the gap between policy decisions and actuator execution.

## Key Contributions

At AI Engineer World's Fair 2025, Garg presented a diagnostic framework for understanding when robotics failures originate in the policy layer versus the software system layer. His central thesis: most failures that appear to be policy problems are actually software system problems — timing issues, bus saturation, thread desynchronization, and synchronization failures. ^[extracted]

He demonstrated this through a toy robotics system built with CAN bus communication, showing how a 2ms control loop degrades to 3ms due to bus saturation, how multi-threading introduces jitter through message queuing, and how RX-side desynchronization causes motors to "catch up" with old commands. ^[extracted]

## Talk: Challenges in High Performance Robotics Systems

Garg's AIEF2025 talk covers:

1. **The policy-to-actuator gap** — policies may work correctly but fail to execute due to software system issues ^[extracted]
2. **CAN bus saturation** — even modest message counts (10 messages × 100 bits at 1Mbps) consume 1ms of a 2ms loop ^[extracted]
3. **Multi-threading and pipelining** — separating RX, TX, and policy into staggered threads to recover loop time ^[extracted]
4. **Jitter diagnosis** — using external transceivers and cycle time plots to identify TX queuing and RX desynchronization ^[extracted]
5. **Synchronization solutions** — condition variables, semaphores, and padding as fallbacks on RTOS/microcontroller platforms ^[extracted]

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
