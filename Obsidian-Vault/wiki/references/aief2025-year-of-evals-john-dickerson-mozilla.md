---
title: "2025 is the Year of Evals! Just like 2024, and 2023, and … — John Dickerson, CEO Mozilla AI"
tags:
  - reference
  - talk
  - aief2025
  - evaluation
  - monitoring
  - market
aliases: [AIEF2025 John Dickerson Year of Evals, John Dickerson Mozilla AI talk]
sources:
  - "[[sources/watchv=cqguvf6gsrm]]"
summary: "John Dickerson (CEO, Mozilla AI, former co-founder Arthur AI) argues that three converging forces finally make 2025 the real year of AI evaluation: ChatGPT, budget freezes, and the rise of agentic systems."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03T08:13:21Z
updated: 2026-07-03T08:13:21Z
---

# 2025 is the Year of Evals! Just like 2024, and 2023, and …

> **Speaker:** [[entities/john-dickerson|John Dickerson]], CEO of [[entities/mozilla-ai|Mozilla AI]]
> **Event:** AI Engineer World's Fair 2025 (AIEF2025)
> **Source:** https://www.youtube.com/watch?v=CQGuvf6gSrM

> [!tldr] AI/ML monitoring and evaluation are "two sides of the same sword." Three forces converged to make evaluation a C-suite priority: ChatGPT made AI tangible to execs, coincident budget freezes channeled all new IT spend to gen AI projects, and now agentic systems acting for humans create risk that demands measurement. The thesis: after years of predictions, 2025 is genuinely the year eval takes off.

## Key Claims

- AI/ML monitoring and evaluation are two sides of the same coin — "you can't do monitoring or observability without being able to measure, and measurement is the core functionality for evaluation." ^[extracted]
- Three forces converged to make evaluation top-of-mind: (1) ChatGPT made AI tangible to non-technical executives, (2) enterprise budget freezes meant only gen AI pet projects got funded, (3) agentic systems now act *for* humans (autonomously or semi-autonomously) rather than providing inputs into larger systems. ^[extracted]
- Pre-ChatGPT, ML monitoring existed but had a "tenuous" connection to downstream business KPIs, making it hard to sell outside the CIO's office. ^[extracted]
- The three-year arc: science projects (2023) → production (2024) → scale (2025). ^[extracted]
- Every C-suite role now has a reason to care about evaluation: CEO (tangible technology strategy), CFO (ROI quantification), CISO (security risk), CIO (operations), CTO (standards). ^[extracted]
- Evaluation companies have shifted focus to agentic and multi-agent systems monitoring — "you should monitor the whole system, not just the one model." ^[extracted]
- Leaked revenue numbers for eval startups (Weights & Biases, Galileo, Braintrust) were already outdated by mid-2025 — hockey stick growth has begun. ^[extracted]

## Key Quotes

> "AI ML monitoring and evaluation as two sides of the same sword or ruler — you can't do monitoring or observability without being able to measure, and measurement is the core functionality for evaluation."

> "The only money going around that could be allocated was going to specifically gen AI."

> "Systems that are now acting for humans, acting for teams, as opposed to just providing inputs into larger systems."

> "Revenue no longer lags at AI evaluation startups, because this is the year for AI evaluation."

## Details

### Historical Market Context

Dickerson traces the history of ML monitoring from the first generation of companies (~2012 onward: H2O, Algorithmia, Seldon) through the deep learning and gen AI eras. Each pitch deck in the mid-2010s onward "had a slide that said this is the year that a CEO is going to get fired because of an ML related screw up" — but it never happened. ^[extracted]

The disconnect was that ML model outputs were ingested into larger systems whose downstream complexity "erased the top-of-mind need to think about what's coming out of the model itself." ^[extracted]

### The Budget Freeze Tailwind

Enterprise IT budgets for 2023 were set in October–November 2022 amid deep recession fears. Most enterprises froze or reduced IT budgets. The only discretionary spending that could be unlocked was for "pet projects" — and because CEOs had just discovered ChatGPT, those pet projects were gen AI. This forced every enterprise to focus its experimental budget on a single technology. ^[extracted]

### Q&A: Domain Expertise and the Eval Dataset Moat

In response to an audience question about evaluating domain-specific multi-agent systems (e.g., discounted cash flow analysis), Dickerson noted:

- Services like MERCORE provide expert human validators at $50–200/hour alongside agent systems for high-stakes tasks. ^[extracted]
- "When you talk to anyone in the eval space, it's the data set creation and the environment creation that matters more than anything" — this creates a competitive moat. ^[extracted]
- The open question: what does expensive human validation look like in five years, once that data is incorporated into the systems themselves? ^[inferred]

### LLM-as-Judge Discussion

- LLM-as-judge is widely used as a "poor man's version of human judging" because it solves the dataset creation problem. ^[extracted]
- However, Dickerson's ICLR paper (published ~June 2025) documents biases in LLM-as-judge versus humans: conciseness bias, helpfulness bias, and related issues. ^[extracted]
- Practitioners must validate that the judge "is not going off in some weird bias direction." ^[extracted]

### Mozilla's AnyAgent

Dickerson briefly mentioned AnyAgent, Mozilla's open source (unmonetized) unified interface for multi-agent systems — allowing users to try different multi-agent frameworks under a single API. ^[extracted]

## Related Pages Created from This Source

- [[concepts/ai-evaluation-market-history]] — Historical market forces driving evaluation
- [[entities/john-dickerson]] — Speaker bio
- [[entities/mozilla-ai]] — Mozilla's AI division
- [[entities/arthur-ai]] — Dickerson's previous company

### Updated Pages

- [[concepts/evaluation-first-development]] — Added market context
- [[concepts/llm-judge-best-practices]] — Added note on LLM-as-judge biases
- [[entities/braintrust]] — Added market growth context

## Related

- [[concepts/evaluation-first-development]] — The methodology that market forces now demand
- [[concepts/ai-evaluation-market-history]] — Expanded history and analysis
- [[concepts/llm-judge-best-practices]] — LLM-as-judge best practices; biases noted in this talk
- [[references/ai-eng-worlds-fair-2025-llm-evals-strategies-taylor-jordan-smith]] — Complementary evals talk at same conference
- [[references/aief2025-evals-workshop-braintrust]] — Braintrust evals workshop
- [[entities/braintrust]] — Growth mentioned in this talk

## Sources

- https://www.youtube.com/watch?v=CQGuvf6gSrM
