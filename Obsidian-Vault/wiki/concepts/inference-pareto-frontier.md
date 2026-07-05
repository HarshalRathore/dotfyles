---
title: "Inference Pareto Frontier"
category: concepts
tags:
  - inference
  - pareto-frontier
  - latency
  - cost
  - quality
  - llm-serving
  - optimization
  - nvidia
aliases:
  - pareto frontier inference
  - inference optimization frontier
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "The quality-latency-cost tradeoff surface for LLM inference: the set of optimal operating points where improving one axis requires sacrificing another. Different applications need different points on this frontier."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: expanded_by
  - target: "[[concepts/quantization-inference|Quantization for Inference]]"
    type: shifted_by
  - target: "[[concepts/retrieval-augmented-generation|RAG]]"
    type: shifted_by
  - target: "[[concepts/inference-time-compute|Inference-Time Compute]]"
    type: related_to
  - target: "[[concepts/inference-performance-evaluation|Inference Performance Evaluation]]"
    type: evaluated_on
---

# Inference Pareto Frontier

The **inference Pareto frontier** is the set of optimal operating points for LLM inference across the axes of quality, latency, and cost. It represents the boundary beyond which you cannot improve one dimension without sacrificing another.

## The Three Axes

As articulated by [[entities/kyle-kranen|Kyle Kranen]] at AIEF2025, LLM deployment success depends on three dimensions:

1. **Quality** — The system's ability to complete tasks with sufficient accuracy
2. **Latency** — How fast the task completes, critical for user satisfaction or safety guarantees (e.g., robotics)
3. **Cost** — The per-request expense, determining whether the application meets margin requirements

In practice, these are often visualized as a 2D plot (e.g., TPS per GPU vs. user TPS), with the frontier being the edge of top-rightmost achievable points.

## Application-Specific Operating Points

The key insight is that **different applications need different points on the frontier**, not the same "best" point:

| Application | Latency Priority | Cost Priority | Quality Priority |
|---|---|---|---|
| Medical AI (cancer cures) | Low | Low | Very High |
| IDE tab completion (Cursor) | Very High | Medium | Medium |
| Async agent coding | Low | Medium | High |

For medical AI, latency and cost are "no object" — spending millions on a single cure is justified by the ROI. For IDE tab completion, snappiness is paramount. For async agents, quality and cost matter more than speed.

## Manipulating the Frontier

The frontier is not fixed. It can be shifted and reshaped using techniques that [[entities/kyle-kranen|Kyle Kranen]] identifies as compounding — they stack and interact:

- **Quantization** shifts the frontier toward lower latency and cost (higher batch sizes)
- **RAG** shifts it toward higher quality (at the expense of latency and cost)
- **Disaggregation** shifts it toward higher throughput at fixed latency
- **Model config changes** (parallelism strategies) can alter all three axes

## Compounding Effect

A critical property: these techniques are **not independent**. You can stack RAG to increase quality (worsening latency) and then stack quantization to speed up latency again. The compounding nature means the frontier can be squeezed in multiple directions simultaneously, enabling operating points that would be impossible with any single technique.

## Related

- [[concepts/disaggregated-inference|Disaggregated Inference]] — technique that shifts the frontier
- [[concepts/quantization-inference|Quantization for Inference]] — shifts toward lower cost/latency
- [[concepts/retrieval-augmented-generation|RAG]] — shifts toward higher quality
- [[concepts/inference-time-compute|Inference-Time Compute]] — related optimization dimension
- [[concepts/inference-performance-evaluation|Inference Performance Evaluation]] — how frontier points are measured

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
