---
title: Jitter in Robotics
category: concepts
tags:
- jitter
- timing
- robotics
- actuator
- stutter
- message-queuing
aliases:
- robotics jitter
- actuator stutter
- timing jitter
- message burst
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
- target: '[[concepts/multithreaded-robotics-architecture|Multithreaded Robotics Architecture]]'
  type: caused_by
- target: '[[concepts/cycle-time-plot|Cycle Time Plot]]'
  type: diagnosed_by
- target: '[[concepts/robotics-synchronization|Robotics Synchronization]]'
  type: prevented_by
- target: '[[concepts/software-vs-policy-debugging|Software vs Policy Debugging]]'
  type: relates_to
summary: Jitter in Robotics
---

# Jitter in Robotics

Jitter in robotics is the irregular timing of actuator commands that causes visible stutter, catching-up motions, or unexpected sounds from motors. It manifests when commands arrive at actuators with variable spacing instead of the expected uniform cadence — typically caused by thread desynchronization in multi-threaded control systems. ^[extracted]

## Symptoms

Jitter presents as observable physical behaviors:

- **Actuator stutter** — Motors move in jerky, non-smooth motions
- **Catching-up sounds** — Actuators make noise trying to follow commands they missed
- **Weird motions** — Unpredictable movement patterns not present in the policy output
- **Visible gaps** — Pauses in motion followed by rapid movement to catch up

## Root Causes

### TX-Side Jitter: Policy Queueing

When the policy thread takes longer than the loop period:

1. The policy misses its transmission window
2. The command is queued (not sent)
3. On the next iteration, both the old and new commands are sent together
4. The actuator receives two commands in rapid succession
5. The actuator "catches up," causing visible stutter

This is the most common form of jitter in multi-threaded systems. ^[extracted]

### RX-Side Jitter: Stale Data Processing

When the RX thread is delayed:

1. The policy receives old sensor data instead of current data
2. The policy computes a command based on stale information
3. On the next iteration, the RX thread delivers new data
4. The policy skips processing the old data entirely
5. The actuator receives a command jump — skipping an intermediate state

This produces a different jitter pattern: the motor jumps to a new position rather than catching up gradually. ^[extracted]

## Diagnosis with Cycle Time Plots

Jitter is diagnosed using [[concepts/cycle-time-plot|cycle time plots]], which show the time since the last message for each message in the sequence. In a perfect system, this is a flat line at the loop period. Jitter appears as:

- **Spikes** — Messages arriving late (long time since last message)
- **Dips near zero** — Messages arriving immediately after a late one

Example: if message 3 arrives 4ms late, message 3's cycle time shows 4ms, and message 4's cycle time shows ~0ms (it arrived on time, right after the delayed message 3). ^[extracted]

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
