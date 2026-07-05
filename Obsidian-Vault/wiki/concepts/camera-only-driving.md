---
title: "Camera-Only Driving"
category: concepts
tags:
  - camera-only
  - autonomous-driving
  - lidar
  - sensors
  - end-to-end
aliases:
  - vision-only driving
  - camera-based autonomous driving
sources:
  - "AIEF2025 - Waymo's EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM"
summary: "An autonomous driving approach that uses only cameras (no LiDAR, radar) for perception — enabled by foundation models that can reason about 3D spatial relationships from 2D video alone."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/end-to-end-driving]]"
    type: enables
  - target: "[[concepts/perception-prediction-planning]]"
    type: related_to
  - target: "[[concepts/map-free-driving]]"
    type: related_to
---

# Camera-Only Driving

Camera-only driving is an autonomous driving approach that uses only cameras for perception, eliminating the need for LiDAR, radar, and other specialized sensors.

## How It Works

A camera-only system uses:

- **8 cameras** covering 360° around the vehicle
- **Foundation models** (e.g., Gemini) that can reason about 3D spatial relationships from 2D video
- **End-to-end models** that map camera video directly to driving decisions

## Advantages

1. **Cost** — cameras are significantly cheaper than LiDAR
2. **Simplicity** — fewer sensors to calibrate, maintain, and fuse
3. **Foundation model compatibility** — Gemini is a camera model, naturally suited for camera-only input
4. **Human-like perception** — mirrors how human drivers perceive the world

## Comparison to Multi-Sensor Systems

Traditional autonomous systems (e.g., Waymo's production system) use:

- LiDAR for precise 3D distance measurement
- Radar for velocity detection
- Cameras for visual understanding
- HD maps for road geometry priors

Camera-only systems eliminate LiDAR, radar, and HD maps, relying entirely on visual understanding from foundation models.

## Limitations

- **No direct depth measurement** — depth must be inferred from visual cues
- **Weather sensitivity** — cameras perform poorly in fog, heavy rain, snow
- **Lighting dependency** — low-light conditions reduce camera quality
- **Requires stronger models** — foundation models must be capable enough to compensate for lack of direct sensor data

## Related

- [[concepts/end-to-end-driving]] — EMMA is camera-only
- [[concepts/perception-prediction-planning]] — Traditional systems use multi-sensor fusion
- [[concepts/map-free-driving]] — Camera-only often paired with map-free approach
- [[entities/gemini]] — Gemini is a camera model
