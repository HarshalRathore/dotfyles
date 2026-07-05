---
title: "Tom Smoker"
category: entities
tags:
  - person
  - speaker
  - entrepreneur
  - graphs
  - legal-ai
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
  - target: "[[entities/whyhow|WhyHow]]"
    type: founded
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: advocates
---

# Tom Smoker

Tom Smoker is the Technical Founder of [[entities/whyhow|WhyHow.ai]], a company that uses knowledge graphs and multi-agent systems to find class action and mass tort cases before other law firms do. He presented at AIEF2025 on "Knowledge Graphs in Litigation Agents."

## Background

- PhD and Master's in graphs (2016)
- Working in graphs for approximately a decade as of 2025
- Has a good relationship with the [[entities/neo4j|Neo4j]] team
- Currently technical founder of WhyHow.ai

## Views on AI Agents

Smoker is characterized by natural skepticism about agent capabilities. His key positions:

- Agents imply high capability, but bad prompts easily create bad agents
- 95% accuracy per agent is already a tall order; chaining 5 such agents yields only ~77% end-to-end accuracy
- The core challenge in building agent systems is **decision-making under uncertainty**
- Requires guard rails, human-in-the-loop, and extensive testing to reach usable reliability
- Favors breaking workflows into specific I/O-testable steps with controlled state (managed via graphs) over loosely-defined autonomous agents

## Sources

- AIEF2025 - Knowledge Graphs in Litigation Agents — Tom Smoker, WhyHow - https://www.youtube.com/watch?v=yYxr6LdXNWM
