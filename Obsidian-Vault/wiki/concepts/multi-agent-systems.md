---
title: Multi-Agent Systems
category: concepts
tags:
- agents
- multi-agent
- architecture
- workflow
- ai-systems
sources:
- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
- AIEF2025 - Conquering Agent Chaos — Rick Blalock, Agentuity - https://www.youtube.com/watch?v=yASxPZ-tZe0
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: related_to
- target: '[[concepts/probabilistic-accuracy-chaining|Probabilistic Accuracy Chaining]]'
  type: relates_to
- target: '[[concepts/agent-architecture|Agent Architecture]]'
  type: extends
summary: Multi-Agent Systems
---

# Multi-Agent Systems

Multi-agent systems decompose complex workflows into multiple specialized agents, each handling a specific step or capability. At the extreme end, agents are independently autonomous; at the other, they are tightly choreographed with LLMs as glue.

## Spectrum of Multi-Agent Architectures

Multi-agent systems exist on a spectrum:

1. **Chained agents** — Each agent has a narrow, well-defined input/output contract. An LLM orchestrates the chain, passing outputs between agents. ^[extracted]
2. **Workflow-decomposed agents** — Break a complex workflow into specific, I/O-testable steps, each with different requirements, frequencies, and state. State is controlled by an external data structure (e.g., a graph). ^[extracted]

The second approach is favored in domains like legal where correctness is non-negotiable. Instead of trusting autonomous agents, the system uses few trusted agents with extensive guard railing, episodic memory, and state management via graphs.

## The Accuracy Problem

When agents are probabilistic (LLM-based), accuracy compounds multiplicatively across a chain:

| Chain Length | 95% per agent | 90% per agent | 80% per agent |
|---|---|---|---|
| 3 agents | 86% | 73% | 51% |
| 5 agents | 77% | 59% | 33% |
| 10 agents | 60% | 35% | 11% |

Five 95%-accurate agents chained sequentially yields only ~77% expected accuracy. This means in roughly one of every four cases, the workflow produces an incorrect result. For legal work, this is unacceptable without guard rails. ^[inferred]

## Key Design Decisions

- **Few trusted agents** over many autonomous ones — bad prompts easily create bad agents
- **I/O-testable steps** — each step has clear inputs and outputs that can be validated
- **External state management** — state controlled by graphs rather than LLM context windows
- **Guard rails** — extensive validation at each step to catch errors before they propagate
- **Human-in-the-loop** — humans介入 at critical decision points to correct agent errors

## Related Patterns

- [[concepts/graphrag|GraphRAG]] — knowledge graphs as structured retrieval
- [[concepts/episodic-memory-agents|Episodic Memory for Agents]] — memory management across agent steps
- [[concepts/human-in-the-loop|Human-in-the-Loop]] — human oversight patterns
- [[concepts/probabilistic-accuracy-chaining|Probabilistic Accuracy Chaining]] — the accuracy compounding problem
- [[concepts/decision-making-under-uncertainty|Decision-Making Under Uncertainty]] — core challenge in agent systems

## Sources

- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
- AIEF2025 - Conquering Agent Chaos — Rick Blalock, Agentuity - https://www.youtube.com/watch?v=yASxPZ-tZe0
