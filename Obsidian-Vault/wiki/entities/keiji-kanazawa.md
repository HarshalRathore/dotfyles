---
title: "Keiji Kanazawa"
category: entities
tags:
  - person
  - microsoft
  - azure-ai-foundry
  - ai-red-teaming
  - aief2025
aliases: [Keiji Kanazawa, KG]
relationships:
  - target: "[[entities/azure-ai-foundry]]"
    type: uses
  - target: "[[entities/microsoft-ai-red-team]]"
    type: related_to
  - target: "[[concepts/layered-agent-safety]]"
    type: related_to
sources:
  - "[[sources/watchv=jhjkgramfiu]]"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Keiji Kanazawa

[[entities/microsoft|Microsoft]] product manager on the [[entities/azure-ai-foundry|Azure AI Foundry]] team. Works in the same organization as [[entities/asha-sharma|Asha Sharma]]'s CVB org. ^[extracted]

## AI Red Teaming Framework

Kanazawa presents the broader framework for engineering trust in AI systems, positioning [[concepts/ai-red-teaming|AI red teaming]] as one component of a systematic safety process: ^[extracted]

1. **Risk mapping** — before production, map anticipated risks based on agent type, data sources, and trust boundaries. ^[extracted]
2. **Guardrails & controls** — implement input/output content filters and [[concepts/prompt-shields|prompt shields]] against prompt-based attacks. ^[extracted]
3. **Evaluations** — run AI red teaming alongside quality and risk/safety evaluators from the [[entities/azure-ai-foundry|Azure AI Evaluation SDK]]. ^[extracted]
4. **Agentic evaluators** — new evaluators specifically for agentic behavior (e.g., does the agent follow instructions?). ^[extracted]
5. **Custom evaluators** — extend with organization-specific evaluation criteria. ^[extracted]

He emphasizes the engineering mindset: trust is built through systematic testing, iteration, and checking — the same approach used for bridges, dams, trucks, and trains. ^[extracted] His key framing is "trust is a team sport" — AI engineers depend on security and AI risk specialists to build trustworthy systems. ^[extracted]

In Q&A, he clarified that Azure AI Foundry guardrails sit outside the model, wrapping the raw model with input and output content filters. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
