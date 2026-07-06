---
title: Aparna Dinakaran
category: entities
tags: [person, Arise, evals, evaluation]
aliases: [aparna, aparna dinakaran, arise CPO]
relationships:
  - target: '[[concepts/agent-as-judge]]'
    type: presented
  - target: '[[concepts/llm-evaluation]]'
    type: discussed
  - target: '[[entities/arise]]'
    type: co-founder_of
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Co-founder and CPO of Arise, presented on the future of evals and introduced Agent as a Judge at WF2026.
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Aparna Dinakaran

**Aparna Dinakaran** is the co-founder and Chief Product Officer of **Arise**, an evaluation platform that works with leading AI teams to build evals. She presented on "The Future of Evals" at the AI Engineer World's Fair 2026. ^[extracted]

## Overview

Aparna co-founded Arise to help AI teams build and scale their evaluation infrastructure. Arise works with some of the best AI teams in the world and provides a front-row seat into how teams evaluate their live production agents via traces. The company runs over **100 million evals every month**, with the average team running about 12 different eval jobs, and top teams running over 3,800 different evaluators. ^[extracted]

## WF2026 Talk: The Future of Evals

At WF2026, Aparna argued that the evaluation landscape has fundamentally shifted. In 2023 evals were about answering a simple prompt; by 2024 models added tool calls, reasoning, and deep research. Teams now run loops on real-world data with sub-agents kicked off on long-horizon tasks. Every one of these was a massive jump in complexity, creating a fundamentally different type of problem. ^[extracted]

She introduced **Signal**, Arise's new "Agent as a Judge" capability -- a long-running agent that can read traces, discover patterns of issues, and figure out types of problems that classical LLM-as-a-judge evals would never be able to detect with deterministic rubrics. Signal can detect subtle failures such as an agent calling the same tool repeatedly in a loop, or trajectory inefficiency. Because it has full analysis, Signal can also go and put up a PR with a fix. ^[extracted]

## Key Claims

- **LLM as judge gives you a fixed rubric with fixed scores; Agent as judge is about adaptive dynamic analysis.** As agents produce completely different trajectories every time a user interacts, you need a fundamentally different type of eval. ^[extracted]
- **Most teams today are using the first two types of evals, but the future is having all three: deterministic evals, LLM-as-judge evals, and agent-as-judge evals.** ^[extracted]
- **"The thing that we were actually evaluating has changed underneath us"** -- as frontier models added tool calls, reasoning, deep research, and long-horizon sub-agents, the classical eval approaches became insufficient. ^[extracted]
- Arise's own agent Alex experienced these failures firsthand: it would forget context, not know when something was done, and get stuck in loops that classical evals couldn't catch. ^[extracted]

## Related

- [[concepts/agent-as-judge|Agent as Judge]] — the paradigm Aparna introduced
- [[concepts/llm-evaluation|LLM Evaluation]] — the broader field of evaluation
- [[entities/arise|Arise]] — the company Aparna co-founded

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
