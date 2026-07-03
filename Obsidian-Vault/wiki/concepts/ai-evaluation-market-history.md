---
title: "AI Evaluation Market History"
tags:
  - concept
  - evaluation
  - market
  - history
  - c-suite
  - agentic
aliases: [year of evals, eval market forces, evaluation becoming C-suite priority]
sources:
  - "AIEF2025 - 2025 is the Year of Evals! Just like 2024, and 2023, and … — John Dickerson, CEO Mozilla AI - https://www.youtube.com/watch?v=CQGuvf6gSrM"
summary: "The historical evolution of AI evaluation from niche ML monitoring concern to C-suite priority, driven by three converging forces: ChatGPT's democratization of AI awareness, enterprise budget freezes that channeled all IT spend to gen AI, and agentic systems creating autonomous risk."
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03T08:13:21Z
updated: 2026-07-03T08:13:21Z
---

# AI Evaluation Market History

The market for AI evaluation, monitoring, and observability has existed since approximately 2012, with early players including H2O, Algorithmia, and Seldon launching the first generation of ML monitoring companies. ^[extracted] Despite a decade of existence — and consistent "year of ML/eval" predictions at every industry cycle — evaluation was rarely a top-of-mind concern for C-level executives outside the CIO's office until three forces converged in 2022–2025. ^[extracted]

## The Pre-ChatGPT Era (2012–2022)

Machine learning monitoring was a known practice within data science and engineering teams, using statistical methods to understand model behavior as part of larger systems. ^[extracted] However, the connection to downstream business KPIs was "tenuous" — and at the end of the day, enterprise buying decisions require dollars-saved or dollars-earned justifications. ^[extracted] This meant ML evaluation was primarily sold into the CIO's office, not the CEO, CFO, or CISO. ^[extracted]

A representative example: JPMC CEO Jamie Dimon's 2022 annual report stated the bank had put $100 million into AI/ML from 2017 through 2021 — "comically small" for a bank of that size. ^[extracted]

Companies active in this era: H2O, Algorithmia, Seldon, YLabs, Aporia, Arise AI, Arthur AI, Galileo, Fiddler, Protect AI, and later the built-in monitoring from Snowflake, Databricks, Datadog, SageMaker, Vertex, and Microsoft. ^[extracted]

## The Three Forces

[[entities/john-dickerson|John Dickerson]] (CEO, [[entities/mozilla-ai|Mozilla AI]]) identifies three factors that converged to make evaluation a central business concern:

### 1. ChatGPT (November 30, 2022)

ChatGPT made AI tangible and accessible to non-technical executives. CEOs, CFOs, and CISOs who had never interacted with machine learning could now "interact swiftly and easily with a single UI on the internet and get wowed by AI." ^[extracted] This shifted AI from an abstract technical concern to a boardroom topic overnight. ^[inferred]

### 2. Enterprise Budget Freezes (October–November 2022)

Simultaneously, fears of an impending recession caused most enterprises to freeze or shrink their IT budgets for 2023. ^[extracted] This created a situation where the *only* available discretionary budget was earmarked for a specific pet project — and that pet project, because CEOs and CFOs now understood it, was generative AI. ^[extracted]

### 3. Agentic Systems Acting for Humans (2024–2025)

The third vertex: AI systems evolved from providing inputs into larger systems (where the downstream complexity "erased the top-of-mind need to think about what's coming out of the model") to acting *for* humans — making autonomous or semi-autonomous decisions and taking complex steps toward an action. ^[extracted] When systems act for humans, evaluation shifts from "nice to have" to "must have" because of the direct risk and accountability. ^[inferred]

## The Three-Year Arc: 2023 → 2024 → 2025

| Year | Phase | What Happened |
|------|-------|---------------|
| 2023 | Science projects | C-suite earmarked new budgets for gen AI. Teams experimented with the technology. "Science projects started to float around within enterprise." ^[extracted] |
| 2024 | Production | Gen AI applications went into production — internal chat apps, hiring tools, etc. The business side (CFO, legal, compliance) began asking about ROI, governance, risk, and brand optics. ^[extracted] |
| 2025 | Scale | Usage-based growth at every frontier model provider and at evaluation companies. "It's all going up right now." ^[extracted] Agents moving toward autonomy. "The year of the agent" and simultaneously "the year eval." ^[extracted] |

## C-Suite Alignment

By 2025, every C-level role has a reason to care about AI evaluation: ^[extracted]

| Role | Interest in Evaluation |
|------|----------------------|
| **CEO** | Understands the technology, comfortable allocating budget, discusses AI with board/shareholders |
| **CFO** | Needs to quantify impact on the bottom line — "write numbers into an Excel spreadsheet" that come from quantitative evaluation |
| **CISO** | Sees AI as security risk + opportunity; guardrails (hallucination detection, prompt injection) are security products; CISOs write checks faster with less overhead than CIOs ^[extracted] |
| **CIO** | Already on board, trying to keep the ship sailing |
| **CTO** | Wants standards and decisions based on numbers — evaluation provides the quantitative basis |

## Evaluation Companies Shift to Agentic Monitoring

All evaluation, observability, monitoring, and security companies have shifted focus to agentic and multi-agent systems monitoring. The industry consensus: "you should monitor the whole system, you shouldn't just monitor the one model." ^[extracted]

By 2025, leaked revenue numbers for evaluation startups (Weights & Biases, Galileo, Braintrust) showed strong growth, with industry insiders reporting the numbers were already outdated — the hockey stick had arrived. ^[extracted]

## Relationship to Other Concepts

- [[concepts/evaluation-first-development]] — The methodology for building AI apps with early and continuous evaluation; market forces make this methodology increasingly mandatory
- [[concepts/agent-evaluation-pipeline]] — Platform-level evaluation for agents; the agent era creates the infrastructure demand
- [[concepts/ai-iteration-loop]] — The operational cycle that evaluation infrastructure enables
- [[concepts/llm-judge-best-practices]] — A key evaluation technique, with known biases that ongoing research (including Dickerson's ICLR paper) addresses
- [[concepts/build-operate-divide]] — The gap between establishing evaluation baselines and sustaining continuous iteration
- [[references/aief2025-year-of-evals-john-dickerson-mozilla]] — The talk that frames this history

## Open Questions

- Will evaluation-as-a-competitive-moat persist, or will evaluation infrastructure become commoditized like CI/CD for traditional software? ^[inferred]
- Can LLM-as-judge biases (documented in ICLR 2025) be overcome, or will human evaluation always be required for high-stakes assessment? ^[inferred]
- What happens when domain expert validation data (from services like MERCORE at $50–200/hr) is incorporated back into the systems themselves — does it reduce the need for human evaluators or simply shift the bottleneck? ^[extracted]

## Sources

- [[references/aief2025-year-of-evals-john-dickerson-mozilla]] — John Dickerson's AI Engineer World's Fair 2025 talk
