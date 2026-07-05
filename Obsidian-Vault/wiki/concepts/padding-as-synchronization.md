---
title: "Padding as Synchronization"
category: concepts
tags: [padding, synchronization, robotics, real-time, embedded, timing-cushion]
aliases: [time padding, timing cushion, buffer time, padding strategy]
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
  - target: "[[concepts/robotics-synchronization|Robotics Synchronization]]"
    type: implements
  - target: "[[concepts/real-time-os-constraints|Real-Time OS Constraints]]"
    type: works_around
  - target: "[[concepts/jitter-in-robotics|Jitter in Robotics]]"
    type: prevents
---

# Padding as Synchronization

Padding as synchronization is a technique for preventing thread desynchronization in robotics control systems by adding deliberate time cushion to each stage of the control loop. It is used when standard synchronization primitives (semaphores, condition variables) are unavailable on the target platform. ^[extracted]

## The Core Idea

Instead of using locks and signals to coordinate threads, padding relies on time margin:

```
Design each stage with more time than it strictly needs:
  RX: allocated 0.7ms, actual 0.5ms → 0.2ms cushion
  POL: allocated 1.3ms, actual 1.0ms → 0.3ms cushion
  TX: allocated 0.7ms, actual 0.5ms → 0.2ms cushion

Total: 2.7ms allocated, 2.0ms actual → 0.7ms total cushion
```

If a stage takes slightly longer than expected (e.g., policy takes 1.1ms instead of 1.0ms), the cushion absorbs the variation without causing desynchronization. ^[extracted]

## When to Use Padding

Padding is the appropriate synchronization strategy when:

- **RTOS or microcontroller** — No condition variables or semaphores available
- **Simplicity is valued** — Padding is simpler than implementing synchronization primitives
- **Timing precision is secondary** — Slightly longer but reliable loop is acceptable
- **Variation is bounded** — The system's timing variation is within the cushion budget

## Trade-offs

| Aspect | Padding | Primitives |
|---|---|---|
| Complexity | Low | Higher |
| Loop time | Longer (wasted time) | Tighter (no wasted time) |
| Reliability | High (absorbs variation) | Depends on correct implementation |
| Platform support | Universal | Requires POSIX/RTOS support |
| Debugging | Easier (timing is visible) | Harder (race conditions) |

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
