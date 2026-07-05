---
title: "Cognition"
category: entities
tags:
  - ai-agents
  - software-engineering
  - ai-coding
  - aief2025
sources:
  - "[[sources/watchv=mi83but_23o]]"
summary: "Company that built Devin, the first widely-adopted AI software engineering agent. Founded by Scott Wu, launched late 2023. PMF initially found in repetitive code migrations before expanding to general bug fixes and features."
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Cognition

Cognition is the company behind **Devin**, the first widely-adopted AI software engineering agent. Founded by Scott Wu, the company launched Devin in late 2023.

## Product Evolution

Cognition's journey with Devin reveals a pattern in AI agent adoption:

1. **Repetitive migrations** (summer 2024) — The first product-market fit use case. JavaScript-to-TypeScript, Angular version upgrades, Java version migrations. Tasks requiring thousands of files to be processed through clear step-by-step instructions.
2. **Isolated bug fixes and features** (fall 2024) — Agents capable of handling intern-level tasks: "list currently selected items at the top of this dropdown." Changes contained to one or two files.
3. **Cross-file diagnosis and fixes** (late 2024) — Agents working across multiple files, diagnosing bugs, making changes spanning hundreds of lines.

## Key Systems Built

- **Playbooks** — A system for outlining clear step-by-step instructions that Devin follows reliably, designed specifically for repetitive migration tasks.
- **Repository snapshots** — The ability to set up, snapshot, reload, and roll back repository states, enabling clean remote VM environments for agent execution.
- **Agent memory/knowledge** — Systems for maintaining learnings across repeated tasks, improving the agent's performance on each subsequent run.

## Related Pages

- [[entities/scott-wu]] — Founder and CEO
- [[entities/devin]] — The AI agent product
- [[concepts/moore-law-for-ai-agents]] — Moore's Law for AI agents framework
- [[concepts/playbook-pattern]] — Playbook pattern for step-by-step execution
- [[concepts/agent-memory-knowledge]] — Agent memory and knowledge retention
