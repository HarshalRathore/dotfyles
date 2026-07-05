---
title: "Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work"
category: references
tags:
  - evals
  - observability
  - llm-evaluation
  - pipeline
  - scalable
  - aief2025
  - arize-ai
summary: "Dat Ngo and Aman Khan from Arize AI present the full evals toolbox — from LLM-as-judge through code-based heuristics — and the two-circle model for continuous eval improvement."
sources:
  - "AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/dat-ngo|Dat Ngo]]"
    type: presented_by
  - target: "[[entities/aman-khan|Aman Khan]]"
    type: presented_by
  - target: "[[entities/arize-ai|Arize AI]]"
    type: affiliated_with
---

# Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work

**Speakers:** Dat Ngo, Aman Khan — [[entities/arize-ai|Arize AI]]
**Event:** AI Engineering World Fair 2025
**Video:** https://www.youtube.com/watch?v=spvXj9tnWAQ

## TL;DR

Dat Ngo from Arize AI presents a practical framework for building scalable LLM evaluation pipelines. The core thesis: evals are not just LLM-as-judge — they span a spectrum from cheap code-based heuristics to expensive human judgment, and successful teams use the full toolbox. The talk introduces a two-circle model: the left circle (collect data → run evals → collect signal → annotate → update) for improving AI systems, and the right circle (tune your evals themselves over time) for keeping evals accurate as the application evolves.

## Problem / Motivation

Most AI teams think of evals narrowly as LLM-as-judge, missing cheaper and more effective alternatives. The reality is that evals are simply a mechanism for discerning signal from the massive data produced by LLM applications — understanding what's going well and what's not. ^[extracted]

Key observations:

- Only ~50% of practitioners use LLM-as-judge, and it's only one tool among many
- ~30% have implemented user feedback, which is an incredible signal
- Duolingo runs ~20 evals per trace, showing that eval scale is real and costly
- The evals labor problem is acute: evals consume ~80% of feature development time

## Method / Architecture

### The Evals Toolbox (Scale vs. Quality)

Dat frames eval types along two axes: **scale** (how many things you can evaluate cheaply) and **quality** (how trustworthy the signal is):

| Eval Type | Scale | Quality | Cost |
|-----------|-------|---------|------|
| LLM-as-judge | High | Medium | Medium-high |
| User feedback | Medium | High | Low (organic) |
| Golden datasets | Low | Very high | High (manual) |
| Code-based heuristics | Very high | Context-dependent | Very low |

LLM-as-judge is valuable because you don't have to grade manually, but it should be quantified and tuned against golden datasets. ^[extracted]

### Code-Based Evals

Code-based evals (heuristics) are infinitely cheaper and faster than LLM or human evals. Examples:

- Does the output contain specific keywords?
- Does it match a regex pattern?
- Is it parsable JSON?
- Does it conform to a schema?

These should be the first line of defense in any eval pipeline. ^[extracted]

### The Two-Circle Model

**Left Circle** — The familiar AI improvement loop:
1. Collect data (observability, traces)
2. Run evals to discern signal from noise
3. Identify what went right or wrong
4. Annotate datasets
5. Update prompts, models, or agent orchestration

**Right Circle** — The often-forgotten eval tuning loop:
1. Run evals on your system
2. Notice evals are not perfect
3. Tune evals over time as the application improves
4. The way you collect signal adjusts as your application gets better

The right circle is critical: evals themselves are living artifacts that require continuous maintenance. ^[extracted]

### RAG Pipeline Evals

For RAG systems, every arrow in the pipeline is an eval opportunity:

1. **Retrieval relevance** — Is the retrieved context helpful for the query?
2. **Generation quality** — Does the LLM use the context well?
3. **End-to-end** — Does the final answer satisfy the user?

Each step can be evaluated independently for targeted debugging. ^[extracted]

### Encoder-Only Models for Evals

BERT-type encoder-only architectures for LLM-as-judge are approximately 10x cheaper and 1-2 orders of magnitude faster than autoregressive models, making them practical for large-scale eval runs. ^[extracted]

## Key Insights

1. **Evals are signal, not judgment** — The word "eval" obscures the simpler truth: you're trying to understand what's working and what isn't
2. **The toolbox is wider than LLM-as-judge** — Code-based heuristics, user feedback, and golden datasets each serve different purposes
3. **Golden datasets quantify LLM-as-judge** — Run your LLM judge on a golden dataset to calibrate and tune its accuracy
4. **Evals need their own iteration loop** — The right circle (tuning evals) is as important as the left circle (improving the system)
5. **Platform vs. application teams care about different things** — Platform teams own costs and latency; application teams own evals and user outcomes

## Limitations

- The talk is delivered by a single speaker (Dat Ngo) without Q&A in the transcript
- Aman Khan's specific contributions are not detailed in the available transcript
- No specific metrics or benchmark results are provided — the talk is conceptual rather than empirical
- Duolingo's 20 evals per trace is cited as an example but no cost analysis is provided

## Related

- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Multi-dimensional evaluation
- [[concepts/evals-testing-pyramid|Evals Testing Pyramid]] — Hierarchy of eval methods
- [[concepts/continuous-eval-loops|Continuous Eval Loops]] — Iteration cycles for AI systems
- [[concepts/llm-as-judge-evaluation|LLM as Judge Evaluation]] — The eval type most practitioners know
- [[concepts/observability-for-enterprise-trust|Observability for Enterprise Trust]] — Traces, spans, analytics
- [[entities/arize-ai|Arize AI]] — Company behind the talk

## Sources

- AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ
