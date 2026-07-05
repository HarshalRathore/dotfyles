---
title: "Critical AI Inference Your CIO Can Trust — Sahil Yadav, Hariharan Ganesan, Telemetrak"
tags:
  - reference
  - talk
  - ai-eng-fair-2025
  - trust
  - governance
  - enterprise
sources:
  - "[[sources/watchv=6tpm4m1yxhk]]"
summary: "Telemetrak presents a three-pillar framework for trustworthy enterprise AI inference — explainability, traceability, and adaptive guardrails — operationalized via X-TOPS (extended MLOPS), with metrics for quantifying AI trustworthiness and a Guardhat case study on reducing false positives from 70% to near zero."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Critical AI Inference Your CIO Can Trust — Sahil Yadav, Hariharan Ganesan, Telemetrak

> **Event:** AI Engineer World's Fair 2025
> **Speakers:** [[entities/sahil-yadav|Sahil Yadav]] and [[entities/hariharan-ganesan|Hariharan Ganesan]], [[entities/telemetrak|Telemetrak]]
> **Source:** [YouTube](https://www.youtube.com/watch?v=6Tpm4m1YxHk)

## Overview

Sahil Yadav and Hariharan Ganesan of Telemetrak present a framework for building trustworthy AI inference systems in enterprise environments. Drawing on 10 years of deploying AI across health monitoring, industrial IoT, and telecom network automation, they identify a critical gap: 78% of companies are adopting AI, but only 11% are focused on AI governance. ^[extracted]

The talk centers on three pillars of trustworthy AI — explainability, traceability, and adaptive guardrails — operationalized through a framework called X-TOPS (extended MLOPS), with two key metrics (MT-T-R-E and Trust Adjusted Risk & Dollars) for quantifying trustworthiness. A case study from [[entities/guardhat|Guardhat]], a worker safety company, demonstrates the framework in action. ^[extracted]

## The Trust Gap

- McKinsey reports 78% of companies adopting AI; Eva research reports 95% investing in AI. ^[extracted]
- Only 11% of companies are focused on AI governance and safe practices. ^[extracted]
- This leaves a **67% gap** between AI adoption and AI governance. ^[extracted]
- These are **silent failures** — hard to quantify ahead of time, hard to detect, but worth millions or billions over time. ^[extracted]

## Three Pillars of Trustworthy AI

Talk's pillars for mission-critical AI (analogous to safety principles in aircraft, energy grids, banking):

1. **Explainability** — Every important decision should come with a simple English explanation. End users, decision makers, and auditors must be able to act on the information without needing a data scientist to translate. ^[extracted]
2. **Traceability** — Like a flight recorder. Every data point and every change is digitally signed and trackable. Compare to a FedEx package: from warehouse to doorstep, every step is trackable. ^[extracted]
3. **Adaptive Guardrails** — Smart guardrails that adjust to new situations. If the AI system starts to drift or make wrong decisions, the system should slow down, change course, or call a human for help. Analogous to lane-assist for AI. ^[extracted]

All three pillars rest on the bedrock of **verifiable traceability** — digitally signed data and change tracking throughout the lifecycle. ^[extracted]

## X-TOPS: Extended MLOPS

X-TOPS is proposed as an evolution beyond standard MLOPS — "MLOPS with built-in conscience and direct line of human oversight." ^[extracted] Key distinctions from MLOPS:

| Dimension | Standard MLOPS | X-TOPS |
|-----------|---------------|--------|
| Guardrails & Policies | IAM/security policies | Dynamic AI-aware guardrails understanding context, blocking risky decisions |
| Monitoring & Metrics | Standard MLOPS metrics | Dedicated trust-specific dashboards understandable by leadership and boards |
| Human Feedback | Mostly ad-hoc | Click-to-fix workflows — structured fast lane for human review and model correction |
| Traceability | Basic logging | Verifiable, digitally signed, full lifecycle traceability |
| Explainability | Optional | Embedded actionable intelligibility — models learn to explain themselves |

X-TOPS is presented as a **journey, not a switch flip** — building on existing MLOPS foundations with an integrated trust layer. ^[extracted]

## Metrics

### MT-T-R-E (Mean Time to Resolve Explainable Errors)

The time it takes to understand why an unexpected AI behavior happened and deploy a fix. Faster MT-T-R-E means a more agile team, fewer defects, and quicker problem resolution. ^[extracted]

In the [[entities/guardhat|Guardhat]] case study, MT-T-R-E was reduced from 8 months to 7 days using the X-TOPS framework. ^[extracted]

### Trust Adjusted Risk & Dollars

A metric that puts a price tag on what happens when trust breaks — fines, lost customers, damaged reputation. If AI keeps failing or remains a black box, this metric quantifies the value of trust. ^[extracted]

## Case Study: Guardhat

Guardhat is a worker safety company with an AI-driven platform using IoT wearable devices. Workers wear devices that collect health and environmental data, routed to a backend AI system for real-time analysis and incident prediction. ^[extracted]

**The Problem:** GPS data was one input to the AI platform, causing 70% false positive alerts. Workers stopped reacting to alerts, creating a safety risk and liability issue. Without the X-TOPS framework, there was no system to detect GPS drift. ^[extracted]

**The Solution:** Applying X-TOPS day zero → an ignored alert triggers attribution telemetry that flags the anomaly by day two → a solution is deployed by day seven (fixing the GPS drift or rerouting around it). ^[extracted]

**Results:** False alerts came down, trust score went up, telemetry enabled understanding of why inferences were made, and human-in-the-loop dashboards notified operators who could retrain the model. ^[extracted]

**Business Impact:** 
- Risk exposure: ~$2.5 million per site per year ^[extracted]
- Direct savings: $500,000 per year per site in fines ^[extracted]
- Indirect benefits from preventing incidents the AI was designed to catch ^[extracted]

## Key Quotes

> "There's been one question that has been asked all along, all this time: can we trust AI?" — Sahil Yadav ^[extracted]

> "These are silent failures. You cannot quantify the impact of these failures ahead of time. You cannot see them coming ahead of time, but they are worth millions and billions of dollars over time." — Sahil Yadav ^[extracted]

> "AI has to show its work. Every important decision shouldn't be a mystery." — Hariharan Ganesan ^[extracted]

> "The challenge is adopting X-TOPS is like a journey. It's not a flip of a switch." — Hariharan Ganesan ^[extracted]

## Related Pages Created from This Source

- [[concepts/ai-trust-pillars|AI Trust Pillars]]
- [[concepts/x-tops|X-TOPS (Extended MLOPS)]]
- [[concepts/silent-ai-failures|Silent AI Failures]]
- [[entities/sahil-yadav|Sahil Yadav]]
- [[entities/hariharan-ganesan|Hariharan Ganesan]]
- [[entities/telemetrak|Telemetrak]]
- [[entities/guardhat|Guardhat]]

## Sources

- [YouTube: Critical AI Inference your CIO can Trust — AI Engineer World's Fair 2025](https://www.youtube.com/watch?v=6Tpm4m1YxHk)
