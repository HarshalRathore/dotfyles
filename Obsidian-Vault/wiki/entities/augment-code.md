---
title: "Augment Code"
tags:
  - company
  - ai
  - developer-tools
  - enterprise
aliases:
  - Augment
  - Augment Agent
  - augmentcode.com
  - "https://www.youtube.com/watch?v=6NIr_cYPglk"
  - "AIEF2025 - Vibes won't cut it — Chris Kelly, Augment Code - https://www.youtube.com/watch?v=Dc3qOA9WOnE"
summary: "AI-assisted coding platform focused on enterprise codebases, featuring a proprietary context engine that lifts codebase knowledge for LLMs. Provides chat, agent, and remote agent modes for code understanding, testing, and modernization."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Augment Code

Augment Code (augmentcode.com) is an AI-assisted coding platform targeting enterprise developers working with large, complex codebases — particularly legacy code. It differentiates itself through a proprietary **context engine** that analyzes and lifts relevant codebase structure (imports, call graphs, cross-file relationships) to provide higher-quality inputs to language models. ^[extracted]

## Key Features

- **Context Engine:** Built over two years, a proprietary system that extracts the right knowledge from codebases rather than treating code as plain text. The core philosophy: quality of input determines quality of AI output, and code requires specialized understanding beyond what general text retrieval provides. ^[extracted]
- **Chat Mode:** Turn-by-turn question answering ideal for understanding unknown code, exploring codebase structure, and getting explanations of specific modules or functions.
- **Agent Mode (Auto):** Autonomous execution where the AI reads files, runs commands, writes code, and iterates without requiring permission per-step. Designed for larger, multi-step tasks.
- **Remote Agents:** Agents that continue running in the background even when the user closes their laptop, enabling parallel task execution.
- **Enterprise Security:** Customer-managed encryption keys, ISO 42001 (AI-specific ISO standard) certification, and IDE plugin architecture (IntelliJ, VS Code) that avoids forcing enterprises to switch tools. ^[extracted]

## Use Cases

- **Legacy code understanding** — Asking what ancient or unfamiliar code does (demonstrated with 1960s Apollo 11 Guidance Computer assembly code)
- **Code modernization** — Converting legacy language code to modern languages with test validation
- **Automated debugging** — Running simulations, fixing missing dependencies, iterating until successful

## Product Positioning

Augment positions itself as enterprise-first: designed for organizations with 10-year-old Java codebases still running on IntelliJ, with security and compliance requirements that consumer-grade AI coding tools don't address. ^[extracted]

## People

- [[entities/matt-ball|Matt Ball]] — Solutions Architect
- [[entities/forrest-brazeal|Forrest Brazeal]] — Partner/advocate (not an employee)
- [[entities/chris-kelly|Chris Kelly]] — Engineer

## Related

- [[references/to-the-moon-legacy-code-augment-agent]] — Talk demonstrating Augment Agent on Apollo guidance computer
- [[concepts/legacy-code-ai-agent-strategy|Legacy Code AI Agent Strategy]] — The methodology demonstrated using Augment
- [[concepts/agent-loop|Agent Loop]] — Pattern underlying agent mode
- [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment]] — Talk by Chris Kelly at AIEF2025
