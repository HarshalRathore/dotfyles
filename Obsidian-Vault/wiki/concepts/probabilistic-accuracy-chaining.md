---
title: Probabilistic Accuracy Chaining
category: concepts
tags:
- accuracy
- chaining
- probabilistic
- agents
- error-compounding
sources:
- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/multi-agent-systems|Multi-Agent Systems]]'
  type: constrains
- target: '[[concepts/decision-making-under-uncertainty|Decision-Making Under Uncertainty]]'
  type: causes
- target: '[[concepts/probabilistic-ai-products|Probabilistic AI Products]]'
  type: extends
summary: Probabilistic Accuracy Chaining
---

# Probabilistic Accuracy Chaining

When probabilistic (LLM-based) agents are chained sequentially, their individual accuracies multiply, causing rapid degradation of end-to-end reliability. This is the fundamental accuracy compounding problem in multi-agent systems.

## The Math

If each agent in a chain has accuracy $p$, then $n$ agents chained sequentially produce correct results with probability $p^n$.

| Chain Length | 99% per agent | 95% per agent | 90% per agent | 80% per agent |
|---|---|---|---|---|
| 3 | 97% | 86% | 73% | 51% |
| 5 | 95% | 77% | 59% | 33% |
| 10 | 90% | 60% | 35% | 11% |
| 20 | 82% | 36% | 12% | 1% |

Five 95%-accurate agents chained sequentially yields only ~77% expected accuracy — meaning roughly one in four cases produces an incorrect result. ^[extracted]

## Implications

- **Short chains are critical** — even a modest number of agents (5) in a workflow significantly degrades reliability
- **95% is already hard** — achieving 95% accuracy per agent is described as "a tall order" even for experienced practitioners
- **Error propagation** — errors in early steps compound through the entire chain
- **Domain sensitivity** — in high-stakes domains (legal, medical, financial), 77% accuracy is unacceptable regardless of cost savings

## Mitigation Strategies

1. **Guard rails** — validation at each step to catch and correct errors before they propagate
2. **Human-in-the-loop** — human oversight at critical decision points
3. **Fewer, better agents** — reduce chain length by consolidating steps
4. **Graph-based state** — external state management enables error recovery and correction
5. **Episodic memory** — agents remember past errors and learn to avoid them
6. **Parallel verification** — multiple agents verify the same step independently

## Related Concepts

- [[concepts/multi-agent-systems|Multi-Agent Systems]] — where the chaining occurs
- [[concepts/decision-making-under-uncertainty|Decision-Making Under Uncertainty]] — the core challenge
- [[concepts/probabilistic-ai-products|Probabilistic AI Products]] — building reliable products from probabilistic components
- [[concepts/human-in-the-loop|Human-in-the-Loop]] — human oversight as a mitigation
- [[concepts/agent-robustness|Agent Robustness]] — designing agents to handle uncertainty

## Sources

- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
