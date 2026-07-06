---
title: AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems
category: references
tags:
- aief2025
- robotics
- tesla
- optimus
- can-bus
- multithreading
- jitter
- synchronization
aliases:
- Rishabh Garg AIEF2025
- Tesla Optimus software challenges
sources:
- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/rishabh-garg|Rishabh Garg]]'
  type: features_speaker
- target: '[[entities/tesla-optimus|Tesla Optimus]]'
  type: features_topic
- target: '[[entities/aief2025|AI Engineer World''s Fair 2025]]'
  type: part_of
summary: AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems
---

# AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems

**Speaker:** Rishabh Garg, Tesla Optimus
**Event:** AI Engineer World's Fair 2025 (AIEF2025)
**Video:** https://www.youtube.com/watch?v=bCGbuyv8PMk

## TLDR

Rishabh Garg presents a diagnostic framework for understanding when robotics failures originate in the policy layer versus the software system layer. Using a toy robotics system built with CAN bus communication, he demonstrates how bus saturation, multi-threading artifacts, and thread desynchronization cause the exact problems (stuttering, jitter, missed commands) that are commonly blamed on bad policies. The talk provides a systematic approach to debugging robotics systems: check the software system before blaming the policy.

## Problem / Motivation

Robots are complex systems with many software components. When something goes wrong — a motor doesn't move, the robot stutters — the root cause is ambiguous: is it the policy that isn't giving the right command, or is it the software system that isn't delivering the command to the actuator? This is a question that robotics engineers grapple with daily. ^[extracted]

The talk is motivated by the observation that most failures that appear to be policy problems are actually software system problems. ^[extracted]

## Method / Architecture

Garg builds up from a simple toy robotics system to illustrate the issues:

### Base Architecture
- **Actuators** — Motors and joints
- **CPU** — Main processor
- **Hybrid accelerator** — GPU for policy inference
- **Sensors** — Environmental and proprioceptive data
- **Communication protocol** — CAN bus (open source, cheap, sufficient bandwidth)

### Control Loop
- Target period: 2ms
- Simple flow: receive data → run policy → send data back
- Single-threaded implementation

### Bus Saturation Analysis
- 100 bits per message × 10 messages = 1,000 bits
- CAN bus at 1 Mbps → 1ms transmission time
- Result: 1ms gap in the 2ms loop (50% overhead)

### Multi-threaded Solution
- Separate threads for RX, policy, and TX
- Staggered execution: pipeline the three stages
- RX for iteration N runs while policy for N-1 runs while TX for N-2 sends

### Diagnostic Approach
- External CAN bus transceiver (cheap, open-source)
- CanDump utility for timestamped message capture
- Cycle time plots for visualizing timing behavior

## Key Insights

1. **Bus saturation is unavoidable** — The 1ms gap from CAN transmission is a physical property of the communication channel, not a bug
2. **Multi-threading introduces jitter** — Pipelining recovers loop time but creates new failure modes (TX queueing, RX desync)
3. **Jitter is diagnosable** — Cycle time plots reveal whether the problem is on the TX side (burst messages) or RX side (stale data)
4. **Solutions depend on platform** — Linux systems can use semaphores/condition variables; RTOS/microcontrollers need padding
5. **Most policy failures are system failures** — The debugging mindset should start with the software system, not the policy

## Results

The talk demonstrates a complete diagnostic workflow:
1. Observe actuator stutter/jitter
2. Attach external transceiver, run CanDump
3. Plot cycle time — identify spikes and near-zero dips
4. Map pattern to TX queueing or RX desync
5. Apply appropriate fix (synchronization primitives or padding)

## Limitations

- Presented as a toy system; real-world Tesla Optimus may have additional complexity
- No specific performance numbers beyond the CAN bus calculation
- Padding approach trades loop time for reliability — no quantitative analysis of the trade-off

## Related Pages

- [[entities/rishabh-garg|Rishabh Garg]] — Speaker and author of the diagnostic framework
- [[entities/tesla-optimus|Tesla Optimus]] — The robotics system being discussed
- [[concepts/can-bus-robotics|CAN Bus in Robotics]] — The communication protocol
- [[concepts/robotics-control-loop|Robotics Control Loop]] — The fundamental cycle
- [[concepts/bus-saturation-overhead|Bus Saturation Overhead]] — The timing bottleneck
- [[concepts/multithreaded-robotics-architecture|Multithreaded Robotics Architecture]] — The pipelining solution
- [[concepts/jitter-in-robotics|Jitter in Robotics]] — The failure mode
- [[concepts/cycle-time-plot|Cycle Time Plot]] — The diagnostic tool
- [[concepts/robotics-synchronization|Robotics Synchronization]] — The fix
- [[concepts/software-vs-policy-debugging|Software vs Policy Debugging]] — The framework

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
