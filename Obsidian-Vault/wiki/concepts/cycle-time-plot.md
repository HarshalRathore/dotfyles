---
title: "Cycle Time Plot"
category: concepts
tags: [cycle-time-plot, diagnostics, timing, can-bus, robotics, monitoring]
aliases: [cycle time analysis, inter-message timing plot, can bus timing plot]
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
  - target: "[[concepts/jitter-in-robotics|Jitter in Robotics]]"
    type: diagnoses
  - target: "[[concepts/software-vs-policy-debugging|Software vs Policy Debugging]]"
    type: enables
  - target: "[[concepts/can-bus-robotics|CAN Bus in Robotics]]"
    type: used_with
---

# Cycle Time Plot

A cycle time plot is a diagnostic visualization that shows the time elapsed since the last message for each message in a sequence. It is used to characterize timing behavior in robotics communication systems — particularly CAN bus — and to identify jitter, late messages, and thread desynchronization. ^[extracted]

## How It Works

For each message M_n received at time t_n, the cycle time is:

```
cycle_time(M_n) = t_n - t_(n-1)
```

In a perfect system with a 2ms loop period, every cycle time is 2ms, producing a flat horizontal line at y=2ms. ^[extracted]

## Reading the Plot

### Perfect System
All messages arrive at exactly 2ms intervals. The plot is a flat line at 2ms.

### Late Message
If message 3 arrives 4ms after message 2:
- Message 3's cycle time = 4ms (a spike)
- Message 4's cycle time ≈ 0ms (it arrived on time, but message 3 was late, so the gap between 3 and 4 is near zero)

This creates a characteristic "spike followed by dip" pattern. ^[extracted]

### TX Queueing Pattern
When the TX thread queues commands (policy took too long):
- Two messages are sent back-to-back
- The cycle time plot shows alternating: normal gap → spike → near-zero → normal gap
- This indicates the TX side is the problem

### RX Desynchronization Pattern
When the RX thread delivers stale data:
- The policy processes old data, then skips to new data
- The cycle time plot shows irregular gaps on the RX side
- This indicates the RX thread needs better synchronization

## Diagnostic Workflow

1. **Attach an external transceiver** — Cheap, open-source CAN bus monitor
2. **Run CanDump** — Capture timestamped messages from the bus
3. **Plot cycle times** — Calculate and visualize inter-message intervals
4. **Identify patterns** — Spikes indicate late messages; near-zero dips indicate burst transmission
5. **Correlate with symptoms** — Map timing patterns to actuator stutter/jitter behavior

## Tools

- **CanDump** — Linux utility for capturing CAN bus messages with timestamps
- **External CAN transceiver** — Hardware device connected to the CAN bus for monitoring
- **Custom plotting** — Cycle times calculated from timestamp data and plotted

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
