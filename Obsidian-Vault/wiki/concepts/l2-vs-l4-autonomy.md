---
title: L2 vs L4 Autonomy
category: concepts
tags:
- autonomy-levels
- autonomous-driving
- sae-levels
- perception
- safety
aliases:
- autonomy levels
- SAE levels driving
sources:
- 'AIEF2025 - Waymo''s EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM'
summary: The gap between L2 (partial automation, driver must monitor) and L4 (high automation, no driver needed) in autonomous driving — demonstrated by the difference between drifting research prototypes a...
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/autonomous-driving]]'
  type: related_to
- target: '[[concepts/perception-prediction-planning]]'
  type: related_to
- target: '[[concepts/end-to-end-driving]]'
  type: related_to
---

# L2 vs L4 Autonomy

Autonomy levels in driving range from L0 (no automation) to L5 (full automation). The critical gap is between L2 and L4.

## L2: Partial Automation

L2 systems (e.g., NVIDIA's 2020 end-to-end research prototypes) can handle basic driving tasks like lane following but:

- Require continuous driver monitoring and intervention
- Exhibit drift and unpredictable behavior
- Cannot handle complex scenarios (pedestrians, cyclists, traffic lights reliably)
- Are not safe for rider-only deployment

## L4: High Automation

L4 systems (e.g., Waymo's production robotaxi) operate without any human driver:

- Navigate complex urban environments (downtown San Francisco)
- Handle pedestrians, cyclists, traffic lights, and crossroads
- Are demonstrably safe for public rider-only service
- Operate across multiple cities at scale

## The Gap

The difference between L2 and L4 is not incremental — it represents a qualitative shift in system capability. L4 requires:

- **Comprehensive perception** — understanding everything relevant to driving
- **Robust prediction** — anticipating future states accurately
- **Safe planning** — making correct driving decisions in all scenarios
- **Longtail coverage** — handling rare but critical edge cases

## Foundation Models and the Gap

Foundation models like Gemini are narrowing the gap between L2 research prototypes and L4 production systems by providing better generalization to rare scenarios. See [[concepts/foundation-models-autonomous-driving]].

## Related

- [[concepts/autonomous-driving]] — Autonomous driving overview
- [[entities/waymo]] — Production L4 operator
- [[concepts/perception-prediction-planning]] — The pipeline that enables L4
- [[concepts/longtail-scenarios]] — Longtail coverage is essential for L4
