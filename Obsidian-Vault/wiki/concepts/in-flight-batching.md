---
title: "In-Flight Batching"
category: concepts
tags:
  - inference
  - batching
  - scheduling
  - llm-serving
  - prefill
  - decode
aliases:
  - in-flight batching
  - continuous batching
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "A scheduling technique for LLM inference where new requests are batched with ongoing generation, allowing mixed prefill and decode requests on the same GPU — but with inherent scheduling conflicts."
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
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: alternative_to
  - target: "[[concepts/kv-cache|KV Cache]]"
    type: manages
  - target: "[[concepts/chunk-piggybacking|Chunk Piggybacking]]"
    type: relates_to
---

# In-Flight Batching

**In-flight batching** (also called continuous batching) is a scheduling technique for LLM inference where new requests are batched together with requests that are already in the middle of generation. It allows mixed prefill and decode requests to share the same GPU, but introduces scheduling conflicts.

## How It Works

In traditional batched inference, the GPU waits for all requests in a batch to complete before processing the next batch. In in-flight batching:

- When a request finishes generating, its slot becomes available
- A new request's prefill can immediately fill that slot
- Multiple ongoing decode requests share GPU resources simultaneously

This maximizes GPU utilization by keeping compute busy even when some requests are still generating.

## The Scheduling Conflict Problem

When prefill and decode requests share the same machine, the scheduler must decide at each step:

- Process new tokens (prefill) — compute-heavy
- Continue generating existing tokens (decode) — memory-heavy

This creates a scheduling conflict. The scheduler must balance between accepting new work and continuing existing work, and this decision always has a cost.

## Related Techniques

- **Chunk piggybacking** — A technique where prefill work is piggybacked onto decode steps, partially overlapping the two phases on the same GPU
- **Disaggregation** — The alternative approach: eliminate the conflict entirely by running prefill and decode on separate GPU sets

## Tradeoffs

| Aspect | In-Flight Batching | Disaggregation |
|---|---|---|
| GPU utilization | High (keeps all GPUs busy) | Potentially higher (specialized allocation) |
| Scheduling complexity | High (conflicts to resolve) | Low (no conflicts) |
| Implementation complexity | Lower | Higher |
| Performance gain | Moderate | Up to 2× (measured) |

## Related

- [[concepts/disaggregated-inference|Disaggregated Inference]] — eliminates the scheduling conflict
- [[concepts/kv-cache|KV Cache]] — the shared resource that creates scheduling pressure
- [[concepts/chunk-piggybacking|Chunk Piggybacking]] — related scheduling technique

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
