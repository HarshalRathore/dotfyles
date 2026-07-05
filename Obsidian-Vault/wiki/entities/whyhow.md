---
title: "WhyHow"
category: entities
tags:
  - company
  - legal-ai
  - graph-database
  - multi-agent
  - litigation
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
    type: uses
  - target: "[[entities/tom-smoker|Tom Smoker]]"
    type: founded_by
---

# WhyHow

WhyHow.ai is a legal technology company founded by [[entities/tom-smoker|Tom Smoker]] that uses knowledge graphs and multi-agent systems to find class action and mass tort cases before other law firms do.

## Business Model

WhyHow supports the law firms that handle litigation — they don't do the litigating or suing themselves. Their process:

1. **Web scraping** — scrape the web for potential case leads
2. **Proprietary qualification** — qualify leads through a proprietary process
3. **Graph storage** — store structured information about cases, products, ingredients, and harmed individuals in knowledge graphs
4. **Lawyer engagement** — work directly with lawyers to understand how they think and build cases

## Application Domain

Their primary focus is **class action and mass tort litigation**, such as cases where:
- Many people used a pharmaceutical product
- The product caused them harm
- Science has proven the harm
- The affected people can be collected and collectively sue the pharmaceutical company

## Technology Stack

WhyHow's approach combines several patterns:

- **Knowledge graphs** — represent individuals, products, ingredients, concentrations, and IDs as connected entities with typed relationships
- **Multi-agent systems** — break legal workflows into specific, I/O-testable steps with controlled state
- **Graph-based state management** — capture, expand, prune, structure, and query state in graphical format
- **Guard rails** — extensive guard railing to compensate for probabilistic LLM inaccuracy
- **Episodic memory** — memory that persists beyond immediate context, with state pruning

## Design Philosophy

Smoker's approach to WhyHow reflects a deep skepticism of pure LLM autonomy. The company:
- Uses few trusted agents rather than many autonomous ones
- Controls workflow state through graphs (not just LLM context)
- Builds for the legal industry where correctness is non-negotiable
- Accepts that 95% per-agent accuracy chained 5-deep yields only 77% end-to-end reliability

## Sources

- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
