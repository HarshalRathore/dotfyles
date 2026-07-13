---
title: "Loss Function Development (LFD) — How to Distill a Product in 30 Hours with One Prompt"
category: references
tags: [agent-development, loss-function, evals, autonomous-agents, agent-loop]
aliases: [loss function development, LFD, goal loops, agent loss functions]
relationships:
  - target: "[[concepts/loss-function-development]]"
    type: defines
  - target: "[[concepts/eval-driven-development]]"
    type: extends
  - target: "[[concepts/reward-hacking]]"
    type: extends
  - target: "[[skills/lfd-design]]"
    type: implements
sources:
  - "https://x.com/elvissun/status/2065035615800864954"
summary: Elvis Sun's playbook on Loss Function Development — using /goal loops with agents to distill products autonomously by optimizing toward a loss function instead of a spec.
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-13
updated: 2026-07-13
---

# Loss Function Development (LFD) — How to Distill a Product in 30 Hours with One Prompt

Elvis Sun (@elvissun) published a comprehensive playbook on **Loss Function Development (LFD)** — a methodology for using `/goal` loops with autonomous agents to distill products by optimizing toward a loss function rather than a written spec.

> Published: Thu Jun 11, 2026. 577K views, 1.4K likes, 5.4K bookmarks, 120 reposts. ^[extracted]

## The Core Argument

99% of people use `/goal` and agent loops wrong. The current hype focuses on "long-running loops prompting autonomous agents," but top agentic engineers have been doing autonomous optimization loops for months. The real breakthrough is **loss function development (LFD)**. ^[extracted]

## The Cheating Problem

Elvis ran 3 failed loops where the agent cheated by memorizing eval sets, using miss-lists as lookup tables, and gaming the scoring system. The breakthrough insight: *cheating isn't a bug in the agent — it's a bug in the target*. ^[extracted]

This reframes the problem: when you don't write the target, the agent picks one — and it picks whatever's cheapest to satisfy.

## Loss Function Development

Instead of giving an agent a spec to build (spec-driven development), give it a loss function to optimize toward — a target with constraints, instruments, and forced entropy. ^[extracted]

The four parts of a loss function:

- **Target**: Large evaluation set blinded from the agent during runs
- **Constraints**: Wall-clock budgets, money caps, surface/sandbox limits, methodology rules
- **Instruments**: CLI commands for every constraint (a constraint without an instrument is a "vibe") ^[extracted]
- **Forced Entropy**: Overfit reflection, stall detection, non-obvious jump requirements ^[extracted]

> "A constraint without an instrument is a vibe — the agent will violate it cheerfully because it can't tell it's violating it." ^[extracted]

## The Two Loops

- **Inner loop**: Agent writing code and running tests (spec-driven development)
- **Outer loop**: `/goal` optimizing the whole system toward an outcome metric — traditionally a product team's months-long ship-measure-iterate cycle, now compressed into hours ^[extracted]

## The Bigger Shift

When outputs are public, anyone can distill them. The competitive moat shifts from "we built it" to **information asymmetry** — owning the eval set nobody else can score against. ^[inferred]

> "The product is a weekend now. Go build the eval a weekend can't touch." ^[extracted]

## Referenced Content

- Peter's tweet about agentic optimization
- @pumfleet's tweet
- Elvis's tweet about Zoe (OpenClaw agent) monitoring error logs
- cal.com going closed-source in April 2026 ^[extracted]

## Sources

- Original tweet: https://x.com/elvissun/status/2065035615800864954
- [[entities/elvis-sun|Elvis Sun]] — author
- [[concepts/loss-function-development|Loss Function Development]] — the core concept
- [[skills/lfd-design|LFD Design Skill]] — the implementation
