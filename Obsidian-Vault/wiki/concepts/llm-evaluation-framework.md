---
title: LLM Evaluation Framework
category: concepts
tags:
- llm
- evaluation
- metrics
- quality
- enterprise-ai
- llm-as-judge
aliases:
- LLM Eval Framework
- LLM Evaluation
- LLM Quality Assessment
sources:
- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
- 'AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe - https://www.youtube.com/watch?v=coKKKKh8Vns'
- AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc
- AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4
- AIEF2025 - [Full Workshop] Building Metrics that actually work — David Karam, Pi Labs (fmr Google Search) - https://www.youtube.com/watch?v=jxrGodnopHo
- AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo
- 'AIEF2025 - Engineering Better Evals: Scalable LLM Evaluation Pipelines That Work — Dat Ngo, Aman Khan, Arize - https://www.youtube.com/watch?v=spvXj9tnWAQ'
- AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8
provenance:
  extracted: 0.68
  inferred: 0.26
  ambiguous: 0.06
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
- target: '[[concepts/rag-evaluation|RAG Evaluation]]'
  type: relates_to
- target: '[[concepts/llm-as-judge|LLM as Judge]]'
  type: uses
- target: '[[concepts/domain-expert-prompt-engineering|Domain Expert Prompt Engineering]]'
  type: includes
- target: '[[concepts/fast-evals|Fast Evals]]'
  type: relates_to
- target: '[[concepts/ground-truth-evaluation|Ground Truth Evaluation]]'
  type: relates_to
- target: '[[concepts/stochastic-systems-evaluation|Stochastic Systems Evaluation]]'
  type: relates_to
- target: '[[concepts/methodology-over-tooling|Methodology Over Tooling]]'
  type: relates_to
summary: LLM Evaluation Framework
---

# LLM Evaluation Framework

An **LLM evaluation framework** is a structured system for measuring the quality of LLM-generated outputs across multiple dimensions, combining human expert review with automated evaluation methods. ^[extracted]

## Three Pillars

The Intuit evaluation framework rests on three pillars: ^[extracted]

1. **Accuracy** — Is the LLM output factually correct? For tax applications, this means IRS-compliant, regulation-accurate responses.
2. **Relevancy** — Does the response address the user's actual question or context?
3. **Coherence** — Is the response logically structured and internally consistent?

## Phased Approach

Evaluation happens in phases across the development lifecycle: ^[extracted]

- **Phase 1: Manual evaluation** — Domain experts (tax analysts) review outputs during development.
- **Phase 2: Domain experts as prompt engineers** — Tax analysts write and refine prompts, bringing regulatory knowledge into the prompt engineering process. This allows ML/data science teams to focus on metrics and datasets.
- **Phase 3: Automated evaluation** — Once manual evals establish a baseline, automated systems take over for ongoing monitoring.

## LLM as Judge

For automated evaluation, Intuit uses **LLM as judge** — an LLM prompted to evaluate other LLM outputs against the three pillars. This operates on top of:

- **Golden datasets** — Manually curated, expert-validated samples (stored via AWS Ground Truth)
- **Prompt templates** — Structured evaluation prompts that the judge LLM follows

[[entities/nir-gazit|Nir Gazit]] ([[entities/traceloop|Traceloop]]) demonstrated a concrete LLM-as-judge implementation at AIEF2025. For a [[concepts/rag-pipeline-architecture|RAG chatbot]], he created 20 question examples, each with three expected facts. The judge LLM checked whether each fact appeared in the generated answer, producing per-fact pass/fail boolean results with reasons for failures, plus a summary numerical score aggregating across all 60 fact checks (20 questions × 3 facts). This structured output — boolean per-fact scores with explanations — enabled the [[concepts/auto-improving-agent-loop|auto-improving agent loop]] to use evaluation results as feedback for prompt optimization.

Gazit argued that LLM-as-judge is easier to build and deploy than classic NLP metrics, and that it can work either with ground truth (comparing against known answers) or without (judging purely on question-context-answer triples). Classic NLP metrics (BLEU, ROUGE, embedding similarity) always require ground truth, while LLM-as-judge has the flexibility to work with or without it. ^[inferred]

## Evaluation at Pipeline Steps

Gazit also described evaluating RAG pipelines at multiple levels — analogous to unit testing:

1. **Retrieval step**: Does the vector database return the right documents?
2. **Generation step**: Does the LLM use the retrieved context well?
3. **End-to-end**: Does the final answer satisfy the user's needs?
4. **Internals**: Looking at question, context, and answer together for full pipeline evaluation.

This multi-level approach enables targeted debugging — if retrieval is poor but generation is good, you know to fix the vector database rather than the prompt. ^[extracted]

## Monitoring

Beyond development evals, Intuit runs broad automated monitoring of real-time LLM outputs to actual users, sampling responses for quality drift detection. ^[extracted]

## Why Evals Matter for Non-Deterministic Systems

LLMs produce different outputs for the same inputs, making traditional testing inadequate. Evals address several critical challenges: ^[extracted]

- **Non-determinism** — The same prompt can produce different outputs, requiring evals to capture quality across multiple runs
- **Prompt regression** — Changing a prompt can break existing functionality; evals detect these regressions
- **Model changes** — As models become more capable, evals validate whether new models improve or degrade output quality
- **Business alignment** — Evals ensure system outputs align with business goals and user expectations
- **Trust and accountability** — Customers need to trust AI-generated outputs; evals provide measurable assurance

## Data-Centric Eval Design

Muktesh Mishra emphasizes that data is the foundation of evals. Key principles: ^[extracted]

- Start with synthetic data to validate application outputs
- Continuously refine datasets based on real system observations
- Label data across multiple flows and application prospects
- Maintain separate datasets for different application flows — one dataset is never sufficient
- Treat eval dataset creation as a continuous improvement process

## Fast Evals for Retrieval Systems

Jeff Huber (Chroma) at AIEF2025 introduced **fast evals** as a complementary evaluation approach specifically for retrieval systems. Unlike LLM-as-judge evals that cost hundreds of dollars and take hours, fast evals use sets of query-document pairs that run in seconds for pennies, enabling rapid experimentation. ^[extracted] The key insight: you can only manage what you measure, and fast evals make measurement cheap enough to do continuously. ^[extracted]

## Conversation Output Analysis

Jason Liu (567) at AIEF2025 extended the evaluation paradigm beyond inputs to outputs — systematically analyzing conversation transcripts at scale to extract product insights and implicit feedback signals. When conversation volume exceeds manual review capacity, automated analysis of conversation data becomes essential. ^[extracted]

## Synthetic Data and Metrics: Two Distinct Components

David Karam (Pi Labs, fmr Google Search) at AIEF2025 distinguished two core components of evaluation: ^[extracted]

1. **Synthetic data** — generating test data to evaluate the system (what you test with)
2. **Metrics** — checking whether the system's outputs meet quality standards (how you judge results)

These are separate concerns that should be designed independently. Synthetic data defines the test scenarios; metrics define the quality criteria. ^[extracted]

## Methodology Over Tooling

Karam's core thesis: the biggest takeaway from Google's search evaluation experience is the methodology, not the tools. The techniques, processes, and thinking patterns developed for evaluating search systems are transferable to any AI system, regardless of the specific platform or product. ^[extracted] This principle — that evaluation methodology matters more than tooling — applies across all LLM evaluation frameworks. ^[inferred]

## The Evals Labor Problem

Evals consume approximately 80% of feature development time in AI projects. Unlike traditional testing — where some teams tested and some didn't, and the practice was optional — evals are now mandatory for every AI project. The industry lacks established best practices, meaning every team must build their eval infrastructure from scratch. ^[extracted] Evals are custom and subjective for each specific use case, preventing reuse across projects. ^[extracted]


## Aspect-Based Evaluation Techniques

[[entities/yogendra-miraje|Yogendra Miraje]] (FactSet) at AIEF2025 advocated for matching evaluation techniques to the specific aspect of an agentic system being measured:

| Aspect | Eval Technique | Rationale |
|--------|---------------|-----------|
| Blueprint similarity | LLM-as-judge | Semantic comparison of natural language plans |
| Tool selection correctness | Code-based eval | Deterministic check: was the right tool called? |
| Plan-Blueprint alignment | LLM-as-judge | Semantic validation of plan against higher-level plan |
| Report formatting | Human-in-the-loop | Formatting quality is subjective and context-dependent |

Agentic workflows have multiple components (Blueprint Generator, Planner, Executor, Joiner), each with different failure modes. Component-level evals enable targeted debugging. ^[extracted]

Miraje emphasized that a robust eval framework needs: component evals (evaluate each node independently), end-to-end evals (evaluate the complete workflow), multiple techniques (LLM-as-judge, code-based, human-in-the-loop), and aspect-specific metrics (metrics aligned with what each component does). ^[extracted]

Golden Blueprints — manually crafted reference Blueprints for common workflows — serve as the ground truth for Blueprint evaluation via LLM-as-judge comparison. ^[extracted]

## The Two-Circle Eval Model

[[entities/dat-ngo|Dat Ngo]] ([[entities/arize-ai|Arize AI]]) at AIEF2025 introduced the **two-circle model** for AI improvement. The left circle is the familiar loop: collect data → run evals → collect signal → annotate → update. The right circle — often forgotten — is tuning the evals themselves over time, since "the way you collect signal actually adjusts as your application also gets better." Evals are living artifacts requiring continuous maintenance. ^[extracted]

## Encoder-Only Models for Evals

For LLM-as-judge evaluation, encoder-only models (BERT-type architectures) are approximately **10x cheaper** and **1-2 orders of magnitude faster** than autoregressive models, making them practical for large-scale eval runs. They fill the gap between code-based heuristics (cheap but semantically blind) and autoregressive LLM-as-judge (semantically rich but expensive). ^[extracted]

## Platform vs Application Teams

LLM teams split into two specialized niches in a hub-and-spoke model:

| Team | Owns | Metrics |
|------|------|---------|
| Platform | Model gateway routers, infrastructure | Costs, latency |
| Application | Evals, user experience | Output quality, user satisfaction |

Platform teams are analogous to ML/data science teams; application teams are analogous to product/engineering teams. ^[extracted]

## The Evals Toolbox (Scale vs. Quality)

Dat Ngo frames eval types along two axes: scale (how many things you can evaluate cheaply) and quality (how trustworthy the signal is):

| Eval Type | Scale | Quality | Cost |
|-----------|-------|---------|------|
| Code-based heuristics | Very high | Context-dependent | Very low |
| LLM-as-judge (autoregressive) | High | Medium | Medium-high |
| LLM-as-judge (encoder-only) | Very high | Medium-low | Low |
| User feedback | Medium | High | Low (organic) |
| Golden datasets | Low | Very high | High (manual) |

LLM-as-judge is valuable because you don't have to grade manually, but it should be quantified and tuned against golden datasets. ^[extracted]

## Code-Based Evals

Code-based evals (heuristics) are "infinitely cheaper, faster to run" than LLM or human evals. Examples:

- Does the output contain specific keywords?
- Does it match a regex pattern?
- Is it parsable JSON?

These should be the first line of defense in any eval pipeline. ^[extracted]

## User Feedback as Signal

User feedback is described as "an incredible signal." Approximately 30% of production AI teams have implemented user feedback mechanisms, providing high-quality, organic signal about whether the system works for its intended purpose. ^[extracted]

## Evals as Signal Discernment

Dat Ngo reframes evals: they are "actually just a clever word for signal" — a mechanism for understanding what's going well and what's not going well in the massive data produced by LLM applications. No human can inspect every trace manually. ^[extracted]

## RAG Pipeline Evals

For RAG systems, every arrow in the pipeline is an eval opportunity:

1. **Retrieval relevance** — Is the retrieved context helpful for answering the query?
2. **Generation quality** — Does the LLM use the retrieved context well?
3. **End-to-end** — Does the final answer satisfy the user?
4. **Internals** — Question, context, and answer together for full pipeline evaluation

Evaluating at each step enables targeted debugging — if retrieval is poor but generation is good, you know to fix the vector database rather than the prompt. ^[extracted]

## Per-Span Evaluation for Agentic Workflows

[[entities/jim-bennett|Jim Bennett]] ([[entities/galileo|Galileo]]) at AIEF2025 extended the evaluation paradigm beyond RAG pipelines to **multi-step agentic workflows**. In a multi-agent app where an orchestrator calls a sub-agent that calls a tool, binary evaluation tells you nothing about *which* component failed. Bennett advocates measuring metrics at every span:

1. **Tool call correctness** — Did the agent call the right tool with the right parameters?
2. **RAG retrieval quality** — Did the agent retrieve the right information?
3. **Answer coherence** — Does the final answer make sense given the retrieved data?
4. **Hallucination detection** — Is the output grounded in retrieved data?

This per-span approach enables targeted debugging — you can identify whether the orchestrator routed incorrectly, the sub-agent called the wrong tool, or the final answer was incoherent. ^[extracted]

## Custom-Trained Evaluation LLMs

Galileo offers a **custom-trained small language model** specifically designed for evaluation tasks — a model optimized for scoring LLM outputs rather than general-purpose generation. This reflects the principle that you should use a better, more capable LLM for evaluation than the one running in production. ^[extracted] Bennett's cost architecture: production LLM = cheapest model that does the job; evaluation LLM = best model available for scoring. ^[extracted]

## Day-One Evaluation Integration

Bennett prescribes a lifecycle for evaluation integration:

1. **Prompt engineering** — define eval metrics alongside prompts
2. **Model selection** — use evals to compare models
3. **CI/CD** — run evals on every change
4. **Production** — observe eval metrics as users stress-test

"The best time to put evaluations in is as you're doing prompt engineering and model selection. The second best time is now." ^[extracted]

## Related

- [[concepts/rag-evaluation|RAG Evaluation]] — Parallel eval framework for retrieval pipelines
- [[concepts/llm-as-judge|LLM as Judge]] — Automated evaluation method
- [[concepts/domain-expert-prompt-engineering|Domain Expert Prompt Engineering]] — Human-in-the-loop eval phase
- [[concepts/eval-driven-development|Eval-Driven Development]] — Methodology emphasis on evals over algorithms
- [[concepts/adaptive-evals|Adaptive Evals]] — Different eval strategies per application type
- [[concepts/synthetic-data-for-evals|Synthetic Data for Evals]] — Data-centric eval design
- [[concepts/fast-evals|Fast Evals]] — Lightweight retrieval evaluation method
- [[concepts/conversation-output-analysis|Conversation Output Analysis]] — Output-side evaluation paradigm
- [[concepts/ground-truth-evaluation|Ground Truth Evaluation]] — Fact-checking approach with expected content
- [[concepts/evaluation-at-pipeline-steps|Evaluation at Pipeline Steps]] — Unit-testing analogy for LLM pipelines
- [[concepts/stochastic-systems-evaluation|Stochastic Systems Evaluation]] — Google Search evaluation methodology
- [[concepts/methodology-over-tooling|Methodology Over Tooling]] — Process over platform
- [[concepts/evals-labor-problem|Evals Labor Problem]] — 80% of dev time consumed
- [[concepts/evals-are-custom-and-subjective|Evals Are Custom and Subjective]] — No copy-paste evals
- [[entities/muktesh-mishra|Muktesh Mishra]] — Adobe lead engineer on eval strategies
- [[entities/jeff-huber|Jeff Huber]] — Chroma CEO, fast evals methodology
- [[entities/jason-liu-567|Jason Liu (567)]] — Conversation output analysis at AIEF2025
- [[entities/david-karam|David Karam]] — Pi Labs, stochastic systems evaluation methodology
- [[entities/jim-bennett|Jim Bennett]] — Galileo, per-span evaluation for agentic workflows
- [[entities/galileo|Galileo]] — Custom-trained evaluation LLM
