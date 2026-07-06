---
title: Eval-Driven Development
category: concepts
tags:
- evaluation
- development-methodology
- quality
- enterprise-ai
aliases:
- Eval-Driven Development
- EDD
- Evaluation-First Development
sources:
- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
- AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
- 'AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe - https://www.youtube.com/watch?v=coKKKKh8Vns'
- AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao
- AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE
- AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4
- AIEF2025 - From Self-driving to Autonomous Voice Agents — Brooke Hopkins, Coval - https://www.youtube.com/watch?v=kDczF4wBh8s
- AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8
provenance:
  extracted: 0.6
  inferred: 0.3
  ambiguous: 0.1
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
- target: '[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]'
  type: implements
- target: '[[concepts/model-picking|Model Picking]]'
  type: enables
- target: '[[concepts/auto-improving-agent-loop|Auto-Improving Agent Loop]]'
  type: extends
- target: '[[concepts/continuous-eval-loops|Continuous Eval Loops]]'
  type: implements
summary: Eval-Driven Development
---

# Eval-Driven Development

**Eval-driven development** is a methodology where evaluation systems are the primary driver of development decisions, rather than an afterthought added after the application is built. ^[extracted]

## The Intuit Approach

Intuit's philosophy, as described by Jaspreet Singh, emphasizes: ^[extracted]

> "You want to make sure that we evaluate everything we do."

This means:

- Every prompt change is measured against eval criteria
- Every model switch is tested through the eval pipeline
- Every IRS regulation change triggers re-evaluation of existing outputs

## Eval-Driven vs Algorithm-Driven

In traditional AI development, teams invest heavily in algorithms and retrieval techniques. In eval-driven development:

- **More time on evals** — Define metrics, build datasets, create evaluation pipelines
- **Less time on algorithms** — The evals tell you what works; you iterate based on data, not intuition
- **Domain experts lead** — Tax analysts define what "good" looks like before ML engineers optimize for it

## When It Matters Most

Eval-driven development is critical when:

- Engineers lack domain expertise to judge output quality
- Regulatory compliance is required (tax, healthcare, legal)
- Scale makes manual review impossible (44M+ users)
- Model switching is anticipated

## EDD as the Evolution of TDD

Muktesh Mishra frames eval-driven development as the natural evolution of test-driven development (TDD) for AI systems. Where TDD defines tests before code, EDD defines evals before the AI application: ^[extracted]

- Define evals based on the use case
- Focus on both positive and negative cases
- The evals become the specification for what the application should do

## The Continuous Loop

EDD operates within a continuous improvement cycle: ^[extracted]

> "Measure, monitor, analyze, iterate."

This loop means evals are not a one-time gate but an ongoing practice — measure outputs, monitor for drift, analyze results, and iterate on the application. The cycle repeats continuously. ^[extracted]

## Evals as Laboratory

[[entities/manu-goyal|Manu Goyal]] ([[entities/braintrust|Braintrust]]) reframed evals as a laboratory — a safe environment where you can run experiments and complete approximately 90% of the product iteration loop before going to production. ^[extracted] This means teams can ship more quickly and with greater confidence, because the bulk of learning happens in a fast, cheap, risk-free environment rather than through slow, expensive production deployments. ^[extracted]

## Auto-Improving Agent Loops

[[entities/nir-gazit|Nir Gazit]] ([[entities/traceloop|Traceloop]]) demonstrated an extreme form of eval-driven development at AIEF2025: an [[concepts/auto-improving-agent-loop|auto-improving agent loop]] that optimized a [[concepts/rag-pipeline-architecture|RAG chatbot]] over five weeks without any manual prompt engineering. The evaluator (ground-truth LLM-as-judge with 20 questions × 3 facts each) served as the loss function, and a CrewAI researcher agent performed gradient descent on the prompt space using evaluation feedback and web-sourced prompt engineering guides. Gazit described this as "classic ML training with vibes" — the agent iteratively generated new prompts, the evaluator scored them, and the loop continued until quality improved.

This pattern represents the ultimate expression of eval-driven development: the human doesn't iterate on the application at all — they only build and maintain the evaluation infrastructure, and the agent does the rest.

## Continuous Eval Loops from Autonomous Vehicles

[[entities/brooke-hopkins|Brooke Hopkins]] (Coval, formerly Waymo) demonstrated at AIEF2025 that the continuous eval loop methodology used in autonomous vehicle development is directly applicable to voice agents. ^[extracted] The cycle: ^[extracted]

1. **Bug discovery** — Find a specific failure (e.g., car not stopping at stop sign)
2. **Reproduce** — Run evals to reproduce the failure
3. **Fix** — Iterate on the fix
4. **Verify** — Run more evals to confirm the fix
5. **Regression** — Run larger regression sets to ensure nothing else broke
6. **Pre-submit evals** — CI/CD gates before shipping
7. **Post-submit evals** — CI/CD gates after pushing to production
8. **Release evals** — Manual + automated evals before new release
9. **Live monitoring** — Detect issues in production, feed back to step 1

This creates a virtuous cycle: simulation → detect/flag → human review → feed back to simulations. ^[inferred] The goal is not to automate all evals, but to leverage automated evals for speed and scale while reserving manual time for human judgment calls. ^[extracted]

Without this loop, voice agents become extremely expensive to maintain in production — ongoing tweaks can consume 80% of time even after initial deployment. ^[extracted]

## Day-One Integration Lifecycle

[[entities/jim-bennett|Jim Bennett]] ([[entities/galileo|Galileo]]) at AIEF2025 prescribes a concrete lifecycle for evaluation integration that aligns with the EDD philosophy:

1. **Prompt engineering phase** — define eval metrics alongside prompts, before any model is selected
2. **Model selection** — use evals to compare models objectively, not by intuition
3. **CI/CD pipelines** — run evals on every code change, catching regressions before they ship
4. **Production** — observe eval metrics continuously as users stress-test the system

"The best time to put evaluations in is as you're doing prompt engineering and model selection. The second best time is now." ^[extracted]

This lifecycle extends the EDD loop from a development-time practice to a production-time practice, making evals a continuous monitoring concern rather than a pre-launch gate. ^[inferred]

## Related


- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — The concrete eval system
- [[concepts/model-picking|Model Picking]] — Evals enable safe model switching
- [[concepts/domain-expert-prompt-engineering|Domain Expert Prompt Engineering]] — Domain experts define eval criteria
- [[concepts/adaptive-evals|Adaptive Evals]] — Evals must adapt to application type
- [[concepts/measure-monitor-analyze-repeat|Measure, Monitor, Analyze, Repeat]] — The continuous EDD loop
- [[concepts/positive-negative-eval-cases|Positive and Negative Eval Cases]] — EDD covers both case types
- [[concepts/auto-improving-agent-loop|Auto-Improving Agent Loop]] — Automated eval-driven optimization
- [[concepts/prompt-engineering-is-dead|Prompt Engineering is Dead]] — The thesis that eval infrastructure matters more than prompt text
- [[entities/jim-bennett|Jim Bennett]] — Day-one evaluation lifecycle
