---
title: "Litigation Agents"
category: concepts
tags:
  - agents
  - litigation
  - legal-ai
  - domain-specific
  - knowledge-graphs
sources:
  - "AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: uses
  - target: "[[concepts/multi-agent-systems|Multi-Agent Systems]]"
    type: implements
  - target: "[[concepts/legal-industry-ai-constraints|Legal Industry AI Constraints]]"
    type: constrained_by
  - target: "[[entities/whyhow|WhyHow]]"
    type: used_by
---

# Litigation Agents

Litigation agents are AI systems designed to support the legal process of building and managing litigation cases — specifically class action and mass tort cases. They are domain-specific agents that combine knowledge graphs, multi-agent workflows, and human oversight to handle the high-stakes, detail-oriented nature of legal work.

## Domain Context

Litigation agents operate in the class action / mass tort space, where the typical case pattern involves:

1. Many individuals used a pharmaceutical product or were exposed to a harmful substance
2. The product/substance caused them harm
3. Science has proven the causal link
4. The affected individuals can be identified, collected, and collectively sued

Examples include pharmaceutical product liability cases where the product's ingredients, concentrations, and identification numbers form a structured knowledge graph connecting harmed individuals to manufacturers.

## Agent Architecture

Litigation agents follow a specific architecture pattern:

- **Knowledge graphs** represent the domain: individuals, products, ingredients, concentrations, IDs, and their relationships
- **Multi-agent workflows** break the litigation process into specific, I/O-testable steps
- **Graph-based state management** controls the state of each step, enabling capture, expansion, pruning, and querying
- **Guard rails** compensate for the probabilistic nature of LLMs
- **Human-in-the-loop** ensures correctness at critical decision points

## Why Graphs for Litigation

Tom Smoker (WhyHow) defines graphs fundamentally as **relations** — the ability to see what is connected to something else, do multi-hop traversal, and perform mass analytics on connections. For litigation, this means:

- Tracing the connection between a harmed individual and a pharmaceutical product
- Following multi-hop relationships: individual → product → ingredient → concentration → ID
- Performing analytics on the network to identify patterns (e.g., clusters of similar cases)
- Visualizing the network for domain experts (lawyers) who need to understand complex relationships

## Constraints

Litigation agents face unique constraints that shape their design:

- **Correctness is non-negotiable** — lawyers don't tolerate errors
- **Precise language** — legal arguments require exact terminology and format
- **Precedent-based reasoning** — creative arguments must be grounded in legal precedent
- **Scale** — cases can involve thousands of individuals and products

These constraints make pure LLM approaches insufficient; structured, graph-based systems with guard rails are required.

## Related Concepts

- [[concepts/graphrag|GraphRAG]] — knowledge graph retrieval architecture
- [[concepts/multi-agent-systems|Multi-Agent Systems]] — the agent paradigm
- [[concepts/legal-industry-ai-constraints|Legal Industry AI Constraints]] — domain-specific requirements
- [[concepts/probabilistic-accuracy-chaining|Probabilistic Accuracy Chaining]] — accuracy compounding challenge
- [[concepts/episodic-memory-agents|Episodic Memory for Agents]] — managing agent memory over time

## Sources

- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
