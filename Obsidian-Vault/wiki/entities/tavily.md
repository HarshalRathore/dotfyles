---
title: Tavily
category: entities
tags:
- ai-search
- real-time-data
- retrieval
- evals
- aief2025
aliases:
- tavily api
sources:
- 'AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/quotient-ai]]'
  type: collaborates_with
- target: '[[concepts/dynamic-eval-sets]]'
  type: created
- target: '[[concepts/ai-powered-search]]'
  type: implements
summary: Tavily
---

# Tavily

**Tavily** is an infrastructure layer providing language models with real-time data from across the web. It powers AI search for applications ranging from legal assistants to fraud detection, processing hundreds of millions of search requests in production. ^[extracted]

## Leadership

- **Rotem** — Founder and CEO
- **Vythara Sher** — Head of Engineering (speaker at AIEF2025)
- **Eyal** — Head of Data (initiated the dynamic eval set agent project)

## Use Cases

Tavily's clients use real-time AI search for diverse applications: ^[extracted]

- **Legal tech** — AI legal assistant powering legal and business teams with instant case insight
- **Sports media** — Hybrid RAG chat agent delivering scores, games, and news updates
- **Financial services** — Real-time search to fight fraud by pinpointing merchant locations

## Evaluation Principles

Tavily operates on two evaluation principles derived from its production experience: ^[extracted]

1. **The web is constantly changing** — Evaluation methods must keep pace with ongoing change, since the web (their data foundation) is not static
2. **Truth is often subjective and contextual** — What's right may depend on the source, timing, or user needs; evaluation methods must be as unbiased and fair as possible even when absolute truth is hard to pin down

## Dynamic Eval Set Agent

Tavily built an open-source agent that generates dynamic eval sets for web-based RAG systems. The agent uses LangGraph and produces question-answer pairs from real-time web content across targeted domains, leveraging multiple AI search providers to maximize coverage and minimize bias. ^[extracted]

## Related

- [[entities/quotient-ai]] — Collaboration partner on eval framework
- [[concepts/dynamic-eval-sets]] — Tavily's open-source dynamic eval set agent
- [[concepts/ai-powered-search]] — Tavily's core domain
- [[concepts/rag-grounding]] — Grounding LLMs with real-time web data
