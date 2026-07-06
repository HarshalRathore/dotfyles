---
title: Your Personal Open-Source Humanoid Robot for $8,999 — JX Mo, K-Scale Labs
tags:
- reference
- talk
- aief2025
- robotics
- humanoid
- open-source
aliases:
- AIEF2025 K-Scale Labs
- Mo K-Scale Humanoid 2025
sources:
- 'https://www.youtube.com/watch?v=bs92rdbvi90'
summary: JX Mo (founding engineer, K-Scale Labs) presents the K-Bot ($8,999) and Z-Bot open-source humanoid robots — fully open-sourced hardware, software, and ML stack with a developer-first Python/Rust SD...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# Your Personal Open-Source Humanoid Robot for $8,999 — JX Mo, K-Scale Labs

> JX Mo, founding engineer at [[entities/k-scale-labs|K-Scale Labs]], presents the K-Bot (full-size humanoid, $8,999) and Z-Bot (1.5ft humanoid) — both fully open-source from hardware CAD to ML models. The talk covers the KOS software stack (Python/Rust SDK), GPU-accelerated RL training via MJX, digital twin simulation (KOS Sim), and the vision of becoming the first US consumer humanoid robotics company. ^[extracted]

## Context

This talk was given at AI Engineer World's Fair 2025 (AIEF2025). K-Scale Labs is a 15-person team in Palo Alto building open-source humanoid robots targeted at developers, researchers, and early adopters — not enterprise/factory customers. Their bet is on the consumer robotics market, unlike competitors (Tesla Optimus, Figure, Unitree) who sell primarily B2B. ^[extracted]

## Key Claims

- K-Bot will be the most affordable developer and research-grade humanoid robot at $8,999 — next cheapest option (Unitree) is ~$40k. ^[extracted]
- Full-stack open source: CAD designs, electronics/PCBs, firmware, software, and ML models are all MIT-licensed and freely replicable. ^[extracted]
- Modular design: swappable end effectors (parallel gripper, five-finger hand, custom), upgradeable legs/arms/head — as compute improves (new NVIDIA chips), users can just swap the head. ^[extracted]
- Training a walking locomotion policy takes 1–2 hours via MJX (GPU-accelerated RL) on a local GPU, with observability via TensorBoard. ^[extracted]
- Sim2Real deployment is as simple as changing an IP address — the same gRPC interface works for both KOS Sim (digital twin) and the physical robot. ^[extracted]
- K-Bot specs: 4'11" height, full aluminum body, 5-DOF arms (upgradeable to 7-DOF), MIT Cheetah actuators, up to 250 TOPS compute (Jetson Nano/AGX options), ~2 hour battery (pass-through charging). ^[extracted]
- Z-Bot (1.5ft) runs the same locomotion and software stack, inspired by the Google DeepMind robot soccer paper. Fully open-sourced, started as a hackathon, being brought to mass manufacturing. ^[extracted]
- Deliberately chose not to use ROS2 — "I've just had a pretty bad experience using it" — preferring a simpler model-based, policy-based robot architecture without complex async sensor communication. ^[extracted]

## Architecture

- **High-level controller** — VLA (Vision-Language-Action) model for task understanding and planning. ^[extracted]
- **Low-level controller** — RL whole-body locomotion policy (PPO) trained via MJX. ^[extracted]
- **Firmware** — custom Rust-based firmware/software architecture. ^[extracted]
- **Developer interface** — KOS (pip install kos), Python/Rust SDK with gRPC API. Programming a robot is "connect to IP, start coding." ^[extracted]
- **Digital twin** — KOS Sim provides identical gRPC interface for simulation; prototype in sim, change IP address to deploy to real robot. ^[extracted]

## Notable Quotes

- "Our goal is to really solve general purpose robotics for everyone and open sourcing the entire stack to the entire world."
- "If you come visit us, you can start programming this robot basically immediately. It's like pip install — and you can start working on it."
- "Our real bet is becoming the first US consumer robotics company."
- "I just want a robot I can buy, open the box, it stands or walks, and I can start programming it using my computer."

## Companies / Projects Mentioned

- [[entities/k-scale-labs|K-Scale Labs]] — host company
- [[entities/mujoco|MuJoCo]] / MJX — GPU-accelerated physics simulation (Google)
- [[entities/nvidia|NVIDIA]] — Jetson Nano/AGX compute, Isaac SIM
- **Tesla Optimus** — competitor (~$60k, factory-focused)
- **Unitree** — competitor (~$40k humanoid)
- **Figure** — competitor (B2B factory robotics)
- **1X** — competitor
- [[entities/google-deepmind|Google DeepMind]] — robot soccer paper inspiration

## Related

- [[entities/jx-mo|JX Mo]] — speaker
- [[entities/k-scale-labs|K-Scale Labs]] — company
- [[concepts/open-source-humanoid-robotics|Open-Source Humanoid Robotics]] — the paradigm
- [[concepts/browser-based-robotics-simulation|Browser-Based Robotics Simulation]] — related simulation concept
- [[entities/mujoco|MuJoCo]] — physics engine used via MJX

## Open Questions

- How does the sim-to-real gap manifest for the K-Bot's walking policies trained in MJX?
- Can a $9k robot with Jetson compute compete with $60k+ robots with linear actuators on real-world tasks?
- What is the realistic timeline for VLA models to handle household tasks like folding clothes or dishwashing?

## Sources

- <https://www.youtube.com/watch?v=BS92RdBvI90>
