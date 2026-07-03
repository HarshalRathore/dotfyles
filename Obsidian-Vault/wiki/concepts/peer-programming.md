---
title: "Peer Programming"
tags:
  - concept
  - ai
  - development
  - copilot
  - agent
  - workflow
aliases: [AI as teammate, copilot as peer, AI peer programming]
sources:
  - "AI Engineer World's Fair 2025 - Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft - https://www.youtube.com/watch?v=7Hrw6rtXaHc"
summary: "Evolution from pair programming (sidekick autocomplete) to peer programming — AI as a genuine teammate assigned tasks, operating in its own branch, and running tests to completion autonomously."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Peer Programming

Peer programming is the next stage of AI-assisted development: moving from [[concepts/copilot-first-strategy|pair programming]] (where AI provides inline suggestions that a human shepherds into working code) to peer programming (where AI acts as a genuine teammate assigned tasks it owns end-to-end). ^[extracted] The concept was articulated by [[entities/asha-sharma|Asha Sharma]] at AI Engineer World's Fair 2025. ^[extracted]

## How It Works

- Developers assign tasks to AI via GitHub Issues — AI operates in its own branch, writes code, runs tests, and creates a PR. ^[extracted]
- AI can delegate sub-tasks to specialized agents (e.g., [[entities/github-copilot|Copilot]] delegating to Amelie M-L-E for ML model building). ^[extracted]
- AI understands project patterns, domains, and team conventions through open-sourced extensions and grounded context. ^[extracted]

## Impact on Developer Role

- Developers spend more time on **architectural decisions** and orchestrating teams of agents. ^[extracted]
- **Maintenance** agents (like [[entities/microsoft|Microsoft]]'s Fosse) can continuously improve the codebase, competing with features less. ^[extracted]
- Workflow shifts from "shepherding syntax" to "building forward" rather than designing backward. ^[extracted]

## Relationship to Copilot-First Strategy

Peer programming complements the [[concepts/copilot-first-strategy|copilot-first strategy]]: you start with augmentation (copilot as sidekick), then extend toward autonomy (copilot as peer) as capability and trust grow. In peer programming, the AI still operates under human architectural guidance but owns execution independently. ^[inferred]

## Related

- [[concepts/agent-factory]]
- [[concepts/agentic-web]]
- [[entities/github-copilot]]
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma]]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
