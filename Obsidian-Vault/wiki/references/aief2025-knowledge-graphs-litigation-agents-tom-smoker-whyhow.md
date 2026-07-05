---
title: "AIEF2025 — Knowledge Graphs in Litigation Agents"
category: references
tags:
  - conference-talk
  - aief2025
  - graphrag
  - litigation
  - multi-agent
  - legal-ai
  - whyhow
sources:
  - "AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: related_to
  - target: "[[concepts/multi-agent-systems|Multi-Agent Systems]]"
    type: uses
  - target: "[[entities/neo4j|Neo4j]]"
    type: related_to
  - target: "[[entities/whyhow|WhyHow]]"
    type: created_by
---

# AIEF2025 — Knowledge Graphs in Litigation Agents

**Speaker:** Tom Smoker, Technical Founder, WhyHow.ai
**Date:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=yYxr6LdXNWM

## Summary

Tom Smoker, technical founder of WhyHow.ai, presents how his company uses knowledge graphs and multi-agent systems to find class action and mass tort cases before other law firms do. He frames the core challenge as decision-making under uncertainty: chaining 95%-accurate agents sequentially yields only 77% end-to-end accuracy, requiring guard rails and human-in-the-loop patterns to reach usable reliability.

## Key Points

- **WhyHow's business:** Finds class action/mass tort cases (e.g., pharmaceutical product harm) before other firms. They scrape the web, qualify leads with a proprietary process, and work directly with lawyers to understand their thinking.
- **Graphs as relations:** Defines graphs fundamentally as "relations" — the ability to see what is connected to something else, do multi-hop traversal, and perform mass analytics on connections.
- **Multi-agent systems in practice:** Breaks white-collar legal workflows into specific I/O-testable steps, each with different requirements, frequencies, and state. State is controlled by a graph.
- **The accuracy problem:** 95% accuracy per agent chained 5-deep yields only ~77% end-to-end accuracy. This is the core challenge: decision-making under uncertainty.
- **Guard rails and structure:** Lawyers demand correctness. Probabilistic LLMs in isolation don't suffice. Requires specific control, structure, schema, and the ability to pinpoint what goes right/wrong at each step.
- **Agent skepticism:** Agents imply capability, but bad prompts create bad agents. WhyHow uses few trusted agents with extensive guard railing, episodic memory, and state capture/pruning/structuring/querying via graphs.

## Related Pages

- [[entities/whyhow|WhyHow]] — the company
- [[entities/tom-smoker|Tom Smoker]] — the speaker
- [[concepts/graphrag|GraphRAG]] — related retrieval architecture
- [[concepts/multi-agent-systems|Multi-Agent Systems]] — the agent paradigm used
- [[concepts/litigation-agents|Litigation Agents]] — the application domain
- [[concepts/probabilistic-accuracy-chaining|Probabilistic Accuracy Chaining]] — the 95% × 95% problem
- [[concepts/decision-making-under-uncertainty|Decision-Making Under Uncertainty]] — the core challenge
- [[concepts/legal-industry-ai-constraints|Legal Industry AI Constraints]] — domain-specific requirements
- [[concepts/episodic-memory-agents|Episodic Memory for Agents]] — memory management pattern
- [[entities/neo4j|Neo4j]] — graph database ecosystem (speaker has good relationship with team)
