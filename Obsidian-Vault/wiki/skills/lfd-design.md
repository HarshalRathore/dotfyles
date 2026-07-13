---
title: "LFD Design — Loss Function Development Skill"
category: skills
tags: [skill, loss-function, agent-development, evals, autonomous-agents]
aliases: [lfd-design, loss function design]
relationships:
  - target: "[[concepts/loss-function-development]]"
    type: implements
  - target: "[[concepts/eval-driven-development]]"
    type: relates_to
sources:
  - "https://github.com/elvisun/loss-function-development"
summary: A skill that observes your agent harness, reverse-engineers specs from reference products, builds eval sets, and emits a goal.md loss function ready to launch autonomous agent loops.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-13
updated: 2026-07-13
---

# LFD Design — Loss Function Development Skill

The `lfd-design` skill is a structured process for designing loss functions for long-running autonomous agent loops. It transforms reference products into actionable eval sets and goal specifications.

## What It Does

The skill takes an existing product or reference system and produces a complete loss function development package: ^[extracted]

1. **Observes your harness** — understands what tools and agent capabilities are available
2. **Reverse-engineers specs from reference products** — studies existing products to understand the spec they were built to
3. **Builds evaluation sets by mining public artifacts** — creates eval/dev and eval/holdout sets from publicly available evidence
4. **Generates and verifies harness** — produces scoring scripts and capacity-cap checks
5. **Red-teams its own draft for cheats** — proactively finds ways the agent could game the eval
6. **Emits a `goal.md` ready to launch** — the complete loss function specification

## Output Files

The skill produces a structured directory: ^[extracted]

| File | Purpose |
|---|---|
| `goal.md` | The loss function — target, constraints, instruments, forced entropy |
| `spec.md` | System design + test cases |
| `harness/score.sh` | Task-specific scorer |
| `harness/lint.sh` | Capacity-cap and eval-overlap checks |
| `harness/probe.sh` | Perturbed eval variants for memorization detection |
| `harness/status.sh` | Per-step wall-clock, score history, spend tracking |
| `eval/dev/` | Scored freely during run (inputs visible, answers blinded) |
| `eval/holdout/` | Scored rarely, aggregate-only; acceptance lives here |
| `LOG.md` | Iteration log |

## Structure

```
skills/lfd-design/
├── SKILL.md
└── references/
    ├── cheat-museum.md    — observed cheats and fences that closed them
    ├── goal-template.md
    └── log-template.md
```

## Source

- GitHub: https://github.com/elvisun/loss-function-development (167 stars, 12 forks, MIT license)
- Described by [[entities/elvis-sun|Elvis Sun]] as "a skill for loss-function-development — designs loss functions for long-running autonomous agent loops." ^[extracted]
