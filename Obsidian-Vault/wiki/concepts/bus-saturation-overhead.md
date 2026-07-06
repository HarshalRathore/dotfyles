---
title: Bus Saturation Overhead
category: concepts
tags:
- bus-saturation
- communication-overhead
- robotics
- latency
- can-bus
aliases:
- communication overhead
- bus overhead
- transmission delay
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
- target: '[[concepts/can-bus-robotics|CAN Bus in Robotics]]'
  type: caused_by
- target: '[[concepts/robotics-control-loop|Robotics Control Loop]]'
  type: degrades
- target: '[[concepts/multithreaded-robotics-architecture|Multithreaded Robotics Architecture]]'
  type: motivates
summary: Bus Saturation Overhead
---

# Bus Saturation Overhead

Bus saturation overhead is the unavoidable delay introduced by communication protocol transmission time within a robotics control loop. When the time required to send and receive messages on the bus approaches or exceeds the control loop period, the system becomes communication-bound rather than computation-bound. ^[extracted]

## The Fundamental Constraint

In a typical robotics setup with CAN bus at 1Mbps:

- 10 messages × 100 bits each = 1,000 bits total
- Transmission time = 1,000 bits / 1,000,000 bits per second = 1ms
- If the control loop targets 2ms, the bus consumes 50% of the budget

This 1ms gap is not a bug — it is a physical property of the communication channel. No amount of policy optimization can eliminate it. ^[extracted]

## When Bus Saturation Matters

Bus saturation becomes a critical design constraint when:

- **Loop time is tight** — Sub-5ms control loops leave little room for communication
- **Message count is high** — More sensors/actuators = more messages
- **Message size is large** — High-resolution sensor data increases per-message bits
- **Bus speed is limited** — Standard CAN (1Mbps) vs CAN FD (8Mbps) makes a large difference

## Mitigation Strategies

Bus saturation cannot be eliminated, only worked around:

1. **Accept the delay** — Design control algorithms that tolerate the added latency (simplest, but limits performance)
2. **Pipeline communication** — Use multi-threading to overlap RX/TX with policy computation
3. **Reduce messages** — Send only essential data, aggregate sensor readings
4. **Upgrade the bus** — CAN FD, Ethernet, or other higher-bandwidth protocols

The choice depends on the robot's performance requirements. For high-performance systems, pipelining is the standard approach. ^[inferred]

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
