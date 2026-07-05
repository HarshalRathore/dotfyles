---
title: "Multithreaded Robotics Architecture"
category: concepts
tags: [multithreading, pipelining, robotics, concurrency, real-time, rx-tx-separation]
aliases: [pipelined robotics, threaded robot control, robotics concurrency]
sources:
  - "AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/robotics-control-loop|Robotics Control Loop]]"
    type: extends
  - target: "[[concepts/bus-saturation-overhead|Bus Saturation Overhead]]"
    type: mitigates
  - target: "[[concepts/jitter-in-robotics|Jitter in Robotics]]"
    type: introduces
  - target: "[[concepts/robotics-synchronization|Robotics Synchronization]]"
    type: requires
---

# Multithreaded Robotics Architecture

Multithreaded robotics architecture separates the control loop into concurrent threads — typically RX (receive sensor data), policy (compute commands), and TX (send actuator commands) — to overlap communication with computation and recover loop time lost to bus saturation. ^[extracted]

## The Single-Thread Bottleneck

In a single-threaded control loop, the sequence is strictly sequential:

```
Read sensors → Run policy → Send commands → (repeat)
```

If bus transmission takes 1ms and the policy takes 1ms, the total loop is 2ms. But if the bus takes 1ms and the policy needs 1.5ms, the loop becomes 2.5ms — exceeding the target. The system is communication-bound. ^[extracted]

## The Pipelined Solution

By splitting into three staggered threads:

```
Thread RX:  [read sensors] → [read sensors] → [read sensors]
Thread POL:           [run policy] → [run policy] → [run policy]
Thread TX:                    [send commands] → [send commands]
```

Each thread operates independently at the same cadence. The RX thread for iteration N reads data while the policy for iteration N-1 runs, while the TX thread for iteration N-2 sends the previous command. This staggers the work so that communication and computation overlap. ^[extracted]

## The Result

With pipelining:
- The 1ms bus transmission runs in parallel with the 1ms policy computation
- The effective loop time returns to ~2ms (the maximum of the two stages)
- The system achieves the target loop period despite bus saturation

## The New Problem: Jitter

Pipelining introduces a new failure mode. Because threads run independently, they can desynchronize:

- If the policy thread takes longer than expected, its output is queued
- The TX thread sends both the old and new command together
- The actuator receives two commands in quick succession and "catches up" with visible stutter

This jitter is a multi-threading artifact — the system works correctly in isolation but fails when threads desynchronize. ^[extracted]

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
