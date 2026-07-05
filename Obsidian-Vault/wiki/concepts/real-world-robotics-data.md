---
title: "Real-World Robotics Data"
category: concepts
tags: [robotics, data-collection, can-bus, diagnostics, external-monitoring]
aliases: [robotics monitoring, can bus data, external transceiver]
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
  - target: "[[concepts/cycle-time-plot|Cycle Time Plot]]"
    type: feeds
  - target: "[[concepts/software-vs-policy-debugging|Software vs Policy Debugging]]"
    type: enables
  - target: "[[concepts/can-bus-robotics|CAN Bus in Robotics]]"
    type: monitors
---

# Real-World Robotics Data

Real-world robotics data refers to the practice of capturing actual communication behavior from a running robot system using external monitoring tools — distinct from simulated or logged data. The canonical approach uses a cheap, open-source external CAN bus transceiver connected to the bus, with data fed to a host computer for analysis. ^[extracted]

## The External Transceiver Approach

The diagnostic workflow for collecting real-world robotics data:

1. **Attach an external transceiver** — A cheap, open-source CAN bus monitor device connected to the CAN bus wires
2. **Connect to a host computer** — The transceiver outputs data to a laptop or another host
3. **Run CanDump** — A Linux utility that captures CAN messages with precise timestamps
4. **Analyze the data** — Plot cycle times, identify jitter patterns, correlate with physical behavior

This approach is notable for its simplicity and low cost: the transceiver is an inexpensive off-the-shelf component, and CanDump is a standard Linux utility. No proprietary tooling is required. ^[extracted]

## Why External Monitoring Matters

Internal logging (data captured by the robot's own software) can miss timing issues because the logging itself introduces delay and may not capture the exact moment messages hit the bus. External monitoring provides a ground-truth view of what actually happened on the communication channel. ^[inferred]

## Data Analysis Techniques

- **Cycle time plots** — Visualize inter-message timing to identify jitter
- **Timestamp correlation** — Match message timestamps with actuator behavior
- **Burst detection** — Identify when multiple commands are sent in quick succession
- **Gap analysis** — Find unusually long intervals between messages

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
