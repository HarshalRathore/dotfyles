---
title: "Repetitive Migrations"
category: concepts
tags:
  - ai-agents
  - code-migration
  - software-engineering
  - aief2025
sources:
  - "[[sources/watchv=mi83but_23o]]"
summary: "Repetitive code migrations (JS-to-TS, framework upgrades) were the first AI agent use case with product-market fit. They require clear step-by-step execution across thousands of files — tedious for humans, reliable for agents."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Repetitive Migrations

**Repetitive migrations** are code transformation tasks that require applying a clear set of steps across many files — such as JavaScript-to-TypeScript conversion, Angular version upgrades, or Java version migrations.

## First Product-Market Fit

Repetitive migrations were the first AI agent use case to achieve broad product-market fit. In summer 2024, this was "the only product experience that had PMF in code" beyond tab completion.

## Why Agents Excel at Migrations

Migrations have the perfect characteristics for early AI agents:

1. **Massive scale** — Thousands of files need modification
2. **Clear steps** — Framework upgrade guides provide explicit instructions
3. **Repetitive pattern** — The same steps apply across many files
4. **Not purely deterministic** — No classical program can handle all edge cases
5. **Human-tedious** — Extremely boring and time-consuming for humans

## The Pattern

```
Human reads framework upgrade guide → Agent executes each step across all files
```

The agent goes file-by-file and executes each step from the migration guide, doing exactly what the instructions say.

## Key Requirements

- **Strong instruction following** — The agent must follow steps precisely
- **File-by-file reliability** — Consistent execution across thousands of files
- **Rollback capability** — Ability to undo changes if something goes wrong
- **Playbook system** — Structured step-by-step instruction format

## Beyond Migrations

While migrations were the first PMF use case, they represent only a narrow slice of software engineering. As Scott Wu noted, "a lot of software engineering does not fall under the category of literally just follow ten steps step by step." The field has since expanded to bug fixes, features, and cross-file diagnosis.

## Related Pages

- [[entities/devin]] — Agent that first achieved PMF with migrations
- [[entities/cognition]] — Company that solved migrations first
- [[concepts/playbook-pattern]] — System built for migration execution
- [[concepts/agent-capability-tiers]] — Tier 2 capability enabled by migrations
