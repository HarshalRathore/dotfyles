---
title: "Robotics Control Loop"
category: concepts
tags: [robotics, control-loop, real-time, actuator, sensor, policy]
aliases: [robot control loop, sensor-policy-actuator loop, robotics timing]
sources:
  - "AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/can-bus-robotics|CAN Bus in Robotics]]"
    type: depends_on
  - target: "[[concepts/multithreaded-robotics-architecture|Multithreaded Robotics Architecture]]"
    type: extended_by
  - target: "[[concepts/jitter-in-robotics|Jitter in Robotics]]"
    type: affected_by
  - target: "[[concepts/robotics-synchronization|Robotics Synchronization]]"
    type: requires
---

# Robotics Control Loop

The robotics control loop is the fundamental cycle that connects sensors → policy → actuators in a robot. It is the critical path between perception (reading sensor data), decision-making (running a policy/model), and action (sending commands to motors/actuators). The loop operates at a fixed cadence — for high-performance systems, this is often in the millisecond range. ^[extracted]

## General Architecture

A minimal robotics system consists of four components: ^[extracted]

1. **Actuators** — Motors and joints that produce physical movement
2. **CPU** — The main processor running the control policy
3. **Hybrid accelerator** — GPU or specialized hardware for policy inference
4. **Sensors** — Devices that provide environmental and proprioceptive data

The control loop flow is:

```
Sensors → [RX] → CPU/Policy → [TX] → Actuators
```

At each cycle, the system reads sensor data, feeds it to the policy, receives a command, and transmits it to the actuators. For a 2ms control loop, this entire sequence must complete within 2ms. ^[extracted]

## The Timing Problem

In practice, the control loop rarely achieves its target period. The gap between expected and actual loop time reveals system-level issues:

- **Expected**: A message every 2ms, evenly spaced
- **Actual**: A 1ms gap appears due to CAN bus transmission overhead
- **Root cause**: The software system, not the policy, is the bottleneck

This is the central diagnostic insight: when a robot behaves unexpectedly, the first question is not "is the policy wrong?" but "is the software system delivering the policy's output to the actuators on time?" ^[extracted]

## Loop Time Budget

A 2ms control loop with 1ms of CAN bus overhead leaves only 1ms for policy computation. This tight budget means:

- Policies must be fast enough to fit in the remaining window
- Any communication delay directly reduces computation time
- Multi-threading becomes necessary to overlap communication and computation

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
