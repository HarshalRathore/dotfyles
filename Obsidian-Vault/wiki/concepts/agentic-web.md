---
title: "Agentic Web"
tags:
  - concept
  - agent
  - architecture
  - microsoft
  - interoperability
sources:
  - "[[sources/watchv=7hrw6rtxahc]]"
summary: "Vision of a world where AI agents interact with tools, models, and other agents across any cloud, company, or device — enabled by open protocols, cloud-to-edge deployment, and agent factories."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Agentic Web

The agentic web is a vision articulated by [[entities/asha-sharma|Asha Sharma]] ([[entities/microsoft|Microsoft]]) at AI Engineer World's Fair 2025: a world in which [[concepts/agentic-architecture|agents]] will interact with tools, models, and other agents regardless of cloud provider, which company built them, or which device the user chooses. ^[extracted]

## Three Forces Driving It

Sharma identifies three simultaneous transitions shaping the agentic web:

1. **[[concepts/peer-programming|Pair to peer programming]]** — AI evolves from autocomplete sidekick to genuine teammate, assigned tasks and operating autonomously in shared codebases. ^[extracted]
2. **Software factory to [[concepts/agent-factory|agent factory]]** — Instead of shipping binaries, teams ship behaviors — agents that can retrain, redeploy, and change after going live. ^[extracted]
3. **Cloud-only to [[concepts/local-first-ai-platform|local-first]]** — Models don't just live in data centers; they run on laptops, edge devices, bottling plants, and hospital systems. Local is a core platform capability, not a fork. ^[extracted]

## Enabling Infrastructure

- **Open protocols** — [[concepts/model-context-protocol|MCP]] (Model Context Protocol) and A2A (Agent-to-Agent) for cross-platform interop. ^[extracted]
- **[[concepts/model-ensemble-routing|Model switchboard]]** — Intelligent routing across thousands of open and proprietary models with security, reliability, and data residency guarantees. ^[extracted]
- **[[concepts/agent-evaluation-pipeline|CI/CD for agents]]** — Evaluation SDK, red teaming, and continuous observability built into the platform. ^[extracted]

## Related

- [[concepts/agentic-architecture]]
- [[concepts/orchestrator-worker-pattern]]
- [[concepts/multi-model-world]]
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma]]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
