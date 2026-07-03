---
title: "Tribal Knowledge in AI"
tags:
  - ai
  - enterprise-ai
  - domain-knowledge
  - reliability
  - semantics
aliases: [tacit business knowledge, domain-specific business language, tribal knowledge gap]
relationships:
  - target: "[[concepts/agentic-semantic-layer]]"
    type: extends
  - target: "[[concepts/data-readiness-myth]]"
    type: related_to
  - target: "[[concepts/agent-reliability-challenge]]"
    type: related_to
sources:
  - "AI Engineer World's Fair 2025 talk - \"Data readiness\" is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL - https://www.youtube.com/watch?v=1nOTQsfe1RU"
summary: "The underappreciated cause of AI unreliability: LLMs lack the tacit, context-dependent business language that human analysts develop over years in a specific company."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Tribal Knowledge in AI

The observation that a major root cause of AI unreliability in enterprise contexts is not model capability or data quality — but the absence of **tacit, domain-specific business language** that human analysts accumulate over years in a specific company. Vanilla LLMs are "super smart" and "incredible" at general tasks, but "they don't understand your business, your domain." ^[extracted]

## The Problem

- Same term means different things across domains: "GM" in finance = gross margin, in HR = general manager ^[extracted]
- "Conversion," "quarter," "active customer" — every team has its own definition ^[extracted]
- Even with a semantic layer definition (e.g., "customer acquisition cost = marketing spend / new customers"), questions remain: which marketing spend (brand team? performance team?), what counts as a "new customer" (first purchase? reactivated?), what time period? Does it include failed trials? Accounting for seasonality? ^[extracted]
- You can never pre-define all these edge cases manually ^[extracted]

## How Human Analysts Bridge This Gap

Traditionally, when a business question arose, a human analyst or engineer who had built up **tribal knowledge** over years at the company would: ^[extracted]
- Understand what the question actually means in the company's context
- Know which data sources contain the relevant information
- Understand the nuances and edge cases in the data
- Write correct SQL (or use other tools) to answer the question
- Explain their reasoning transparently

This is what builds trust. AI lacks this trust because it lacks this tribal knowledge. ^[extracted]

## How an AI Can Build Tribal Knowledge

The proposed solution is an [[concepts/agentic-semantic-layer|agentic semantic layer]] that starts like a new hire — knows general concepts but not the company's specifics — and learns over time through corrections: ^[extracted]

1. AI makes a mistake → user corrects it → AI learns
2. Learning accumulates in a semantic graph
3. Over time, the AI develops company-specific business language
4. Accuracy converges toward 100% on complex tasks

## Relationship to Agent Reliability

The [[concepts/agent-reliability-challenge|agent reliability challenge]] is often framed as a model capability problem (LLMs hallucinate, compound errors cascade). This talk adds a complementary root cause: even a perfect LLM would fail at enterprise tasks because it lacks the tacit business knowledge specific to each company. ^[inferred] This explains why generic AI benchmarks don't correlate with enterprise deployment success. ^[inferred]

## Related

- [[concepts/agentic-semantic-layer|Agentic Semantic Layer]] — Architecture for building tribal knowledge into AI
- [[concepts/data-readiness-myth|Data Readiness Myth]] — Cleaning data alone cannot encode tribal knowledge
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — Broader reliability context
- [[concepts/domain-expert-prompt-engineering|Domain Expert Prompt Engineering]] — Related approach to injecting domain knowledge via prompts

## Sources

- [[references/promptql-agentic-semantic-layer-ai-eng-2025|"Data readiness" is a Myth — Anushrut Gupta, PromptQL]]
