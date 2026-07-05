---
title: "Map-Free Driving"
category: concepts
tags:
  - map-free
  - autonomous-driving
  - hd-maps
  - end-to-end
  - generalization
aliases:
  - mapless driving
  - no HD maps driving
sources:
  - "AIEF2025 - Waymo's EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM"
summary: "An autonomous driving approach that operates without HD (high-definition) maps, using only standard map data — enabled by foundation models that can understand road geometry from camera video alone."
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
  - target: "[[concepts/camera-only-driving]]"
    type: related_to
---

# Map-Free Driving

Map-free driving is an autonomous driving approach that operates without HD (high-definition) maps, using only standard map data (e.g., Google Maps) for navigation.

## HD Maps vs Standard Maps

**HD Maps** provide:
- Sub-meter precision road geometry
- Lane-level detail (lane count, width, markings)
- Traffic light and sign locations
- Curb and sidewalk geometry
- Requires manual surveying and constant updating

**Standard Maps** (Google Maps, etc.) provide:
- Turn-by-turn navigation
- Road names and addresses
- No lane-level precision
- No curb or traffic light geometry

## How Map-Free Works

A map-free system uses foundation models to understand road geometry from camera video alone:

1. **Visual road understanding** — the model learns to recognize lanes, intersections, traffic lights from video
2. **Routing guidance** — standard maps provide high-level directions (turn left at next intersection)
3. **Real-time adaptation** — the model adapts to road changes without map updates

## Advantages

1. **Scalability** — no HD map surveying needed for new cities
2. **Freshness** — no map staleness issues
3. **Cost** — eliminates HD map creation and maintenance
4. **Generalization** — foundation models adapt to unfamiliar road layouts

## Limitations

- **Less precise** — no sub-meter road geometry
- **Requires stronger models** — must infer road structure from video
- **Slower initial deployment** — needs some driving data in each new city

## Related

- [[concepts/end-to-end-driving]] — EMMA is map-free
- [[concepts/perception-prediction-planning]] — Traditional systems use HD maps
- [[concepts/camera-only-driving]] — Camera-only often paired with map-free
- [[entities/waymo]] — Waymo's production system uses HD maps; EMMA does not
