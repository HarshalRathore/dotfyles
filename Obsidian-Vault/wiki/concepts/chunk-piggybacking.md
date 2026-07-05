---
title: "Chunk Piggybacking"
category: concepts
tags:
  - inference
  - scheduling
  - prefill
  - decode
  - llm-serving
aliases:
  - chunk piggybacking
  - piggyback scheduling
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "A scheduling technique where prefill computation is piggybacked onto decode steps, partially overlapping the two phases on the same GPU to reduce scheduling conflicts without full disaggregation."
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/in-flight-batching|In-Flight Batching]]"
    type: variant_of
  - target: "[[concepts/disaggregated-inference|Disaggregated Inference]]"
    type: alternative_to
  - target: "[[concepts/kv-cache|KV Cache]]"
    type: manages
---

# Chunk Piggybacking

**Chunk piggybacking** is a scheduling technique for LLM inference where prefill computation is piggybacked onto decode steps, partially overlapping the two phases on the same GPU to reduce scheduling conflicts without requiring full disaggregation.

## Context

When prefill and decode requests share the same GPU (aggregated inference), the scheduler faces a conflict: process new tokens (prefill) or continue generating (decode). [[concepts/in-flight-batching|In-flight batching]] manages this by interleaving requests, but there's always a scheduling cost.

Chunk piggybacking is one technique to handle this — the scheduler overlaps prefill chunks with decode steps, effectively hiding some of the prefill cost within decode computation time.

## Tradeoffs

Chunk piggybacking reduces but does not eliminate scheduling conflicts. For full elimination, [[concepts/disaggregated-inference|disaggregated inference]] splits prefill and decode onto separate GPU sets entirely.

## Related

- [[concepts/in-flight-batching|In-Flight Batching]] — the broader scheduling framework
- [[concepts/disaggregated-inference|Disaggregated Inference]] — the alternative that eliminates conflicts entirely
- [[concepts/kv-cache|KV Cache]] — the shared resource being scheduled

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
