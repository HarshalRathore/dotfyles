---
title: Azure AI Foundry
tags:
- entity
- platform
- microsoft
- agent-factory
- ai-platform
sources:
- 'https://www.youtube.com/watch?v=7hrw6rtxahc'
- 'https://www.youtube.com/watch?v=j4vpq2i0qze'
- 'AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls'
summary: Microsoft's enterprise AI agent platform with model catalog (10K+ models), intelligent routing, agent SDK, evaluation SDK (quality/NLP/risk evaluators, multimodal, configurable thresholds), and con...
provenance:
  extracted: 0.8
  inferred: 0.16
  ambiguous: 0.04
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
category: entities
---

# Azure AI Foundry

[[entities/microsoft|Microsoft]]'s enterprise [[concepts/agent-factory|agent factory]] platform for building, deploying, and managing AI agents from cloud to edge. ^[extracted]

## Scale

- 70,000+ customers on Foundry. ^[extracted]
- 50,000+ agents built every day using the platform's loop. ^[extracted]
- Access to 10,000+ open and proprietary models via intelligent [[concepts/model-ensemble-routing|switchboard routing]]. ^[extracted]

## Key Capabilities

- **Agent SDK** — Create agents with system prompts, tools (Bing grounding, file search, OpenAPI, [[concepts/model-context-protocol|MCP]] servers, connected agents), and multi-agent orchestration. ^[extracted]
- **Thread system** — Full transparency into every agent step: tool calls, prompts, tokens. Critical for debugging and auditing agent behavior. ^[extracted]
- **[[concepts/agent-evaluation-pipeline|Evaluation SDK]]** — Integrated into CI/CD pipelines to evaluate agents on every update. ^[extracted]
- **Azure AI Evaluation SDK** — Programmable bulk evaluation with quality evaluators (groundedness, fluency, coherence, relevance, similarity), classic NLP metrics (F1, BLEU, ROUGE), and risk/safety evaluators. Supports multimodal evaluation (text + images) with graded scoring and domain-specific threshold configuration. ^[inferred]
- **Red teaming agents** — Built-in adversarial testing. ^[extracted]
- **Risk categories** — Four predefined harm classes (hate/fairness, violence, sexual content, self-harm) with evaluators that map to each. All four included by default when no categories are selected. ^[extracted]
- **Continuous observability** — OpenTelemetry integration, no matter where the agent was built. ^[extracted]
- **[[concepts/agentic-rag|Agentic RAG]]** — Multi-shot iterative retrieval with 40% accuracy improvement on complex queries. ^[extracted]
- **Cloud-to-edge deployment** — Agents created in the cloud can run and reason locally on devices. ^[extracted]
- **Compatibility** — Works with LangChain agents, Crew AI agents, and A2A protocol agents. ^[extracted]

## AI Red Teaming Agent

The AI Red Teaming Agent is a hosted SDK wrapping [[entities/pyrit|PyRIT]] for automated adversarial testing of AI applications and models. ^[extracted] It supports two scanning modes: ^[extracted]

- **Application scanning** — Send adversarial prompts to a target application and evaluate responses
- **Direct model scanning** — Scan [[entities/azure-openai|Azure OpenAI]] model configs without a full application wrapper ^[extracted]

The agent demonstrates that guardrails materially reduce attack success: GPT-4o nano with guardrails enabled resisted 160 scans across 5 harm types, while GPT-3.5 without guardrails failed 5/40 in hate and fairness categories. ^[extracted]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU

