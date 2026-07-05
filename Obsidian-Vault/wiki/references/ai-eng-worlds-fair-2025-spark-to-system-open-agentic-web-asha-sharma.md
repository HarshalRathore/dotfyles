---
title: "Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft"
tags:
  - reference
  - talk
  - ai-engineer
  - microsoft
  - agents
  - agentic-web
  - ai-eng-worlds-fair-2025
sources:
  - "[[sources/watchv=7hrw6rtxahc]]"
summary: "Asha Sharma (Microsoft) lays out the vision for the open agentic web — agents interacting across clouds, companies, and devices — and demonstrates Microsoft's Foundry platform for building, evaluating, and deploying multi-agent systems from cloud to edge."
provenance:
  extracted: 0.82
  inferred: 0.15
  ambiguous: 0.03
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft

> **Event:** AI Engineer World's Fair 2025
> **Speaker:** [[entities/asha-sharma|Asha Sharma]], Corporate Vice President, Core AI Platform, [[entities/microsoft|Microsoft]]
> **Format:** Keynote with live demos (Seth Juarez, Amanda, Elijah)
> **Source:** [YouTube](https://www.youtube.com/watch?v=7Hrw6rtXaHc)

## Summary

Asha Sharma argues the AI industry is moving through three simultaneous transitions: from [[concepts/copilot-first-strategy|pair to peer programming]] (AI as teammate, not sidekick), from software factory to [[concepts/agent-factory|agent factory]] (shipping behaviors not binaries), and from cloud-only to [[concepts/local-first-ai-platform|local-first AI]] (models running on-device with full control). The infrastructure to sustain this, she proposes, is a modular, open platform — Microsoft's Azure AI Foundry — that spans model selection through evaluation and runs from cloud to edge. ^[extracted]

## Key Concepts Introduced or Illustrated

### The Open Agentic Web
The vision of a world where [[concepts/agentic-architecture|agents]] interact with tools, models, and other agents regardless of cloud, company, or device — an interop-first future built on open protocols like [[concepts/model-context-protocol|MCP]] and A2A. ^[extracted]

### Peer Programming
[[concepts/copilot-first-strategy|GitHub Copilot]] evolves from autocomplete sidekick to a genuine teammate assigned tasks via GitHub Issues, operating in its own branch, running tests until completion. Developers shift from shepherding syntax to making architectural decisions and orchestrating teams of agents. ^[extracted]

### Agent Factory
The shift from shipping binaries and neat releases to shipping agents that can retrain, redeploy, and change after going live. [[entities/microsoft|Microsoft]]'s Foundry platform hosts 70,000+ customers and 50,000+ agents built daily. ^[extracted]

### Signal Loop (Signal Slew)
Fine-tuning models on real-world interaction data to personalize outcomes. The Dragon healthcare copilot took an off-the-shelf model, applied synthetic fine-tuning (modest improvement), then ran 650,000 A/B-tested interactions to reach 83% character acceptance rate — a dramatic quality jump driven by the [[concepts/signal-loop-ai|signal loop]]. ^[extracted]

### Agentic RAG
[[concepts/agentic-rag|Multi-shot, iterative RAG]] that plans, evaluates, and iterates rather than single-shot retrieval. [[entities/microsoft|Microsoft]] reports 40% improvement in accuracy on complex queries. ^[extracted]

### Multi-Agent Orchestration
The Build Events demo shows a voice-controlled [[concepts/orchestrator-worker-pattern|orchestrator agent]] that dynamically delegates to sub-agents (research agent, email agent, image generation agent, LinkedIn agent) — all built on Foundry with thread-level transparency. ^[extracted]

### Fosse
Codebase reasoning tool ("[[concepts/graphrag|GraphRack]] for your code base") that can explain, continuously improve, and fix areas of a codebase autonomously. ^[extracted]

### Model Switchboard
Intelligent routing across 10,000+ open and proprietary models with security, reliability, and data residency guarantees. [[concepts/model-ensemble-routing|Model ensembles]] where different models handle different jobs within the same product. ^[extracted]

### Local-First AI (Cloud to Edge)
Models don't just live in the cloud. Real applications at scale: bottling plants processing 100K sensors/sec locally, hospital systems summarizing longitudinal data (compliance/privacy), automotive models in tunnels. Local is not a fork — it is a core platform capability. Agents created in the cloud must run and reason locally. ^[extracted]

### CI/CD for Agents
The evaluation SDK integrated directly into the CI/CD pipeline so agents are evaluated every time updates are made. Combined with red teaming agents and OpenTelemetry-based continuous observability. ^[extracted]

## Demos

1. **Copilot Spaces** — Grounded Q&A about a project using files and instructions, answering project-specific questions with code references.
2. **Agentic Task Assignment** — A GitHub Issue for "write a README" is assigned to Copilot, which autonomously creates a PR with the full file.
3. **Deep Dive via Amelie (M-L-E)** — GitHub Copilot delegates to a Machine Learning Engineer agent that reasons about housing data and builds a model, self-correcting (string-in-float-field bug detected and fixed automatically).
4. **Build Events Multi-Agent App** — Voice-controlled orchestrator for event planning: researching angel investors, drafting personalized emails, generating Pixar-style images, posting LinkedIn content — all via sub-agents.
5. **Agent Creation in VS Code** — Azure AI Foundry extension showing threads, tool calls, system prompts, token usage, and the code to create agents with Bing grounding, file search, OpenAPI tools, and connected agents.

## Tools & Technologies

- **Azure AI Foundry** — [[entities/azure-ai-foundry|Microsoft]]'s agent platform with SDK, model catalog, evaluation, and monitoring
- **GitHub Copilot** — [[entities/github-copilot|Coding agent]] extended with agentic capabilities, grounded in project context
- **Fosse** — Codebase reasoning and continuous improvement agent
- **Amelie (M-L-E)** — Specialized ML engineering agent
- **Dragon** — Healthcare copilot for automated medical scribing
- **GigaPath** — Open pathology model using dilated attention for gigapixel slide understanding
- **Build Events** — Reference multi-agent application

## Protocols

[[entities/microsoft|Microsoft]] is investing in both [[concepts/model-context-protocol|MCP]] (Model Context Protocol) and A2A (Agent-to-Agent) protocols, aiming to support all open standards so developers can use their preferred tools.

## Related

- [[concepts/agentic-web]]
- [[concepts/peer-programming]]
- [[concepts/agent-factory]]
- [[concepts/agentic-rag]]
- [[concepts/signal-loop-ai]]
- [[concepts/local-first-ai-platform]]
- [[concepts/agent-evaluation-pipeline]]
- [[concepts/model-ensemble-routing]]
- [[entities/asha-sharma]]
- [[entities/microsoft]]
- [[entities/github-copilot]]
- [[entities/seth-juarez]]
- [[entities/azure-ai-foundry]]
- [[concepts/orchestrator-worker-pattern]]
- [[concepts/evaluation-first-development]]
- [[concepts/agent-loop]]
- [[concepts/agentic-architecture]]
- [[references/scaling-ai-agents-without-breaking-reliability-temporal-somal]] — Complementary talk on agent reliability
- [[references/state-of-startups-and-ai-2025-sarah-guo]] — Model commoditization context

## Sources

- [YouTube: Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft](https://www.youtube.com/watch?v=7Hrw6rtXaHc)
