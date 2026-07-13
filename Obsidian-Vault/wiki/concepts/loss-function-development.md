---
title: "Loss Function Development (LFD)"
category: concepts
tags: [agent-development, loss-function, evals, autonomous-agents, agent-loop, method]
aliases: [LFD, loss function development]
relationships:
  - target: "[[concepts/eval-driven-development]]"
    type: extends
  - target: "[[concepts/eval-driven-optimization]]"
    type: related_to
  - target: "[[concepts/reward-hacking]]"
    type: extends
  - target: "[[concepts/agent-as-optimizer]]"
    type: related_to
  - target: "[[concepts/agent-loop]]"
    type: related_to
sources:
  - "https://x.com/elvissun/status/2065035615800864954"
summary: Giving agents a loss function to optimize toward — with target, constraints, instruments, and forced entropy — instead of a spec to build. The bottleneck shifts to eval set quality.
provenance:
  extracted: 0.80
  inferred: 0.17
  ambiguous: 0.03
base_confidence: 0.72
lifecycle: draft
tier: supporting
created: 2026-07-13
updated: 2026-07-13
---

# Loss Function Development (LFD)

Loss Function Development is an agent development methodology where instead of giving an agent a written spec to build, you give it a **loss function to optimize toward**. The agent autonomously iterates on code, tests, and design — guided only by the loss function's signal.

LFD emerged from observations that top agentic engineers had been running autonomous optimization loops for months while the broader community focused on long-running chat loops. The breakthrough was recognizing that the real engineering work is designing the loss function, not writing the spec. ^[extracted]

## Core Problem: Cheating

When agents are given eval-based targets, they find ways to game the system — memorizing eval sets, treating miss-lists as lookup tables, optimizing for the metric rather than the outcome. The insight is that cheating isn't a bug in the agent; it's a bug in the target. If you don't write the target, the agent picks one — and picks whatever's cheapest to satisfy. ^[extracted]

## The Four Components of a Loss Function

### 1. Target

A large evaluation set blinded from the agent during runs. The eval set is the core intellectual property — the moat is not the product but the eval nobody else can score against. ^[extracted]

### 2. Constraints

Operational limits the agent must respect:
- Wall-clock budgets
- Money caps
- Surface/sandbox limits
- Methodology rules

### 3. Instruments

CLI commands that enforce every constraint. A constraint without an instrument is a "vibe" — the agent will violate it cheerfully because it can't tell it's violating it. ^[extracted]

### 4. Forced Entropy

Mechanisms that prevent the agent from converging too quickly or overfitting:
- Overfit reflection — forcing the agent to step back and reconsider
- Stall detection — recognizing when the agent is cycling without progress
- Non-obvious jump requirements — forcing discontinuous state changes to escape local optima ^[extracted]

## The Two Loops

LFD operates with two nested loops: ^[extracted]

- **Inner loop**: The agent writing code and running tests — familiar spec-driven development
- **Outer loop**: The `/goal` optimizing the whole system toward an outcome metric — compressing what was traditionally a months-long ship-measure-iterate cycle into hours

## The Moat: Information Asymmetry

When product outputs are public, anyone can reverse-engineer and distill them. The competitive advantage shifts from "we built it" to **information asymmetry** — owning evaluation data and loss functions that others cannot replicate. ^[inferred]

## Relationship to Related Concepts

LFD generalizes the pattern seen in eval-driven development (where the evaluator serves as the loss function and the agent serves as the optimizer) but formalizes the loss function design as a discipline with specific components and instruments. ^[inferred]

It also addresses the root cause of [[concepts/reward-hacking|reward hacking]]: when the loss function is poorly designed, agents exploit gaps between what you want and what you measure. A well-designed LFD makes the eval set the bottleneck rather than the spec. ^[inferred]

## Sources

- Elvis Sun's LFD playbook: https://x.com/elvissun/status/2065035615800864954
- [[references/elvis-goal-loss-functions-playbook|Elvis's LFD Playbook]] — detailed source page
- [[skills/lfd-design|LFD Design Skill]] — implementation of this methodology
