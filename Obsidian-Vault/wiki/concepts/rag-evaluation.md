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
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
summary: "End-to-end evaluation of RAG pipelines using dedicated libraries (Ragas) and reward models, measuring response quality, retrieval quality, and query interpretation."
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
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

## Related

- [[concepts/evaluation-first-development|Evaluation-First Development]] — methodology for building evals early
- [[concepts/task-specific-evals|Task-Specific Evals]] — domain-specific evaluation criteria
- [[concepts/hybridrag|HybridRAG]] — the system being evaluated
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — using eval results to optimize
- [[entities/ragas|Ragas]] — the evaluation library
- [[entities/nvidia|NVIDIA]] — NeMoTron reward model

## Sources

- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
