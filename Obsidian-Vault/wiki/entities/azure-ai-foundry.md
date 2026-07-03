---
title: "Azure AI Foundry"
tags:
  - entity
  - platform
  - microsoft
  - agent-factory
  - ai-platform
sources:
  - "AI Engineer World's Fair 2025 - Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft - https://www.youtube.com/watch?v=7Hrw6rtXaHc"
summary: "Microsoft's enterprise AI agent platform with model catalog (10K+ models), intelligent routing, agent SDK, evaluation pipeline, and continuous observability. Hosts 70K+ customers, 50K+ agents built daily."
provenance:
  extracted: 0.80
  inferred: 0.16
  ambiguous: 0.04
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
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
- **Red teaming agents** — Built-in adversarial testing. ^[extracted]
- **Continuous observability** — OpenTelemetry integration, no matter where the agent was built. ^[extracted]
- **[[concepts/agentic-rag|Agentic RAG]]** — Multi-shot iterative retrieval with 40% accuracy improvement on complex queries. ^[extracted]
- **Cloud-to-edge deployment** — Agents created in the cloud can run and reason locally on devices. ^[extracted]
- **Compatibility** — Works with LangChain agents, Crew AI agents, and A2A protocol agents. ^[extracted]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
