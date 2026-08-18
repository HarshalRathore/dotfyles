---
title: "GPU Memory Hierarchy"
category: concepts
tags:
  - gpu
  - memory
  - hardware
  - performance
  - llm-inference
aliases:
  - memory ladder
  - GPU memory levels
sources:
  - "How a GPU Actually Works — Akshay Pachaar (X Article) - https://x.com/i/status/2087928032904523980"
summary: "GPU memory as a ladder — register file, shared memory/L1, L2, HBM — each level bigger and slower; bandwidth, not latency, is the hard ceiling."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.4
lifecycle: draft
lifecycle_changed: 2026-08-16
tier: supporting
created: '2026-08-16T00:00:00Z'
updated: '2026-08-16T00:00:00Z'
relationships:
  - target: "[[concepts/arithmetic-intensity|Arithmetic Intensity]]"
    type: related_to
  - target: "[[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound Inference]]"
    type: related_to
  - target: "[[concepts/kv-cache|KV Cache]]"
    type: related_to
---

# GPU Memory Hierarchy

GPU memory is a ladder of four levels; each is bigger than the last and harder to reach. The gap between the ends is enormous: reading a value a thread already holds costs nothing worth measuring, while reaching main memory costs hundreds of times more. ^[extracted]

## The Four Levels

| Level | Roughly how big | Who can see it | Cost to reach |
|---|---|---|---|
| Register file (per-thread storage) | a handful of values | one thread | essentially free |
| Shared memory (scratchpad, alongside L1) | hundreds of KB per block | one thread block | very cheap |
| L2 (shared cache) | tens of MB, whole chip | every block | noticeably slower |
| HBM (main memory) | tens of GB | every block | slowest by a wide margin |

HBM is what people mean by **global memory** or **VRAM**; it holds the weights, the KV cache, and activations — the only level big enough for them. ^[extracted]

## Latency vs Bandwidth

Reaching memory costs two separate things, and the hardware only handles one: ^[extracted]

- **Latency (the wait)** — the hardware hides it by keeping thousands of requests in flight. A warp that stalls is swapped out for a ready one; every resident warp's state is parked on the chip in dedicated storage, so switching takes about one tick. ^[extracted]
- **Bandwidth (the width of the path)** — only so many bytes can move per second, and no amount of overlapping requests changes that. It is a hard ceiling, which is why a chip advertises its memory bandwidth as a headline number. ^[extracted]

## Where the Levels Sit: SMs

A GPU is divided into a hundred or so independent **streaming multiprocessors (SMs)**, each a small self-contained machine owning its own register file, shared memory + L1 cache, and warp schedulers — none of it shared with the SM next door. ^[extracted]

Work arrives as a **thread block**, which stays on one SM until it finishes, and is divided into **warps of 32 threads** moving in lockstep. ^[extracted] The largest allowed block is 1024 threads = 32 warps per SM; batch sizes are almost always multiples of 32 because a partial warp wastes lanes that still take their turn. ^[extracted]

Because every thread in a block lives on the same SM, they can all read the same shared memory — intra-block cooperation costs almost nothing. ^[extracted]

## Counterintuitive: Register Files ≈ L2

On a CPU, storage gets larger as it gets slower in a smooth pyramid. On a GPU the shape is distorted: the register files across the whole chip add up to roughly the same size as L2, because thousands of half-finished threads need somewhere to park their state. ^[extracted]

## Coalesced Access

The hardware fetches fixed-size blocks, not single values. When a warp's threads read neighboring addresses, their requests fall inside the same few blocks and every fetched byte is used; scattered reads pull in whole blocks for a few bytes each, potentially fetching eight times the data actually needed. ^[extracted] Memory layout is therefore a performance decision. ^[inferred]

## The Practical Rule

Performance work is almost entirely about keeping data on the upper levels of the ladder for as long as possible. ^[extracted]

## Related

- [[concepts/arithmetic-intensity|Arithmetic Intensity]] — the ratio that decides which bottleneck the ladder's bottom level creates
- [[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound Inference]] — decode lives at the bottom of the ladder
- [[concepts/kv-cache|KV Cache]] — sits in HBM, a major reason decode is memory-bound
- [[entities/nvidia|NVIDIA]] — maker of the H100/H200 hardware this ladder describes

## Sources

- How a GPU Actually Works — Akshay Pachaar (X Article) - https://x.com/i/status/2087928032904523980
