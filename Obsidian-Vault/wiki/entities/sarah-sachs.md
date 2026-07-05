---
title: "Sarah Sachs"
tags:
  - person
  - ai
  - notion
  - product
  - speaker
sources:
  - "[[sources/watchv=6ydpi9ybjbi]]"
summary: "AI lead at Notion, responsible for Notion AI product development — including AI writing, search, meetings, and deep research features."
provenance:
  extracted: 0.50
  inferred: 0.40
  ambiguous: 0.10
base_confidence: 0.40
lifecycle: draft
tier: peripheral
created: 2026-07-03
updated: 2026-07-03
---

# Sarah Sachs

Sarah Sachs is the AI lead at [[entities/notion|Notion]], responsible for Notion AI — the company's suite of AI-powered features spanning writing assistance, search, meeting notes, and deep research. ^[extracted]

## Role and Approach

Sarah has been using [[entities/braintrust|Braintrust]] for 10 months and advocates strongly for evaluation-driven AI development. Her core philosophy: "all of the rigor and excellence that comes from building great AI products comes from observability and good evals." She reports spending roughly 10% of her team's time on prompting and 90% on evals and iteration. ^[extracted]

## Key Contributions

- Led Notion AI through multiple product generations: AI Writer → Autofill → Q&A / RAG → Deep Research agent ^[extracted]
- Developed the per-element LLM-as-judge evaluation methodology, where each data point in a dataset gets a custom scoring prompt tailored to its specific criteria ^[extracted]
- Built Notion's model-switching infrastructure enabling deployment of new foundation models to all users within a day of release ^[extracted]
- Established data specialist roles — a hybrid of PM, data analyst, and data annotator — to curate high-quality evaluation datasets ^[extracted]

## Related

- [[concepts/per-element-llm-judge|Per-Element LLM Judge]] — the methodology she pioneered at Notion
- [[concepts/evaluation-first-development|Evaluation-First Development]] — the paradigm she advocates
- [[concepts/curated-dataset-strategy|Curated Dataset Strategy]] — the data curation approach she implemented
- [[concepts/prompt-fallback-infrastructure|Prompt Fallback Infrastructure]] — the model management system she built

## Sources

- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — AI Engineer World's Fair 2025
