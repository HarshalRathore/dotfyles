---
title: "Ankur Goyal"
category: entities
tags:
  - person
  - braintrust
  - evaluation
  - aief2025
  - llm
  - speaker
aliases: [Ankur Goyal Braintrust, Ankur Goyal speaker]
relationships:
  - target: "[[entities/braintrust]]"
    type: related_to
  - target: "[[references/aief2025-the-future-of-evals-ankur-goyal-braintrust]]"
    type: related_to
  - target: "[[references/aief2025-five-hard-earned-lessons-evals-ankur-goyal-braintrust]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=mc55hdwlq4o"
summary: "Speaker at AI Engineer World's Fair 2025 presenting on the future of AI evaluation, author of Braintrust's Loop product for automated prompt/dataset/scorer optimization."
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Ankur Goyal

Ankur Goyal is a speaker and product leader at [[entities/braintrust|Braintrust]], an AI evaluation and observability platform. ^[extracted]

## AIEF2025 Talk

At the AI Engineer World's Fair 2025, Ankur presented "The Future of Evals," covering the evolution of AI evaluation from manual dashboard review to automated optimization powered by frontier models. ^[extracted] He introduced **Loop**, Braintrust's built-in agent for automatically optimizing prompts, datasets, and scorers, and highlighted **Cloud 4** as a breakthrough model that performs nearly six times better than its predecessor at these optimization tasks. ^[extracted]

## Five Hard Earned Lessons About Evals

In a second AIEF2025 talk, Ankur presented five lessons about AI evaluation: ^[extracted]

1. **Evals must provide value** — Three signs: 24-hour model integration, user complaint → eval pipeline, and playing offense with evals ^[extracted]
2. **Evals must be engineered** — No dataset perfectly aligns with reality; datasets must be continuously reconciled with production experience ^[extracted]
3. **Scorers are specs** — Generic scorers are specs for someone else's project; every advanced company writes custom scoring functions ^[extracted]
4. **Modern prompts are about context** — The vast majority of tokens in agent prompts come from tool definitions and outputs, not the system prompt ^[extracted]
5. **Optimize the entire system** — Prompt-only optimization is dramatically inferior to system-level optimization of data, task, and scorers together ^[extracted]

## Key Insights

Ankur's central thesis: despite companies building some of the most advanced AI products in the world, evals remain a manual process — you run an eval, look at a dashboard, and manually decide what to change. ^[extracted] He argues this is about to change as frontier models become capable enough to automate the entire eval optimization loop. ^[inferred]

## At Braintrust

Braintrust's platform serves companies running significant eval workloads: the average organization runs ~13 evals per day, with some customers running over 3,000 evals daily and spending 2+ hours per day working through evaluations. ^[extracted] Ankur has been involved in Braintrust's quarterly frontier model evaluations for the past two years, tracking model capability improvements in prompt/dataset/scorer optimization. ^[inferred]

## Related

- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — AIEF2025 Talk]]
- [[entities/braintrust|Braintrust]] — AI evaluation platform
- [[concepts/manual-vs-automated-evals|Manual vs Automated Agent Evaluation]] — eval progression
- [[concepts/synthetic-eval-generation|Synthetic Eval Generation]] — frontier model eval capabilities
