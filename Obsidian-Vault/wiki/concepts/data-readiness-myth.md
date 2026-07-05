---
title: "Data Readiness Myth"
tags:
  - ai
  - data
  - reliability
  - production
  - enterprise-ai
aliases: [data readiness is a myth, data readiness fallacy, perfect data myth]
relationships:
  - target: "[[concepts/tribal-knowledge-in-ai]]"
    type: related_to
  - target: "[[concepts/agentic-semantic-layer]]"
    type: related_to
sources:
  - "[[sources/ai-engineer-worlds-fair-2025-talk]]"
Data readiness\" is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL - https://www.youtube.com/watch?v=1nOTQsfe1RU"
summary: "The industry fallacy that data must be perfectly clean, annotated, and structured before AI can work reliably on it — a goal that never materializes in practice."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Data Readiness Myth

The belief that AI systems require perfectly clean, annotated, structured data to function reliably. This thesis argues that "data readiness" is a pipe dream — data is inherently messy, domains change constantly, and the pursuit of perfect data actively delays AI deployment without guarantee of success. ^[extracted]

## The Fallacy

Companies chase data readiness through:
- **Standardization** — move everything to Snowflake/Databricks (40% complete, never finishes) ^[extracted]
- **Master Data Management (MDM)** — teams still "implementing their solution" ^[extracted]
- **Manual semantic layers** (MEM0, ATLIN, Semantic Kernel) — break every quarter when data domains change ^[extracted]
- **Knowledge graphs** (GraphRAG) — cannot capture business semantics at scale; "you can't capture a billion rows of Snowflake table in a graph" ^[extracted]

All of these approaches assume you can pre-define every edge case, which is impossible for real business data. ^[inferred]

## Why Data Is Always Messy

- Cryptic column names: "CST_NM" (customer name?), "rev_amount_USD" (revenue), "is_active" (binary? boolean? 0/1/true/false/null?) ^[extracted]
- Cross-system mapping: one system's "organization name" vs another's "total revenue" — is revenue in cents or dollars? Decimal or float? ^[extracted]
- Schema drift: tables, columns, and workflows change every quarter ^[extracted]
- Context-dependent semantics: "active customer" has a different definition in every team ^[extracted]

## The Cost

McKinsey estimates that Fortune 500 companies lose an average of $250 million due to poor data quality. ^[extracted] Yet waiting for perfect data is not the answer — Gupta argues the cost is incurred *while* waiting, not just from data quality issues directly. ^[inferred]

## The Alternative

Instead of preparing data for AI, build AI that can handle messy data and learn business context through use. [[concepts/agentic-semantic-layer|Agentic semantic layers]] that improve over time, learning from corrections and becoming company-specific, are the proposed solution. ^[extracted]

## Related

- [[concepts/agentic-semantic-layer|Agentic Semantic Layer]] — The proposed solution to the myth
- [[concepts/tribal-knowledge-in-ai|Tribal Knowledge in AI]] — The missing piece that data readiness cannot solve
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — Underlying reliability problem made worse by data readiness delays
- [[concepts/quality-chasm-in-ai|Quality Chasm in AI]] — Related reliability gap teams face
- [[concepts/graphrag|GraphRAG]] — Contrasted as insufficient for business semantics

## Sources

- [[references/promptql-agentic-semantic-layer-ai-eng-2025|"Data readiness" is a Myth — Anushrut Gupta, PromptQL]]
