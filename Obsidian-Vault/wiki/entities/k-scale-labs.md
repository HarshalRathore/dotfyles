---
title: K-Scale Labs
tags:
- company
- robotics
- open-source
- hardware
- humanoid
aliases:
- K-Scale
- KScale Labs
- K-Skill Labs
sources:
- 'https://www.youtube.com/watch?v=bs92rdbvi90'
summary: Palo Alto-based startup (15 people) building fully open-source humanoid robots. Creators of K-Bot ($8,999), Z-Bot, KOS robotics OS, and KOS Sim digital twin. MIT-licensed hardware + software + ML s...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# K-Scale Labs

K-Scale Labs (occasionally transcribed as "K-Skill Labs") is a 15-person startup based in Palo Alto, California, building fully open-source humanoid robots — from hardware CAD and PCB designs to firmware, software, and ML models. They position themselves as the first potential US consumer humanoid robotics company, targeting developers and early adopters rather than enterprise/factory customers. ^[extracted]

## Products

### K-Bot
- Full-size humanoid robot (4'11"), full aluminum body, $8,999 pre-order (delivery October 2026). ^[extracted]
- 5-DOF arms (upgradeable to 7-DOF), MIT Cheetah actuators, up to 250 TOPS compute (Jetson Nano/AGX options). ^[extracted]
- Sensor-complete: cameras, displays, audio modules, IMUs. ^[extracted]
- VR teleoperation, RL-based locomotion controller, local manipulation policies. ^[extracted]
- ~2 hour battery life with pass-through charging. ^[extracted]

### Z-Bot
- 1.5ft miniature humanoid robot, same locomotion and software stack as K-Bot. ^[extracted]
- Started as a hackathon project, became popular on Twitter/WeChat, being brought to mass manufacturing. ^[extracted]
- Fully open-sourced. ^[extracted]

## Software Stack

- **KOS** — K-Scale Operating System: Python/Rust SDK with gRPC API, installable via `pip install kos`. Provides a simple, programming-first interface to the robot. ^[extracted]
- **KOS Sim** — digital twin simulation environment using the exact same gRPC interface; switch between sim and real by changing the robot's IP address. ^[extracted]
- **Custom Rust firmware** — powers the robot hardware directly. ^[extracted]
- **RL training framework** — GPU-accelerated via MJX (MuJoCo JAX), trains locomotion PPO policies in 1-2 hours on a local GPU. ^[extracted]
- **VLA model integration** — supports Vision-Language-Action policies for high-level task control. ^[extracted]

## Strategy

- **Open source** — entire stack MIT-licensed, community-driven development with ~5,000 active Discord members, public bounties, bi-monthly hackathons. ^[extracted]
- **Consumer-first** — bets on consumer/household market rather than B2B factory sales (differentiating from Tesla Optimus, Figure, Unitree). ^[extracted]
- **Modular hardware** — swappable end effectors, upgradeable parts (legs, arms, head can be re-screwed with newer versions). OTA software updates. ^[extracted]
- **Developer ecosystem** — envisions an app store model where developers write and share Python applications for the robot. ^[extracted]
- **Anti-ROS2** — deliberately avoids ROS/ROS2 complexity; uses a simpler model-based, policy-based architecture with gRPC communication. ^[extracted]

## Related

- [[entities/jx-mo|JX Mo]] — founding engineer
- [[entities/mujoco|MuJoCo]] — physics engine used via MJX for RL training
- [[entities/nvidia|NVIDIA]] — Jetson compute modules used in K-Bot
- [[concepts/open-source-humanoid-robotics|Open-Source Humanoid Robotics]] — core paradigm
- [[concepts/browser-based-robotics-simulation|Browser-Based Robotics Simulation]] — related simulation approach

## Sources

- [[references/aief2025-open-source-humanoid-robot-k-scale-labs|Your Personal Open-Source Humanoid Robot for $8,999 — JX Mo, K-Scale Labs (AI Engineer World's Fair 2025)]]
