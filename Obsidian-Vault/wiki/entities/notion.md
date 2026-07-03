---
title: "Notion"
tags:
  - company
  - product
  - ai
  - workspace
  - enterprise
sources:
  - "AI Engineer World's Fair 2025 — How to build world-class AI products — Sarah Sachs (AI lead @ Notion) & Carlos Esteban (Braintrust) - https://www.youtube.com/watch?v=6YdPI9YbjbI"
summary: "Connected workspace platform with over 100 million users, known for its AI features spanning writing, search, meetings, and deep research."
provenance:
  extracted: 0.55
  inferred: 0.35
  ambiguous: 0.10
base_confidence: 0.40
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Notion

Notion is a connected workspace platform combining workplace management, asynchronous collaboration, documents, and third-party integrations (Slack, Jira, Google Drive). It has over 100 million users. ^[extracted]

## Notion AI

Notion AI is the company's suite of AI-powered features. Sarah Sachs is the AI lead, having joined approximately 10 months prior to mid-2025. Notion AI launched before ChatGPT, having early access to generative models for inline content generation. ^[extracted]

### Product Generations

1. **AI Writer** — Inline text generation; the first AI product, launching before ChatGPT's public release. ^[extracted]
2. **AI Autofill** — AI operating across database properties, triggered frequently, handling translations and cross-database operations. ^[extracted]
3. **Q&A / RAG solution** — First full AI-data platform collaboration, offering Q&A to free users with embeddings and multilingual workspace support. ^[extracted]
4. **Enterprise Search** — Cross-app search across Slack, Jira, Google Drive, and Notion attachments. ^[extracted]
5. **AI Meeting Notes** — Speech-to-text, transcription, summaries with workspace awareness for action items. ^[extracted]
6. **Deep Research** — Parallel search execution with fine-tuned agentic capabilities — Notion's first transition from workflows to agents, where the AI decides which tools to use and spends longer on tasks. ^[extracted]

### Scale and Diversity

60% of Notion Enterprise users are non-English speaking, making multilingual AI quality a critical requirement. Notion supports a free trial of almost all AI products, meaning the infrastructure must handle significantly more users than just paid subscribers. ^[extracted]

### Evaluation Practice

Notion's AI quality approach is [[concepts/evaluation-first-development|evaluation-first]]: roughly 10% of engineering time on prompting, 90% on evals. The team uses [[entities/braintrust|Braintrust]] as its evaluation platform, running [[concepts/per-element-llm-judge|per-element LLM-as-judge]] scoring with curated, handcrafted datasets maintained by data specialists. ^[extracted]

## Related

- [[entities/sarah-sachs|Sarah Sachs]] — AI lead at Notion
- [[entities/braintrust|Braintrust]] — evaluation platform used by Notion
- [[concepts/evaluation-first-development|Evaluation-First Development]] — Notion's development paradigm
- [[concepts/per-element-llm-judge|Per-Element LLM Judge]] — the scoring methodology
- [[concepts/curated-dataset-strategy|Curated Dataset Strategy]] — Notion's dataset curation approach
- [[concepts/prompt-fallback-infrastructure|Prompt Fallback Infrastructure]] — model management system

## Sources

- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — AI Engineer World's Fair 2025
