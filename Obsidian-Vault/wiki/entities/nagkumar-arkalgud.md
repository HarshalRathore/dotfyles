---
title: "Nagkumar Arkalgud"
category: entities
tags:
  - person
  - microsoft
  - engineer
  - ai-red-teaming
  - aief2025
aliases: [Nagkumar Arkalgud, Nagkumar]
relationships:
  - target: "[[entities/azure-ai-foundry]]"
    type: uses
  - target: "[[entities/pyrit]]"
    type: uses
  - target: "[[concepts/ai-red-teaming]]"
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

# Nagkumar Arkalgud

[[entities/microsoft|Microsoft]] engineer on the [[entities/azure-ai-foundry|Azure AI Foundry]] product team, working within the same organization as [[entities/asha-sharma|Asha Sharma]]'s CVB org. ^[extracted]

## AI Red Teaming Agent

Arkalgud is the primary demo presenter for the [[entities/pyrit|PyRIT]]-powered AI Red Teaming Agent in Azure AI Foundry. ^[extracted] He demonstrated live red teaming of a [[concepts/agentic-rag|RAG application]] on PostgreSQL using a [[concepts/semantic-kernel-agent|Semantic Kernel agent]] that exposes the Red Team plugin for automated adversarial testing. ^[extracted]

His demo covered:

- Interactive red teaming mode: generating harmful prompts by category, sending them to a target app, evaluating responses, and applying attack strategies like base64 encoding. ^[extracted]
- Automated scan mode: running end-to-end scans against applications with configurable risk categories, objective counts, and composable attack strategies. ^[extracted]
- Direct model scanning: running scans against [[entities/azure-openai|Azure OpenAI]] model configs without a full application wrapper. ^[extracted]
- Guardrail evaluation: comparing attack success rates across models (GPT-4o nano, GPT-3.5, GPT-4.1 nano) with and without guardrails enabled, demonstrating that guardrails materially reduce attack success. ^[extracted]
- Demo target: a RAG application on PostgreSQL running a llama-based model locally via [[entities/ollama|Ollama]], demonstrating the Red Teaming Agent works with any query-in/string-out application, not just Azure-hosted systems. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
