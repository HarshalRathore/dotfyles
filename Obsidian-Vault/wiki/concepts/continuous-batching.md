---
title: Continuous Batching
category: concepts
tags:
- llm-serving
- batching
- inference
- performance
aliases:
- dynamic batching
sources:
- 'How a GPU Actually Works — Akshay Pachaar (X Article) - https://x.com/i/status/2087928032904523980'
summary: "Serving many concurrent sequences on one GPU so each weight read is reused across requests; ~300 concurrent sequences (fp16) flip decode from memory- to compute-bound."
provenance:
  extracted: 0.5
  inferred: 0.4
  ambiguous: 0.1
base_confidence: 0.4
lifecycle: draft
lifecycle_changed: '2026-08-16'
tier: supporting
created: '2026-07-06'
updated: '2026-08-16T00:00:00Z'
relationships:
- target: '[[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound Inference]]'
  type: relates_to
---

# Continuous Batching

**Continuous batching** is the serving technique of keeping many concurrent sequences in flight on one GPU so that each model weight read from main memory is reused across multiple requests. ^[inferred] The X Article "How a GPU Actually Works" (Akshay Pachaar, 2026-08-13) motivates *why* batching raises throughput via arithmetic intensity, but does not cover the mechanics of continuous batching itself (scheduling, iteration-level batching); the description of the technique here is inferred from the article's economics. ^[inferred]

## Why Batching Raises Throughput

In decode, every generated token requires reading all of the model's weights once. Process several requests at the same time and each weight is read once, then used for all of them. ^[extracted]

- **10 concurrent requests ≈ 10× the work per byte, at no extra memory cost.** ^[extracted]
- Nothing else for serving throughput comes close; the only cost is a little latency for each individual user. ^[extracted]
- At 16-bit precision, roughly **300 concurrent sequences** are needed before generation becomes compute-bound. Below that, spare arithmetic capability goes unused — which is exactly why serving systems work so hard to keep batches full. ^[extracted]

## Mechanics Not Covered by the Source

The article does not describe continuous-batching scheduling (e.g. iteration-level batching, swapping completed sequences out and new ones in mid-generation). Those mechanisms are standard practice in serving engines, but the specifics are outside this source. ^[inferred]

## Related

- [[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound Inference]] — why batch size is the lever for memory-bound decode
- [[references/how-a-gpu-actually-works|How a GPU Actually Works]] — source article
- [[misc/web-x-com-i-status-2087928032904523980|How a GPU Actually Works — Akshay Pachaar's X Article]] — the post page

## Sources

- How a GPU Actually Works — Akshay Pachaar (X Article) - https://x.com/i/status/2087928032904523980
