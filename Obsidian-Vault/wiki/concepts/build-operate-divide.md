---
title: "Build-Operate Divide"
category: concepts
tags:
  - ai
  - operations
  - product-development
  - reliability
  - methodology
sources:
  - "https://www.youtube.com/watch?v=1__v4ktv_gw"
summary: "The gap between AI product vision and operational reality where good product concepts fail to reach their potential due to operational challenges rather than technical limitations."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Build-Operate Divide

The build-operate divide is the gap between AI product vision and the operational reality of delivering reliable AI at scale. Coined by Jeremy (Freeplay) and Chris Hernandez (Chime) at AI Engineer World's Fair 2025, the term describes a systemic failure pattern: good AI product concepts fail to reach their full potential because of operational challenges, not because the product idea was wrong or the technology wasn't capable. ^[extracted]

## How It Manifests

1. **Prototype vs Production** — Teams can build impressive AI prototypes quickly (low barrier to entry in Gen AI), but hit a quality chasm moving from V1 to production-grade V2. ^[extracted]

2. **Iteration Velocity as Bottleneck** — Product quality becomes a direct function of iteration speed through monitoring, experimentation, testing, and evaluation. The operational overhead of moving through this loop becomes the limiting factor, not the AI capability itself. ^[extracted]

3. **Human Elbow Grease** — "To deliver high quality AI products, you actually need a ton of human elbow grease." ^[extracted] The operational reality contradicts the narrative of full automation.

4. **Skill and Role Gaps** — Traditional team structures (separate engineering, product, ops) don't map well to the Gen AI workflow. The emerging [[concepts/ai-quality-lead]] role represents an attempt to bridge this, but the role is not yet formalized. ^[extracted]

## Causes

- **Decreased barrier to entry** in Gen AI vs traditional ML means more teams build faster, but the operational infrastructure hasn't kept pace ^[extracted]
- **Increased iteration speed** amplifies the need for ops functions, because each iteration cycle generates evaluation data, human review tasks, and quality signals that must be managed ^[inferred]
- **Traditional ops teams were designed for audit, not iteration** — QA/CX teams historically scored past interactions; Gen AI needs them to shape future model behavior ^[extracted]

## Bridging the Divide

The talk identifies three levers for bridging the divide:
1. **Evals and human review** as integrated quality mechanisms, not afterthoughts
2. **An AI Quality Lead** role that combines domain expertise with systems thinking
3. **Evolving ops/CX teams** into model shapers and prompt testers ^[extracted]

## Related Concepts

- [[concepts/ai-iteration-loop]] — The mechanism by which teams cross the divide
- [[concepts/ai-quality-lead]] — The emerging role addressing the divide
- [[concepts/ai-ops-evolution]] — How operational teams transform to bridge the gap
- [[concepts/human-in-the-loop-regulated-ai]] — HITL as a key operational practice for quality
- [[concepts/evaluation-first-development]] — Evaluation methodology that accelerates iteration
- [[concepts/agent-reliability-challenge]] — The reliability problem that the divide exacerbates
- [[concepts/demo-driven-ai-exploration]] — The prototyping phase before the divide is encountered

## Sources

- [[references/build-operate-divide-freeplay-chime-2025|The Build-Operate Divide: Bridging Product Vision and AI Operational Reality — AI Engineer World's Fair 2025]]
