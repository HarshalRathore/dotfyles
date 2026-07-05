---
title: "RAG Evaluation"
tags:
  - rag
  - evaluation
  - metrics
  - ragas
  - llm-as-judge
  - reward-model
  - testing
aliases:
  - RAG Evaluation Metrics
  - End-to-End RAG Evaluation
sources:
  - "[[sources/watchv=-tgqa8fzf80]]"
  - "[[sources/watchv=w1mizchnkfa]]"
  - "AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak"
summary: "End-to-end evaluation of RAG pipelines using dedicated libraries (Ragas) and reward models, measuring response quality, retrieval quality, and query interpretation. Includes eval spectrum from expert review to automated metrics."
provenance:
  extracted: 0.70
  inferred: 0.23
  ambiguous: 0.07
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
relationships:
  - target: "[[concepts/hybridrag|HybridRAG]]"
    type: related_to
  - target: "[[entities/ragas|Ragas]]"
    type: uses
---

# RAG Evaluation

RAG Evaluation is the practice of measuring RAG pipeline quality across multiple dimensions — the response, the retrieval, and the query interpretation — using dedicated evaluation frameworks and models. ^[extracted]

## Ragas Library

[[entities/ragas|Ragas]] is a library purpose-built for end-to-end RAG evaluation. It evaluates three dimensions:

1. **Response quality** — is the generated answer correct, coherent, and helpful?
2. **Retrieval quality** — did the retrieval step find the right passages/nodes?
3. **Query interpretation** — did the system correctly interpret what the user asked?

Evaluation metrics include: faithfulness, answer relevancy, precision, recall, helpfulness, correctness, coherence, complexity, verbosity. ^[extracted]

### Using Ragas

- Installed via `pip install ragas`
- Uses an LLM under the hood to compute evaluation metrics
- Default integration is with GPT, but supports bring-your-own-model via API
- Provides flexibility to wire up any custom model ^[extracted]

## Reward Model Evaluation

An alternative approach is using a dedicated reward model to evaluate RAG outputs:

- **NeMoTron 340B** — NVIDIA's 340 billion parameter reward model
- Purpose-built to judge the responses of other LLMs on five quality parameters
- Trained specifically as a response evaluator (reward model), not a general-purpose LLM
- Complements Ragas for the response-evaluation component of the RAG pipeline ^[extracted]

## Eval Spectrum: Harvey's Approach

In domain-specific applications like legal AI, no single eval method suffices. Harvey uses a spectrum of evals across two axes — fidelity vs. cost: ^[extracted]

| Fidelity | Cost | Method |
|---|---|---|
| High | High | Expert reviews — domain experts directly review outputs, analyze them, and write reports |
| Medium | Medium | Expert-labeled criteria sets — curated by experts, evaluated synthetically or automatically |
| Low | Low | Automated quantitative metrics — retrieval precision/recall, document-folder matching, keyword presence |

Harvey invests more time in evaluation than in algorithms or "fancy retrieval techniques." ^[extracted] This [[concepts/eval-driven-development|eval-driven development]] approach is critical when engineers lack domain expertise to judge output quality. ^[extracted]

## Eval Spectrum: Intuit's Approach

Intuit (TurboTax) uses a phased evaluation system for their LLM-powered tax explanations at 44M annual returns scale: ^[extracted]

| Phase | Method | Who |
|---|---|---|
| 1. Manual evaluation | Domain experts review outputs | Tax analysts |
| 2. Expert prompt engineering | Tax analysts write/refine prompts | Tax analysts |
| 3. Automated evaluation | LLM-as-judge on golden datasets | Automated |

Three evaluation pillars: accuracy, relevancy, and coherence. ^[extracted]

## Evaluation Dimensions

| Dimension | What It Measures | Tools |
|---|---|---|
| Faithfulness | Does the response stay grounded in retrieved context? | Ragas |
| Answer Relevancy | Does the response address the query? | Ragas |
| Precision/Recall | Are retrieved results comprehensive and relevant? | Ragas |
| Helpfulness | Is the response useful to the user? | Ragas |
| Correctness | Is the factual information accurate? | Ragas / Reward Model |
| Coherence | Is the response logically structured? | Ragas |
| Complexity/Verbosity | Is the level of detail appropriate? | Ragas |

## Limitations

Ragas is described as "not comprehensive but really good" — it provides strong flexibility but should be complemented with [[concepts/task-specific-evals|task-specific evals]] that measure actual business outcomes. ^[ambiguous]

As of 2025, embedding models achieve approximately **80% average retrieval accuracy across ~100 datasets**, with significant variance (20–95% per dataset). This means for common retrieval tasks, the retrieval step is already highly accurate, and evaluation focuses on the remaining 20% headroom. ^[extracted]

## Related

- [[concepts/evaluation-first-development|Evaluation-First Development]] — methodology for building evals early
- [[concepts/task-specific-evals|Task-Specific Evals]] — domain-specific evaluation criteria
- [[concepts/hybridrag|HybridRAG]] — the system being evaluated
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — using eval results to optimize
- [[concepts/eval-driven-development|Eval-Driven Development]] — Harvey's evaluation-first approach
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Intuit's phased eval system
- [[entities/ragas|Ragas]] — the evaluation library
- [[entities/nvidia|NVIDIA]] — NeMoTron reward model

## Sources


- AIEF2025 - RAG in 2025: State of the Art and the Road Forward — Tengyu Ma, MongoDB (acq. Voyage AI) - https://www.youtube.com/watch?v=W_CYk2ogcDI
- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
- AIEF2025 - Scaling Enterprise-Grade RAG: Lessons from Legal Frontier - Calvin Qi (Harvey), Chang She (Lance) - https://www.youtube.com/watch?v=W1MiZChnkfA
- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
