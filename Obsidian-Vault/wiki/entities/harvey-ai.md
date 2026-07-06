---
title: Harvey
tags:
- organization
- ai
- legal
- enterprise
aliases:
- Harvey AI
sources:
- 'https://www.youtube.com/watch?v=3mzs5gnelzm'
- 'https://www.youtube.com/watch?v=w1mizchnkfa'
summary: AI platform for the legal industry. Reached $70M+ ARR within two years. OpenAI was its seed investor. AI is now essential for competitiveness in legal. Processes legal data at three scales using La...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
relationships:
- target: '[[entities/lance-db|LanceDB]]'
  type: uses
- target: '[[entities/calvin-qi|Calvin Qi]]'
  type: related_to
category: entities
---

# Harvey

Harvey is an AI platform built for the legal industry. It represents a key example of the [[concepts/ai-leapfrog-effect|AI leapfrog effect]] — a conservative, low-tech industry adopting AI fastest.

## Growth and Traction

- Over $70M ARR within two years ^[extracted]
- AI is now essential to being competitive in the legal industry ^[extracted]
- Backed by [[entities/conviction|Conviction]] and seeded by [[entities/openai|OpenAI]]

## RAG Architecture

Harvey processes legal data at three distinct scales: ^[extracted]

1. **On-demand uploads** — 1 to 50 documents, similar to consumer AI assistant uploads
2. **Vaults** — larger project-scale collections (contracts, litigation documents, emails for a deal)
3. **Data corpuses** — knowledge bases spanning legislation, case laws, taxes, and regulations for entire countries, often tens of millions of documents

The RAG team, led by [[entities/calvin-qi|Calvin Qi]], tackles complex retrieval over massive legal document sets using [[entities/lance-db|LanceDB]] as the underlying infrastructure. ^[extracted]

## Evaluation Approach

Harvey follows [[concepts/eval-driven-development|eval-driven development]], investing heavily in evaluation rather than fancy retrieval algorithms. They use a spectrum of evals from expert reviews to automated metrics. ^[extracted]

## Significance

Sarah Guo highlights Harvey as evidence that AI value creation extends far beyond ChatGPT — these are companies that know their customers and solve real problems. That Bret Taylor (OpenAI board chair) runs [[entities/sierra-ai|Sierra]] and OpenAI was Harvey's seed investor suggests the labs themselves are not worried about "thin wrappers." ^[extracted]

## Related

- [[concepts/ai-leapfrog-effect]] — Conservative industry adoption
- [[concepts/legal-ai|Legal AI]] — domain-specific challenges
- [[concepts/enterprise-rag|Enterprise RAG]] — scaling RAG for enterprise
- [[concepts/eval-driven-development|Eval-Driven Development]] — quality assurance
- [[entities/calvin-qi|Calvin Qi]] — RAG team lead
- [[entities/lance-db|LanceDB]] — retrieval infrastructure
- [[entities/sarah-guo]] — Investor
- [[entities/conviction]] — Venture fund
- [[entities/openai]] — Seed investor
- [[entities/sierra-ai|Sierra]] — Bret Taylor's company

## Sources
- AI Engineer World's Fair 2025 — State of Startups and AI 2025, Sarah Guo, Conviction. https://www.youtube.com/watch?v=3MZS5gNElZM
- AIEF2025 - Scaling Enterprise-Grade RAG: Lessons from Legal Frontier - Calvin Qi (Harvey), Chang She (Lance) - https://www.youtube.com/watch?v=W1MiZChnkfA
