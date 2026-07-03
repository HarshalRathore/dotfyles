---
title: '"Data readiness" is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL'
tags:
  - reference
  - talk
  - ai-engineer
  - semantic-layer
  - reliability
  - ai-agents
sources:
  - "AI Engineer World's Fair 2025 talk - \"Data readiness\" is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL - https://www.youtube.com/watch?v=1nOTQsfe1RU"
summary: "AI Engineer World's Fair 2025 talk arguing that the pursuit of perfect 'data readiness' is futile, and proposing an agentic semantic layer that learns business context through corrections."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# "Data readiness" is a Myth: Reliable AI with an Agentic Semantic Layer

> **Talk:** "Data readiness" is a Myth: Reliable AI with an Agentic Semantic Layer
> **Speaker:** [[entities/anushrut-gupta|Anushrut Gupta]]
> **Organization:** [[entities/promptql|PromptQL]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=1nOTQsfe1RU)

## Summary

The talk argues that the industry's obsession with "data readiness" — cleaning, annotating, and structuring data before AI can use it — is a myth that never materializes. Instead of pursuing perfect data, Gupta proposes an **agentic semantic layer** that behaves like a newly hired analyst: knowledgeable but ignorant of business specifics on day one, learning over time through corrections and steering until it achieves near-perfect accuracy on the company's unique data domain. ^[extracted]

## Key Topics

### The Data Readiness Myth

- Companies spend enormous effort on data readiness — standardizing schemas, building data warehouses (Snowflake, Databricks), implementing MDM — but data is always messy: cryptic column names ("CST_NM", "rev_amount_USD"), ambiguous fields (is_active as binary vs boolean), null values, and schema drift
- McKinsey estimates Fortune 500 companies lose $250M on average due to poor data quality ^[extracted]
- The gap is not solvable by more standardization — data domains change every quarter, schemas shift, workflows evolve ^[extracted]

### Why Existing Solutions Fall Short

- **Manual semantic layers** (MEM0, ATLIN, Semantic Kernel) require constant manual maintenance and break when data domains change. You can never pre-define every edge case — "what does 'customer acquisition cost' mean? Which marketing spend? Which customers? What time period?" ^[extracted]
- **Knowledge graphs** (GraphRAG) can model relationships but cannot capture business semantics at scale. "You can't capture a billion rows of Snowflake table in a graph database." They cannot answer questions like "what does 'at risk' mean to my business?" ^[extracted]

### The Real Problem: AI Doesn't Speak Business Language

- A single term means different things across domains: "GM" in finance is "gross margin," in HR it's "general manager" ^[extracted]
- "What does conversion mean to you? What does quarter mean to you?"
- Companies develop **tribal knowledge** — tacit understanding that human analysts build over years. Vanilla LLMs don't have this ^[extracted]

### The Analyst Metaphor

Hire a smart analyst on day one. They understand general concepts but don't know your business. They mess up, you correct them, they learn. After 10 years, they're a veteran analyst with deep business knowledge. Build AI the same way — an agent that starts smart but ignorant, learns from corrections, and becomes a domain expert over time. ^[extracted]

### PromQL Architecture ([[entities/promptql|PromptQL]])

- Uses a **domain-specific language (DSL)** — PromQL — that handles data retrieval, compute/aggregation, and semantics
- **Decouples LLM planning from execution**: the LLM generates a plan in the DSL, but a **deterministic runtime** executes it. The LLM never generates the final answer directly, avoiding hallucination at the execution layer ^[extracted]
- The DSL executes on a **distributed query engine** connecting multiple data sources (databases, SaaS apps like Zendesk, APIs like Stripe) ^[extracted]
- Each step is explainable and **steerable** — users can see intermediate results, edit the plan via a "pencil icon," and the system learns from corrections ^[extracted]

### Self-Improving Semantic Graph

- The **PromptQL learning layer** builds a semantic graph that evolves into the company's specific business language over time
- "ACME QL" becomes "Google QL, Microsoft QL, Apple QL, Cisco QL" — each deployment speaks that company's unique language ^[extracted]
- Corrections are saved as version-controlled builds — can always roll back to a previous build ^[extracted]
- Example progression: day 0 AI doesn't know what "enterprise customer" means. Day 30: has figured out 47 business terms, mapped relationships across 6 systems, discovered 12 calculation variants, 100% accurate on complex tasks ^[extracted]

### Demonstration

Two live demos:
1. **Top 5 customers by revenue** — the AI initially fails (data is messy: statuses are "paid/pending" not "succeeded"), self-corrects by examining actual data, then produces correct results ^[extracted]
2. **Multi-step analysis with cross-system orchestration** — finds unique customers by email domain, gets third-highest revenue org, pulls 30 recent Zendesk support tickets, summarizes sentiment, issues Stripe credits based on sentiment tier — all orchestrated across database, Zendesk, and Stripe ^[extracted]

## Key Takeaways

1. Stop waiting for perfect data — deploy AI on day zero and let it learn your business ^[extracted]
2. Separate planning (LLM generates a deterministic plan) from execution (runtime executes it without LLM involvement) to eliminate hallucination at the answer layer ^[inferred]
3. Build AI that is **correctable, explainable, steerable** — users should guide and the system should learn permanently ^[extracted]
4. The semantic layer should be **version-controlled and self-improving** — each correction creates a new build, old builds are recoverable ^[extracted]

## Related Concepts

- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — Lack of tribal business knowledge is an underappreciated root cause
- [[concepts/data-readiness-myth|Data Readiness Myth]] — The industry fallacy described in this talk
- [[concepts/agentic-semantic-layer|Agentic Semantic Layer]] — The proposed solution architecture
- [[concepts/llm-as-planner-not-executor|LLM as Planner, Not Executor]] — Key architectural pattern
- [[concepts/tribal-knowledge-in-ai|Tribal Knowledge in AI]] — Why AI needs domain-specific business understanding
- [[concepts/graphrag|GraphRAG]] — Contrasted as insufficient for capturing business semantics
- [[concepts/hybridrag|HybridRAG]] — Related retrieval architecture

## Sources

- [YouTube: "Data readiness" is a Myth — Anushrut Gupta, PromptQL](https://www.youtube.com/watch?v=1nOTQsfe1RU)
