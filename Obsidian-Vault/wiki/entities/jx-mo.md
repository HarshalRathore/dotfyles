---
title: "JX Mo"
tags:
  - person
  - robotics
  - open-source
  - k-scale-labs
aliases:
  - JX Mo
  - Jax Mo
sources:
  - "AIEF2025 - Your Personal Open-Source Humanoid Robot for $8,999 — JX Mo, K-Scale Labs - https://www.youtube.com/watch?v=BS92RdBvI90"
summary: "Founding engineer at K-Scale Labs, building open-source humanoid robots. Presented K-Bot ($8,999) and Z-Bot at AI Engineer World's Fair 2025."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# JX Mo

JX Mo (also referred to as Jax) is a founding engineer at [[entities/k-scale-labs|K-Scale Labs]], a 15-person Palo Alto-based company building fully open-source humanoid robots from hardware to ML models. At AI Engineer World's Fair 2025, he presented the K-Bot (full-size, $8,999) and Z-Bot (1.5ft) robots alongside the KOS software stack. ^[extracted]

## Key Contributions (per AIEF2025)

- Leads engineering on the K-Bot full-size humanoid robot — designed and manufactured from scratch in ~8 months (project started October 2025). ^[extracted]
- Built the KOS (K-Scale OS) software framework: a Python/Rust SDK with gRPC interface, installable via `pip install kos`. ^[extracted]
- Developed GPU-accelerated RL training pipeline using MJX for locomotion policies (training time: 1-2 hours). ^[extracted]
- Created KOS Sim, a digital twin with the same interface as the physical robot — enabling rapid sim2real prototyping by changing an IP address. ^[extracted]
- Designed for modularity: swappable end effectors, upgradeable arms/legs/head, OTA software updates. ^[extracted]
- Advocate for open-source robotics — believes entire humanoid stack should be MIT-licensed and accessible to all developers. ^[inferred]
- Deliberately chose not to use ROS/ROS2, preferring a simpler, policy-based architecture with custom Rust firmware. ^[extracted]

## Related

- [[entities/k-scale-labs|K-Scale Labs]] — company
- [[concepts/open-source-humanoid-robotics|Open-Source Humanoid Robotics]] — paradigm he advocates
- [[references/aief2025-open-source-humanoid-robot-k-scale-labs|Your Personal Open-Source Humanoid Robot]] — his talk

## Sources

- [[references/aief2025-open-source-humanoid-robot-k-scale-labs|Your Personal Open-Source Humanoid Robot for $8,999 — JX Mo, K-Scale Labs (AI Engineer World's Fair 2025)]]
