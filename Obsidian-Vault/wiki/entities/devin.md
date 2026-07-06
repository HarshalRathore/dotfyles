---
title: "Devin"
category: entities
tags:
  - ai-agent
  - software-engineering
  - ai-coding
  - aief2025
  - cognition
sources:
  - "https://www.youtube.com/watch?v=mi83but_23o"
summary: "First widely-adopted AI software engineering agent by Cognition. Evolved from tab completion to full agentic coding across capability tiers, with PMF initially found in repetitive code migrations."
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

# Devin

**Devin** is an AI software engineering agent built by **Cognition**, founded by Scott Wu. Launched in late 2023, Devin was the first product to achieve mainstream product-market fit in agentic coding.

## Capability Evolution

Devin's capabilities have evolved through distinct tiers, each representing a step change in what the agent can reliably accomplish:

### Tier 1: Tab Completion (Late 2023)
The only product experience with PMF in code at launch — predicting the next line or block. Essentially autocomplete on steroids.

### Tier 2: Repetitive Migrations (Summer 2024)
The first broad adoption use case. Devin could reliably execute step-by-step migrations across thousands of files: JavaScript-to-TypeScript, Angular version upgrades, Java version migrations. Required strong instruction following via the **Playbook** system.

### Tier 3: Isolated Bug Fixes and Features (Fall 2024)
Devin could handle intern-level tasks — "list currently selected items at the top of this dropdown." Changes typically contained to one or two files but required repo setup, linting, and CI execution.

### Tier 4: Cross-File Diagnosis and Fixes (Late 2024)
Devin working across multiple files, diagnosing bugs, understanding code as a hierarchy (not just text), leveraging call hierarchies, language servers, and git commit history for context.

## Key Systems

- **Playbooks** — Step-by-step instruction system for reliable migration execution
- **Repository snapshots** — Set up, snapshot, reload, and roll back repository states for clean agent environments
- **Agent memory** — Maintain learnings across repeated tasks to improve future performance

## Related Pages

- [[entities/cognition]] — Company that built Devin
- [[entities/scott-wu]] — Founder and CEO
- [[concepts/moore-law-for-ai-agents]] — Moore's Law for AI agents framework
- [[concepts/agent-capability-tiers]] — Tiered evolution of agent capabilities
- [[concepts/playbook-pattern]] — Playbook pattern for step-by-step execution
