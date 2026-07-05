---
title: "Model Parallelism in Inference"
category: concepts
tags:
  - inference
  - parallelism
  - model-parallelism
  - context-parallelism
  - llm-serving
  - optimization
aliases:
  - model parallelism
  - inference parallelism
  - context parallelism
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "Distributing model computation across multiple GPUs during inference, including context parallelism (splitting the attention window across devices), to alter speed, cost, and quality characteristics."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-pareto-frontier|Inference Pareto Frontier]]"
    type: shifts
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: relates_to
  - target: "[[concepts/context-length-scaling|Context Length Scaling]]"
    type: enables
---

# Model Parallelism in Inference

**Model parallelism in inference** is the practice of distributing a model's computation across multiple GPUs during inference to alter the speed, cost, and quality characteristics of the deployment.

## Types of Parallelism

### Tensor Parallelism
Splits individual layer computations across GPUs. Each GPU handles a portion of the matrix operations, then communicates results. This is the most common form of model parallelism.

### Context Parallelism
Splits the attention window (the context being processed) across GPUs. Unlike tensor parallelism, which splits the model, context parallelism splits the input data.

### Non-Haloed Context Parallelism
As noted by [[entities/kyle-kranen|Kyle Kranen]] at AIEF2025, non-haloed context parallelism is a variant that can theoretically improve quality by processing the full context without the quality degradation that halo/boundary effects introduce in some parallelism schemes.

## Effect on the Pareto Frontier

Changing how a model is represented in parallel can significantly alter:

- **Speed** — More GPUs can process larger batches or longer contexts
- **Cost** — More GPUs = higher infrastructure cost, but potentially better throughput per dollar
- **Quality** — Non-haloed context parallelism can theoretically improve quality by eliminating boundary artifacts

## Relation to Disaggregation

[[concepts/disaggregated-inference|Disaggregated inference]] is a form of structural parallelism: instead of parallelizing within a layer, it parallelizes across phases (prefill vs decode). Both are structural techniques for manipulating the Pareto frontier.

## Related

- [[concepts/inference-pareto-frontier|Inference Pareto Frontier]] — parallelism shifts the frontier
- [[concepts/disaggregated-inference|Disaggregated Inference]] — structural parallelism across phases
- [[concepts/context-length-scaling|Context Length Scaling]] — parallelism enables longer contexts

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
