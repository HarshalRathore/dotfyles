---
title: "Agentic Evaluators"
category: concepts
tags:
  - evaluators
  - agents
  - evaluation
  - azure-ai-foundry
  - microsoft
aliases: [agent evaluators, agentic evaluation, agent behavior evaluation]
relationships:
  - target: "[[concepts/azure-ai-evaluation-sdk]]"
    type: extends
  - target: "[[concepts/agent-evaluation-pipeline]]"
    type: related_to
sources:
  - "[[sources/watchv=jhjkgramfiu]]"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Agentic Evaluators

Agentic evaluators are a specialized class of evaluation metrics designed specifically for AI agent systems, as distinct from single-shot LLM evaluations. ^[extracted] They were introduced by [[entities/microsoft|Microsoft]] as part of the [[entities/azure-ai-foundry|Azure AI Foundry]] evaluation suite. ^[extracted]

## Purpose

Traditional evaluators assess individual model responses (groundedness, fluency, relevance). Agentic evaluators assess agent-level behavior: ^[extracted]

- Does the agent follow instructions correctly?
- Does the agent use tools appropriately?
- Does the agent maintain safety constraints across multi-step interactions?

## Position in the Evaluation Stack

Agentic evaluators sit alongside quality evaluators, risk/safety evaluators, and [[concepts/ai-red-teaming|red teaming]] as one layer in the broader evaluation framework: ^[extracted] quality evals → risk/safety evals → agentic evals → custom evals. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
