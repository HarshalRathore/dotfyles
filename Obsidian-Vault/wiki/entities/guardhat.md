---
title: Guardhat
tags:
- company
- iot
- worker-safety
- ai
- case-study
aliases:
- Guardhat worker safety
sources:
- 'https://www.youtube.com/watch?v=6tpm4m1yxhk'
summary: Worker safety company with an AI-driven IoT platform using wearable devices to predict and prevent incidents in hazardous environments. Case study for Telemetrak's X-TOPS trust framework where GPS...
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# Guardhat

Guardhat is a worker safety company that provides an AI-driven platform using IoT wearable devices to predict and prevent incidents in hazardous environments. The company served as a case study in the [[concepts/ai-trust-pillars|trustworthy AI]] presentation at AI Engineer World's Fair 2025 by [[entities/telemetrak|Telemetrak]]. ^[extracted]

## The Platform

Workers wear IoT devices that collect health data (vitals) and environmental data. This data is sent to a backend AI system that analyzes it in real time to predict when an incident is about to happen and prevent it. ^[extracted]

## The GPS Drift Problem

GPS data was one input to the AI platform, but it caused **70% false positive alerts**. Workers stopped reacting to alerts, creating a safety risk and liability issue for the company. Without a trust framework like [[concepts/x-tops|X-TOPS]], there was no system to detect the GPS drift. ^[extracted]

## Impact and Resolution

- Risk exposure: ~$2.5 million per site per year ^[extracted]
- Direct fine savings: $500,000 per year per site after resolution ^[extracted]
- Time to fix without X-TOPS: **8 months** ^[extracted]
- Time to fix with X-TOPS: **7 days** ^[extracted]
- Results: false alerts reduced, trust score improved, human-in-the-loop dashboards enabled operator intervention ^[extracted]

## Related

- [[concepts/silent-ai-failures|Silent AI Failures]] — The GPS drift was an undetected silent failure
- [[concepts/x-tops|X-TOPS]] — The framework used to solve the problem
- [[concepts/ai-trust-pillars|AI Trust Pillars]] — The principles behind the solution
- [[entities/sahil-yadav|Sahil Yadav]] — Former employee who worked on this problem

## Sources

- [[references/critical-ai-inference-cio-trust-telemetrak-2025|Critical AI Inference Your CIO Can Trust — AI Engineer World's Fair 2025]]
