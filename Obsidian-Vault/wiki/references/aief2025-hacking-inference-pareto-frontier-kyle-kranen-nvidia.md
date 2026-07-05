---
title: "AIEF2025 - Hacking the Inference Pareto Frontier — Kyle Kranen, NVIDIA"
tags:
  - inference
  - pareto-frontier
  - disaggregation
  - kv-cache
  - quantization
  - llm-serving
  - nvidia
  - conference-talk
  - aief2025
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "Kyle Kranen (NVIDIA) presents how to manipulate the quality-latency-cost Pareto frontier for LLM inference through techniques like disaggregation, quantization, and RAG, with real production data from NVIDIA's multi-million-dollar cloud operations."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-pareto-frontier|Inference Pareto Frontier]]"
    type: related_to
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: related_to
  - target: "[[entities/nvidia|NVIDIA]]"
    type: related_to
  - target: "[[entities/kyle-kranen|Kyle Kranen]]"
    type: related_to
  - target: "[[entities/nvidia-dynamo|NVIDIA Dynamo]]"
    type: related_to
---

# AIEF2025 - Hacking the Inference Pareto Frontier — Kyle Kranen, NVIDIA

> Talk at AI Engineer World's Fair 2025. Kyle Kranen (Architect and Lead, NVIDIA Dynamo) presents a framework for optimizing LLM inference across the quality-latency-cost triangle, with production data from NVIDIA's multi-million-dollar cloud operations.

## Summary

Kyle Kranen, who previously managed NVIDIA's largest inference deployment with a multi-million-dollar quarterly cloud bill and now leads the open-source NVIDIA Dynamo project, presents a practical framework for manipulating the inference Pareto frontier. The core thesis: success in LLM deployment depends on aligning the system's performance characteristics with the specific requirements of the application it serves.

## Key Framework: Quality, Latency, Cost

Kranen identifies three axes for evaluating LLM deployments:

1. **Quality** — Whether the system can complete tasks with sufficient accuracy
2. **Latency** — Whether the task completes fast enough for user satisfaction or safety guarantees (e.g., robotics)
3. **Cost** — Whether the LLM can complete the task cheaply enough per request to meet margin requirements

These three form a Pareto frontier: the edge representing the best achievable tradeoffs. For any given application, you typically need one specific point on this frontier — your operating latency and quality — and then minimize cost for that point.

## Application-Specific Requirements

Different applications require very different points on the Pareto frontier:

- **Cancer cures (medical AI)** — Latency and cost are "no object." Spending millions on a single cure is justified by the ROI if it works.
- **Tab completion (IDEs like Cursor)** — Extremely latency-sensitive. Users expect near-instant recommendations.
- **Async code commits (Cursor Agent mode)** — Less latency-sensitive, but quality and cost both matter. The user's expectations about speed vary by use case.

## Techniques for Manipulating the Frontier

Kranen catalogs several well-known techniques and their effects:

- **Quantization** — Speeds up latency and decreases cost by enabling higher batch sizes
- **Retrieval-Augmented Generation (RAG)** — Generally increases latency and cost but improves quality
- **Reasoning models** — Produce more tokens to "think," increasing both cost and quality
- **Model parallelism/config changes** — Can significantly alter speed, cost, and theoretically quality (e.g., non-haloed context parallelism)

## Compounding Techniques

A key insight: these techniques are **composable**. You can stack RAG to increase quality (at the cost of latency) and then stack quantization to speed up latency again. The tools are not independent and can be combined in sometimes non-obvious ways to squeeze the Pareto frontier in different directions.

## Three Drivers: Scale, Structure, Dynamism

Beyond individual techniques, Kranen identifies three meta-drivers for modifying the frontier:

1. **Scale** — e.g., disaggregation of prefill and decode phases
2. **Structure** — model architecture and parallelism strategies
3. **Dynamism** — adapting to varying workloads in real time

## Disaggregation Deep Dive

Kranen presents disaggregation as the primary scale technique. By splitting prefill (compute-bound) and decode (memory-bound) phases onto different GPU sets, you achieve:

- Granular load matching for phases with very different resource profiles
- Simpler scheduling (no conflicts between prefill and decode requests on the same machine)
- Up to **2× tokens per second per GPU** at fixed latency (measured on Llama 70B with 16 H100s)

### Disaggregation Tradeoffs

Disaggregation performance depends on the use case:
- **Low input length** — Little to no speedup (prefill-light, mostly decode)
- **Middle range** — Best benefit
- **Very high latency/high throughput** and **very low latency/low throughput** — Aggregated inference reconverges with or slightly exceeds disaggregated

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
