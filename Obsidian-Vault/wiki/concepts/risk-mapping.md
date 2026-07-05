---
title: "Risk Mapping"
category: concepts
tags:
  - risk-mapping
  - safety
  - ai-governance
  - risk-assessment
  - ai-red-teaming
aliases: [AI risk mapping, risk assessment AI, threat modeling AI]
relationships:
  - target: "[[concepts/ai-red-teaming]]"
    type: related_to
  - target: "[[concepts/layered-agent-safety]]"
    type: extends
sources:
  - "[[sources/watchv=jhjkgramfiu]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Risk Mapping

Risk mapping is the process of systematically identifying and cataloging the safety risks an AI system is likely to encounter before it reaches production. ^[extracted] It is the first step in [[entities/keiji-kanazawa|Keiji Kanazawa]]'s framework for engineering trust in AI systems. ^[extracted]

## Key Dimensions

Effective risk mapping considers: ^[extracted]

- **Agent type** — Is the system a single-shot LLM, a multi-step agent, or an agentic system with tool use? Each introduces different risk vectors.
- **Data sources** — Does the system use external data (e.g., web retrieval), internal customer data, or both? Each source type carries different privacy and safety risks.
- **Trust boundaries** — Where does the system interact with external actors, and what are the consequences of failure at each boundary?

## Purpose

Risk mapping informs which [[concepts/attack-strategies|attack strategies]] to test, which [[concepts/guardrails-content-filters|guardrails]] to implement, and which [[entities/azure-ai-foundry|risk categories]] to prioritize in evaluation. ^[inferred] It is the planning phase that precedes implementation of guardrails and execution of red teaming scans. ^[extracted]

## Framework Position

Risk mapping sits at the beginning of the trust engineering process: risk mapping → guardrails & controls → evaluations → agentic evaluators → custom evaluators. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
