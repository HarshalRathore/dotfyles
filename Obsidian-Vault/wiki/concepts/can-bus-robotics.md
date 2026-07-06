---
title: CAN Bus in Robotics
category: concepts
tags:
- can-bus
- robotics
- communication-protocol
- bus-saturation
- real-time
aliases:
- Controller Area Network
- CAN bus timing
- automotive bus robotics
sources:
- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/robotics-control-loop|Robotics Control Loop]]'
  type: enables
- target: '[[concepts/bus-saturation-overhead|Bus Saturation Overhead]]'
  type: causes
- target: '[[concepts/software-vs-policy-debugging|Software vs Policy Debugging]]'
  type: relates_to
summary: CAN Bus in Robotics
---

# CAN Bus in Robotics

Controller Area Network (CAN) bus is a robust, open, and affordable serial communication protocol widely used in robotics for connecting sensors, actuators, and controllers. Its appeal for robotics systems includes open-source availability, low cost, and sufficient data rates for many embedded applications. ^[extracted]

## Why CAN Bus for Robotics

CAN bus is chosen for robotics over alternatives due to several factors:

- **Open and free** — No licensing fees; anyone can implement CAN controllers ^[extracted]
- **Affordable** — Cheap transceivers and controllers available from multiple vendors ^[extracted]
- **Sufficient bandwidth** — For many robotics applications, standard CAN (500kbps–1Mbps) provides adequate throughput ^[extracted]
- **Deterministic** — Priority-based arbitration ensures critical messages are delivered first ^[inferred]
- **Robust** — Designed for noisy automotive environments, making it suitable for industrial robotics ^[inferred]

## Bus Saturation in Practice

The critical insight from [[entities/rishabh-garg|Rishabh Garg]]'s analysis is that CAN bus transmission time can dominate the control loop budget. In a typical scenario:

| Parameter | Value |
|---|---|
| Bits per message | 100 |
| Messages per loop | 10 (5 TX + 5 RX) |
| Total bits | 1,000 |
| CAN bus speed | 1 Mbps |
| Transmission time | 1 ms |
| Control loop budget | 2 ms |
| **Bus overhead fraction** | **50%** |

This means half the control loop budget is consumed just by communication — leaving only 1ms for policy computation. The remaining time is often insufficient for complex policies, creating a bottleneck that no policy optimization can solve. ^[extracted]

## Implications for System Design

CAN bus saturation is a fundamental constraint that forces architectural decisions:

1. **Accept the delay** — Design the control system to tolerate the added latency (works for slower robots)
2. **Multi-thread and pipeline** — Overlap communication with computation using pipelined threads
3. **Reduce message count** — Optimize which data is sent over the bus
4. **Increase bus speed** — Use CAN FD or alternative protocols for higher bandwidth

The choice depends on the robot's required performance envelope. For high-performance systems where every millisecond matters, bus saturation becomes a primary design driver. ^[inferred]

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
