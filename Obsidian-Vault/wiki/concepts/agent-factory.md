---
title: "Agent Factory"
tags:
  - concept
  - agent
  - platform
  - infrastructure
  - microsoft
  - deployment
aliases: [agent platform, agent build platform, agent deployment factory]
sources:
  - "AI Engineer World's Fair 2025 - Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft - https://www.youtube.com/watch?v=7Hrw6rtXaHc"
summary: "Platform for building, deploying, and managing AI agents as continuously-evolving behaviors rather than static binaries — with built-in evaluation, monitoring, and cloud-to-edge deployment."
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.48
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Agent Factory

The concept of shifting from a traditional software factory (shipping binaries and neat releases) to an agent factory (shipping agents that can retrain, redeploy, and change after going live). Articulated by [[entities/asha-sharma|Asha Sharma]] of [[entities/microsoft|Microsoft]] at AI Engineer World's Fair 2025. ^[extracted]

## Key Characteristics

- **Continuous deployment of behavior** — Agents are not versioned releases but live systems that improve through [[concepts/signal-loop-ai|signal loops]]. ^[extracted]
- **Modular platform** — [[entities/azure-ai-foundry|Azure AI Foundry]] as reference implementation: model catalog, agent SDK, evaluation pipeline, monitoring, and cloud-to-edge runtime. ^[extracted]
- **Multi-agent orchestration** — An agent factory supports building not just single agents but teams of agents that delegate and coordinate via [[concepts/orchestrator-worker-pattern|orchestrator-worker patterns]] and protocols like [[concepts/model-context-protocol|MCP]]/A2A. ^[extracted]
- **Built-in trust and security** — Aggressive evaluation SDK, red teaming agents, and continuous observability via OpenTelemetry. ^[extracted]

## Scale

[[entities/microsoft|Microsoft]]'s Foundry platform — a reference agent factory — hosts 70,000+ customers with 50,000+ agents built every day. ^[extracted]

## Related

- [[concepts/agentic-web]]
- [[concepts/peer-programming]]
- [[concepts/local-first-ai-platform]]
- [[concepts/agent-evaluation-pipeline]]
- [[entities/azure-ai-foundry]]
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma]]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
