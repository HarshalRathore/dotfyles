---
title: "Strategies for LLM Evals — Taylor Jordan Smith, Red Hat"
tags:
  - reference
  - talk
  - ai-engineering
  - evaluation
  - benchmarking
  - llm
sources:
  - "[[sources/watchv=89nuzmkokik]]"
summary: "Workshop at AI Engineer World's Fair 2025 covering a tiered approach to LLM evaluation — from system performance benchmarking (GuideLLM) through factual accuracy (lm-eval-harness/MMLU-Pro) to safety testing (PromptFu) — with hands-on exercises using VLLM on Red Hat infrastructure."
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Strategies for LLM Evals — Taylor Jordan Smith, Red Hat

> Workshop at AI Engineer World's Fair 2025. Taylor Jordan Smith, AI developer advocate at Red Hat AI Business Unit, walks through a tiered strategy for evaluating LLMs in production — using GuideLLM for system performance, lm-eval-harness for factual accuracy, and PromptFu for safety/bias testing — with hands-on labs on Red Hat infrastructure.

## Key Ideas

### Evaluation vs. Benchmarking
Evaluation is a comprehensive process to assess a model end-to-end across many components. Benchmarking is a subcategory: controlled, specific datasets and tasks used to compare models against one another (e.g., MMLU scoring, latency comparison across hardware). Both are needed but serve different purposes. ^[extracted]

### The Evaluation Pyramid
Model evaluation follows a tiered pyramid analogous to the software testing pyramid:

1. **System Performance (base)** — latency, throughput, GPU utilization, time-to-first-token, inter-token latency. Without this, nothing else matters: "No matter how good your model is, if it's not fast, if it's not reliable, if it's not affordable, you're screwed." ^[extracted]
2. **Formatting** — ensuring structured outputs (JSON, specific formats) are consistently produced.
3. **Factual Accuracy** — MMLU, MMLU-Pro, and similar benchmarks measuring correctness across subjects.
4. **Safety & Bias** — guardrails against harmful outputs, bias mitigation, detecting satire vs. fact.
5. **Custom Evals** — application-specific evaluation criteria reverse-engineered from business outcomes.

The workshop moved up this pyramid across three hands-on activities. ^[extracted]

### Incremental Approach to Enterprise Eval
Organizations typically follow a maturity path: chatbot → RAG → agents. Most Red Hat customers are in the first three phases. Evaluation should be layered incrementally too — start with component-level tests (chunk retrieval, latency), then expand to full system eval covering integration and end-to-end experience. This mirrors the software engineering pyramid: unit → integration → UI end-to-end. ^[extracted]

### The Need for CI/CD in Evals
During Q&A, an audience member asked about connecting evaluations to production monitoring. The speaker framed this as "CI/CD automation implementation of an evaluation framework" — evaluations should be automated and run continuously, just like unit tests in traditional software engineering. ^[extracted]

## Hands-On Activities

### Activity 1: System Performance with GuideLLM
- Deployed an IBM Granite model using [[entities/vllm|VLLM]] inference runtime in a container on a RHEL system with an L4 GPU
- Used [[entities/guidellm|GuideLLM]] to run latency and throughput benchmarks
- Adjusted input/output token configurations to simulate different use cases (chatbot vs. RAG)
- Measured mean, median, P99 performance for metrics like inter-token latency and time-to-first-token
- Output in JSON format for detailed analysis ^[extracted]

### Activity 2: Factual Accuracy with lm-eval-harness
- Ran [[concepts/mmlu-pro|MMLU-Pro]] benchmark through [[entities/lm-eval-harness|lm-eval-harness]]
- Framework supports many other eval benchmarks beyond MMLU
- Speaker noted that you can customize by forking MMLU and changing data sources to use proprietary datasets ^[extracted]

### Activity 3: Safety Evaluation with PromptFu
- Used [[entities/promptfu|PromptFu]], Red Hat's customizable safety evaluation tool
- PromptFu supports a wide range of custom tests beyond safety-focused examples
- Available as open-source on GitHub with many examples ^[extracted]

## Entities Mentioned

- [[entities/taylor-jordan-smith|Taylor Jordan Smith]] — AI developer advocate, Red Hat
- [[entities/red-hat|Red Hat]] — AI Business Unit, workshop host
- [[entities/guidellm|GuideLLM]] — system performance benchmarking tool
- [[entities/lm-eval-harness|lm-eval-harness]] — benchmark evaluation framework
- [[entities/promptfu|PromptFu]] — safety evaluation tool
- [[entities/vllm|VLLM]] — inference runtime used to serve models
- [[entities/nvidia|NVIDIA]] — L4 GPU hardware

## Production LLM Challenges

The talk identified several Gen AI drawbacks that evaluation helps address:

- **Policy restrictions** — Enterprise AI tool access is typically locked down
- **Legal exposure** — Models say "crazy stuff" (the glue incident, satire detection failures) — guardrails needed
- **Bias and discrimination** — Most internet training data is Eurocentric/US-centric
- **Cost and performance** — Inference cost at scale is a major challenge
- **Knowledge cutoff** — Frontier models have stale training data; RAG/agents compensate
- **Synthetic data drift** — Successive generations of AI models consume more AI-generated data, drifting from human-anchored data — leading to loss of output diversity and precision ^[extracted]

## Inference Pain Points

Enterprises face specific inference challenges that evaluation must address:

- Manual evaluation runs with varied parameters are complex
- Compute load for performance evaluation is taxing
- Dataset compatibility with target models
- Resource optimization for GPU efficiency
- Cost estimation described as "black magic" — requires backwards-mapping inference performance to tokens ^[extracted]

## Related

- [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]] — the tiered framework presented in this talk
- [[concepts/inference-performance-evaluation|Inference Performance Evaluation]] — system-level benchmarking for LLMs
- [[concepts/evaluation-first-development|Evaluation-First Development]] — complementary methodology
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — downstream use of eval results
- [[concepts/ai-regression-testing|AI Regression Testing]] — regression detection through continuous eval
- [[concepts/task-specific-evals|Task-Specific Evals]] — custom evaluation criteria at the pyramid's top

## Sources

- AI Engineer World's Fair 2025 — Strategies for LLM Evals (GuideLLM, lm-eval-harness, OpenAI Evals Workshop). Taylor Jordan Smith. https://www.youtube.com/watch?v=89NuzmKokIk
