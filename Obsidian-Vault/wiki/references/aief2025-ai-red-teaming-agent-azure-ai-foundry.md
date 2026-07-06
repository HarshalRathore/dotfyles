---
title: 'AIEF2025 - AI Red Teaming Agent: Azure AI Foundry'
category: references
tags:
- ai-red-teaming
- azure-ai-foundry
- microsoft
- evaluation
- security
- aief2025
- pyrit
- semantic-kernel
aliases:
- AI Red Teaming Agent
- PyRIT SDK
- Azure AI red teaming
sources:
- 'https://www.youtube.com/watch?v=jhjkgramfiu'
summary: Microsoft demonstrates the AI Red Teaming Agent in Azure AI Foundry — a hosted SDK wrapping PyRIT for automated adversarial testing of AI applications and models via attack strategies and risk-cate...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
---

# AIEF2025 - AI Red Teaming Agent: Azure AI Foundry

*Nagkumar Arkalgud & Keiji Kanazawa, Microsoft*

A live demo and architecture overview of [[entities/microsoft-ai-red-team|Microsoft's AI Red Teaming Agent]], a hosted SDK and dashboard built on top of the [[entities/pyrit|PyRIT]] Python package, available within [[entities/azure-ai-foundry|Azure AI Foundry]]. The talk demonstrates how AI engineers can use the Red Teaming Agent to adversarially test applications and models for safety vulnerabilities, showing attack strategies, risk-category scanning, and guardrail evaluation. ^[extracted]

## Key Claims

- AI models can be tricked into producing harmful outputs through prompt engineering — e.g., embedding "how to loot a bank" in a life story preface or encoding it in [[concepts/attack-strategies|string reversal/base64]]. ^[extracted]
- 2025 is characterized as "the year of agents," and agent systems introduce new trust and safety concerns beyond single-shot LLM calls. ^[extracted]
- Engineers build bridges and dams that people trust; AI engineering must reach the same trust level through systematic testing and iteration. ^[extracted]
- "Trust is a team sport" — AI engineers depend on security and AI risk specialists (the Microsoft AI Red Team) to build trustworthy systems. ^[extracted]

## Demo: Red Teaming an Application

Arkalgud demonstrates red teaming a RAG application on PostgreSQL using a [[concepts/semantic-kernel-agent|Semantic Kernel agent]] that exposes the Red Team plugin. The agent:

1. Generates harmful prompts by category (e.g., violence)
2. Sends them to the target application
3. Evaluates the response for safety
4. Applies attack strategies like base64 encoding to bypass filters

The demo shows a [[concepts/rag-evaluation|RAG app]] running locally via Ollama (llama-based model). ^[extracted]

## Scan Architecture

The Red Teaming Agent supports two scanning modes:

### Scan Application
Set up an [[entities/azure-ai-foundry|Azure AI project]], initialize with URL and credentials, select risk categories, set the number of objectives (questions sent to the app), and define attack strategies. ^[extracted]

### Scan Model Directly
For systems that haven't built a full application — set the target as an [[entities/azure-openai|Azure OpenAI]] model config (model name, API key, deployment) and scan the raw model directly. ^[extracted]

## Attack Strategies

The SDK provides composable attack strategies:

- **Flip** — string reversal (e.g., "how to loot a bank" → "knabool ot woh") ^[extracted]
- **Base64 encoding** — encoding prompts to bypass text-based filters ^[extracted]
- **Caesar encoding** — character substitution cipher ^[extracted]
- **Composable strategies** — chaining converters (e.g., tense conversion → URL encoding) ^[extracted]

## Results: Guardrails Matter

Comparing results across models and guardrail configurations:

- [[entities/openai|GPT-4o nano]] with all guardrails enabled: very few attacks succeeded in a sample of 160 scans across 5 harm types ^[extracted]
- GPT-3.5 with no guardrails: 5 out of 40 scans succeeded in hate and fairness categories ^[extracted]
- GPT-4.1 nano with guardrails off: 25% of violence-category attacks succeeded, 20% of high-difficulty-complexity attacks succeeded ^[extracted]
- Applying guardrails to GPT-4.1 nano reduced attack success rate ^[extracted]
| Model | Guardrails | Sample Size | Attack Success |
|-------|-----------|-------------|----------------|
| GPT-4o nano | Enabled | 160 scans, 5 harm types | Very few ^[extracted] |
| GPT-3.5 | Disabled | 40 scans | 5/40 in hate and fairness ^[extracted] |
| GPT-4.1 nano | Disabled | ~100 scans | 25% violence, 20% high-difficulty-complexity ^[extracted] |
| GPT-4.1 nano | Enabled | ~100 scans | Reduced vs. disabled ^[extracted] |

Scan results are accessible via a dashboard URL with clickable data filtering and attack strategy details. ^[extracted]

## Framework: Engineering Trust

Kanazawa presents the broader framework:

1. **Risk mapping** — before production, map anticipated risks (agent type, data sources, trust boundaries)
2. **Guardrails & controls** — implement input/output content filters and [[concepts/prompt-shields|prompt shields]] against prompt-based attacks
3. **Evaluations** — run [[concepts/ai-red-teaming|AI red teaming]] alongside quality and risk/safety evaluators
4. **Agentic evaluators** — new evaluators specifically for agentic behavior (does the agent follow instructions?)
5. **Custom evaluators** — extend with organization-specific evaluation criteria

^[extracted]

## Q&A Highlights

- **Guardrails under the hood**: Content filters apply at both input and output — input filters catch things like CBR/toxic requests, output filters prevent the model from generating sexual or harmful content. Guardrails sit outside the model, wrapping the raw model with filtering layers. ^[extracted]

## Related

- [[entities/azure-ai-foundry]] — Platform hosting the Red Teaming Agent
- [[entities/microsoft-ai-red-team]] — The Microsoft team behind PyRIT and red teaming
- [[entities/pyrit]] — The Python package at the core of the Red Teaming Agent
- [[concepts/ai-evaluation-market-history]] — Broader evaluation market context
- [[concepts/ai-trust-pillars]] — Complementary trust framework
- [[concepts/azure-ai-risk-categories]] — The four harm categories (hate/fairness, violence, sexual, self-harm)
- [[concepts/combination-attack-strategies]] — Chaining converters for multi-layered attacks
- [[entities/ollama]] — Local inference engine used in the demo target app

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
