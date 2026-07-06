---
title: Dashboard Dumpster Diving
category: concepts
tags:
- evals
- dashboard
- manual-review
- eval-ops
- human-in-the-loop
relationships:
- target: '[[concepts/manual-vs-automated-evals]]'
  type: related_to
- target: '[[concepts/online-evals]]'
  type: related_to
- target: '[[concepts/agent-evaluations]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=mc55hdwlq4o'
summary: The eval workflow problem where evaluation results are presented as static dashboards that humans must manually inspect, interpret, and act on — the bottleneck that automated eval agents like Loop...
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Dashboard Dumpster Diving

The "dashboard dumpster diving" pattern describes the dominant eval workflow: run an evaluation, look at a dashboard of results, and manually decide what changes to make to prompts, code, or data. ^[extracted] Despite companies building sophisticated AI products, the eval process itself remains a manual, human-intensive operation. ^[inferred]

## The Pattern

1. **Run eval** — Execute evaluation against a dataset with scoring functions
2. **View dashboard** — Browse aggregated scores, per-row results, and visualizations
3. **Interpret** — Human decides which data points are problematic and why
4. **Act** — Manually edit prompts, code, or data based on interpretation
5. **Repeat** — Run eval again to measure improvement

Each cycle requires significant human attention. Advanced companies spend **2+ hours per day** working through their evals. ^[extracted]

## Why It's a Problem

The dashboard pattern creates several bottlenecks: ^[extracting]

- **Slow iteration** — Each improvement cycle requires manual interpretation and action
- **Limited scale** — Human attention is the constraint, not compute
- **No automated learning** — The dashboard doesn't learn from what worked or didn't work
- **Context switching** — Engineers must switch between dashboard review and actual development work
- **Inconsistent interpretation** — Different humans may interpret the same dashboard differently

## The Alternative: Automated Eval Optimization

The emerging alternative is **automated eval optimization** — using frontier models to close the loop between evaluation results and improvement actions. ^[inferred] Products like [[entities/braintrust|Braintrust]]'s **Loop** agent automate the entire cycle: analyze results, generate improvements to prompts/datasets/scorers, run experiments, and iterate — with human oversight via side-by-side UI comparison. ^[extracted]

This represents the evolution from manual evals to automated evals: the dashboard becomes an interface for human review rather than the primary decision-making tool. ^[inferred]

## Related

- [[concepts/manual-vs-automated-evals|Manual vs Automated Agent Evaluation]] — the progression from manual to automated
- [[concepts/online-evals|Online Evals]] — production scoring that feeds into eval optimization
- [[concepts/agent-evaluations|Agent Evaluations]] — evals as a safety net for non-deterministic systems
- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — Ankur Goyal, Braintrust]] — the talk that coined this pattern
