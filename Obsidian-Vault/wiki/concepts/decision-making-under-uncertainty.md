---
title: Decision-Making Under Uncertainty
category: concepts
tags:
- uncertainty
- decision-making
- agents
- reliability
- ai-systems
sources:
- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/probabilistic-accuracy-chaining|Probabilistic Accuracy Chaining]]'
  type: caused_by
- target: '[[concepts/graphrag|GraphRAG]]'
  type: addressed_by
- target: '[[concepts/multi-agent-systems|Multi-Agent Systems]]'
  type: constrains
summary: Decision-Making Under Uncertainty
---

# Decision-Making Under Uncertainty

Decision-making under uncertainty is the core challenge in building reliable AI agent systems. When each component of a multi-agent workflow is probabilistic, the system must make decisions about how to proceed despite incomplete or unreliable information at every step.

## The Problem

Tom Smoker (WhyHow) identifies decision-making under uncertainty as the single most important challenge in building agent systems:

> "Probably if I was to summarize my main problem, it would be that. It would be decision-making under uncertainty throughout the process of building these systems."

This challenge manifests in several ways:

1. **Accuracy compounding** — Each probabilistic agent introduces error; chained agents compound errors multiplicatively
2. **State uncertainty** — The system doesn't know if its internal state (captured via graphs) accurately reflects reality
3. **Agent trust** — Which agents can be trusted? Bad prompts create bad agents, and it's hard to detect this
4. **Error recovery** — When an agent produces an incorrect result, how does the system detect and correct it?

## Why It's Hard

- **95% accuracy is already hard** — Even well-designed agents rarely exceed 95% accuracy per step
- **Chaining degrades rapidly** — 5 agents at 95% each yields only 77% end-to-end accuracy
- **Domain stakes vary** — In legal, medical, or financial domains, errors have serious consequences
- **Detection is hard** — An incorrect output may look correct to the system itself

## Mitigation Patterns

1. **Graph-based state** — External, structured state (knowledge graphs) provides a reliable substrate for capturing, expanding, pruning, and querying information
2. **Guard rails** — Validation layers catch errors before they propagate through the chain
3. **Human-in-the-loop** — Humans介入 at critical decision points, especially in high-stakes domains
4. **Episodic memory** — Agents remember past errors and outcomes, enabling learning and correction
5. **Few trusted agents** — Rather than many autonomous agents, use few carefully designed agents with extensive guard railing
6. **I/O-testable steps** — Break workflows into steps with clear inputs and outputs that can be validated

## Domain-Specific Considerations

In domains like legal litigation:
- Correctness is non-negotiable — lawyers "don't really like when things are incorrect"
- Language must be precise — legal arguments require exact terminology
- Precedent-based reasoning — creative arguments must be grounded in legal precedent
- Scale matters — cases can involve thousands of individuals and products

These constraints make pure LLM approaches insufficient; structured, graph-based systems with guard rails are required.

## Related Concepts

- [[concepts/probabilistic-accuracy-chaining|Probabilistic Accuracy Chaining]] — the mathematical root cause
- [[concepts/graphrag|GraphRAG]] — graphs as a mitigation pattern
- [[concepts/multi-agent-systems|Multi-Agent Systems]] — where uncertainty arises
- [[concepts/probabilistic-ai-products|Probabilistic AI Products]] — building reliable products from unreliable components
- [[concepts/episodic-memory-agents|Episodic Memory for Agents]] — memory as error correction

## Sources

- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
