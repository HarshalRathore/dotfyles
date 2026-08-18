---
title: "How a GPU Actually Works"
category: references
tags: [gpu, llm-inference, memory-bandwidth, arithmetic-intensity, roofline, x-article]
aliases: [how-a-gpu-actually-works]
relationships:
  - target: '[[concepts/compute-bound-vs-memory-bound]]'
    type: related_to
  - target: '[[concepts/gpu-memory-hierarchy]]'
    type: related_to
  - target: '[[concepts/arithmetic-intensity]]'
    type: related_to
sources:
  - "https://x.com/i/status/2087928032904523980"
  - "https://x.com/i/article/2083865844082466816"
created: "2026-08-16T00:00:00Z"
updated: "2026-08-16T00:00:00Z"
summary: "Akshay Pachaar's X Article: arithmetic is cheap, moving data is expensive. Memory ladder, warp divergence, latency hiding, arithmetic intensity, and the roofline break-even."
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-16"
tier: supporting
affinity: {}
promotion_status: misc
stub: false
---

# How a GPU Actually Works

**Author:** [[entities/akshay-pachaar|Akshay Pachaar]] (@akshay_pachaar), co-founder of [[entities/dailydoseofds|Daily Dose of Data Science]] — X Article, August 13, 2026. Metrics: 655 likes, 1,234 bookmarks, ~201k views. ^[extracted]

> **tl;dr** A GPU's entire design follows from one asymmetry: doing arithmetic is cheap, fetching the numbers to do arithmetic on is expensive, and memory bandwidth is the bottleneck. GPUs answer with thousands of simple lockstep units (warps of 32), hide latency by parking ~64 warps per compute unit, and organize memory as a ladder (registers → shared memory → L2 → HBM). The central number is work per byte (arithmetic intensity): a chip's break-even is peak FLOPs / peak bandwidth (~300 ops/byte at fp16 on current hardware). Decode runs ~1 op/byte — ~300× below break-even, capping a 70B model near 24 tok/s — while prefill is compute-bound. Every optimization is either increasing work per fetch (batching, tiling) or decreasing bytes fetched (fusion, FlashAttention, quantization, coalesced layout). ^[extracted]

## Overview

The article opens with the puzzle every LLM server operator hits: a top-end GPU rated near a thousand trillion arithmetic ops per second (the "spec sheet" number) produces only a few dozen tokens per second on a 70B model, with the utilization monitor reading high. Nothing is broken — the arithmetic capability is mostly idle because the workload is starved for data. The piece builds intuition from the ground up (no CUDA required) so that quantization, speculative decoding, and continuous batching stop being a list of tricks and become consequences of one ratio. ^[extracted]

## The One Asymmetry That Explains Almost Everything

- **Arithmetic is cheap; fetching data is expensive** — the opposite of naive intuition, and not a small gap. ^[extracted]
- **Workshop/corridor metaphor:** arithmetic units are workbenches packed into the middle of the room; data lives in a warehouse connected by one corridor. The benches consume material far faster than the corridor delivers it — adding benches changes nothing, because the corridor (memory bandwidth) was already the limit. ^[extracted]
- Every performance technique later in the article is a way of getting more work out of each trip down that corridor. ^[extracted]

## Why the Gap Keeps Widening

- Across recent accelerator generations, arithmetic capability has grown several times faster than memory bandwidth. ^[extracted]
- The imbalance gets worse with every generation; techniques that reduce data movement gain value over time, and peak arithmetic figures become less predictive of real performance. ^[inferred]

## GPU Design: Thousands of Simple Units Sharing One Controller

- **CPU bet:** spend silicon on caches, branch prediction, and reordering to make one instruction stream finish quickly; a high-end server CPU advances only a few hundred threads at once. ^[extracted]
- **GPU bet:** graphics (every pixel runs the same program on different data) and neural networks (every tensor element gets the same treatment) mean one controller can steer thousands of arithmetic units executing the same instruction on different values — SIMT in spirit, though the article does not use the acronym. ^[extracted]
- Result: a data-center GPU advances tens of thousands of threads per clock tick on a similar power budget; each GPU thread is a weaker thing — one lane in a very wide, very simple machine. ^[extracted]
- **Warp = the unit the chip actually works with:** threads are handled in fixed groups of 32 that move in lockstep and share a single instruction. ^[extracted]

## The One Place This Leaks: Warp Divergence

- Because a warp shares one instruction, its 32 threads cannot disagree: if code branches on data, the hardware runs **both paths in sequence**, switching off threads not on the current path. The warp takes as long as both branches added together. ^[extracted]
- It only costs when the disagreement is *inside* a warp; different warps taking different paths is free. Data-dependent branching in a tight inner loop is worth avoiding; library calls rarely hit it. ^[extracted]

## The GPU Does Not Make Waiting Shorter — It Makes Waiting Invisible

- A CPU tries to prevent the wait (caches, prediction); a GPU accepts it and always has something else to do during it. ^[extracted]
- **Mechanism:** a single compute unit keeps ~64 warps resident while only one executes per tick. When a warp stalls on a memory fetch, the scheduler switches to a ready warp in **one tick** (vs. hundreds of cycles of state save/restore on a CPU — GPU warp state is parked on-chip in dedicated storage). ^[extracted]
- The enormous fast on-chip storage exists so thousands of threads can sit half-finished, not to make any one thread faster. ^[extracted]
- **Why utilization monitors lie:** they usually report whether *any work was scheduled*, not whether the ALUs did useful work — a 100% "utilized" data-starved GPU looks identical to one at full throughput. ^[extracted]

## The Practical Version: Batch Size

- A GPU needs a large pile of independent work; a small job finishes at roughly memory-system speed with most of the chip idle. This is design working as intended — hence batch size in every serving discussion. ^[extracted]

## The Memory Ladder

| Level | Rough size | Who can see it | Cost to reach |
|---|---|---|---|
| Register file | handful of values per thread | one thread | essentially free |
| Shared memory (scratchpad, next to L1) | hundreds of KB per block | one block of threads | very cheap |
| L2 | tens of MB, whole chip | every block | noticeably slower |
| HBM (global memory / VRAM) | tens of GB | every block | slowest by a wide margin |

- The two ends differ by hundreds of times in reach cost; weights sit at the bottom level — the only one big enough to hold them. ^[extracted]
- **Two costs, one hidden:** latency (the wait) is almost entirely hidden by overlapping thousands of requests; bandwidth (the width of the path) is a hard ceiling no overlap changes — the headline number on the spec sheet. All calculations in the article are about bandwidth. ^[extracted]

### Where the Levels Sit: SMs and Thread Blocks

- A GPU is ~100 independent streaming multiprocessors (SMs), each a small self-contained machine with its own register file, shared memory, L1, and warp schedulers — nothing shared with the SM next door. ^[extracted]
- Work arrives as a **thread block** that stays on one SM; e.g. 256 threads → 8 warps of 32. You never choose the division into 32s; you pick the batch size. ^[extracted]
- Max thread block = 1024 threads = 32 warps per SM. Batch sizes are multiples of 32 for a reason: 250 threads still gets 8 warps, but the last warp runs 26/32 lanes while 6 idle. ^[extracted]
- Shared memory exists because all threads in a block share an SM — intra-block cooperation is nearly free. ^[extracted]
- **Counterintuitive:** the register files across the whole chip add up to roughly the size of L2 — a distorted pyramid, because thousands of half-finished threads need somewhere to park state. ^[extracted]

## Work per Byte: The Number That Decides Everything

- **Arithmetic intensity** (formal name): ops performed ÷ bytes pulled from main memory — how much value each trip down the corridor yields; predicts performance before measuring. ^[extracted]
- Elementwise (e.g. multiply array by 2): each value used once ≈ **1 op/fetch**. ^[extracted]
- Matmul 1024×1024: each fetched value multiplies against 1024 values of the other matrix ≈ **~1000 ops/fetch** — a thousandfold difference from *reuse alone*, which is why matmul is the operation accelerators genuinely excel at. ^[extracted]

## The Break-Even Ratio (Roofline)

- Threshold = peak arithmetic ÷ peak bandwidth. Current data-center GPU at 16-bit ≈ **300 ops/byte**. ^[extracted]
- **H100 SXM5:** 989 TFLOPS dense BF16 ÷ 3.35 TB/s = **295 ops/byte**. **H200:** same die, same 989 TFLOPS, but 4.8 TB/s → **206 ops/byte**. ^[extracted]
- Below break-even → memory-bound (more arithmetic changes nothing); above → compute-bound (more bandwidth changes nothing). A *lower* threshold is good: more workloads clear the bar, which is why a bandwidth-only upgrade still speeds up inference. ^[extracted]
- The threshold belongs to the hardware; where your workload sits relative to it belongs to you. The picture is the standard **roofline model**. ^[extracted]

## Why Generating a Token Is the Worst Case

- One token = one full forward pass reading every weight once. A weight's entire job is one multiply + one add = 2 ops per use. ^[extracted]
- 70B params → **140B ops/token**; at fp16, 2 bytes/weight → **140 GB** moved → **1 op/byte** — roughly 300× below break-even. The arithmetic units sit idle; nothing is wrong with your setup. ^[extracted]
- **The number it predicts:** 140 GB ÷ ~3.3 TB/s = **42 ms/token ≈ 24 tok/s** at batch 1 — a floor no software cleverness moves. Token rate is a division: bytes per token ÷ bytes per second. ^[extracted]

## Prefill Behaves the Opposite Way

- Prefill processes all prompt tokens at once, so each fetched weight is used across all of them — work per byte climbs immediately and prefill is usually **compute-bound**. Same model, two phases, opposite bottlenecks; much confusion comes from treating them as one thing. ^[extracted]

## Every Optimization Is One of Two Moves

**Increase work per fetch:**
- **Batching:** 10 concurrent requests = 10× work/byte at no extra memory cost; ~300 concurrent sequences at fp16 before generation becomes compute-bound. Only cost: per-user latency. ^[extracted]
- **Tiling** (keeping chunks on-chip to reuse them many times). ^[extracted]

**Decrease bytes fetched:**
- **Operator fusion:** 3 separate elementwise ops = 6 memory trips; fused = 2 trips (intermediates never leave the chip) — compilers that fuse help elementwise-heavy models, do nothing for pure matmul. ^[extracted]
- **Keeping data close — FlashAttention:** ordinary attention writes a large intermediate to main memory then reads it back; FA computes in tiles that stay on-chip, so the intermediate never touches main memory. Arithmetic unchanged, memory traffic collapses. ^[extracted]
- **Quantization:** 8-bit halves every weight → 140 GB → 70 GB, doubling work/byte and the ceiling (~24 → ~48 tok/s for 70B); accuracy trade-off is a real engineering decision, not free. ^[extracted]
- **Memory layout/coalescing:** hardware fetches fixed-size blocks; scattered reads pull whole blocks to use a few bytes — up to **8× wasted bandwidth**. Reading a matrix along the wrong axis costs most of your bandwidth with no arithmetic change. ^[extracted]

## Small Jobs Have a Floor of Their Own

- CPU dispatch has a fixed per-job cost; many small ops → **overhead-bound** (neither memory- nor compute-bound), symptom = GPU looks idle while CPU works hard. Fixes: fewer larger ops, or capturing a sequence to replay as one unit ([[concepts/cuda-graph-for-llm-serving|CUDA Graph for LLM Serving]]). ^[extracted]

## How to Tell Which Situation You Are In

- Measure achieved bytes/s and ops/s against hardware peaks. ^[extracted]
- For LLM serving: generation is memory-bound in essentially every realistic configuration — optimize batch size, precision, and KV cache size first; those three dominate almost anything else. ^[extracted]

## What Stays True When the Hardware Changes

- **Changes:** the numbers — capacity, bandwidth, arithmetic throughput (arithmetic fastest-growing), and ever-smaller precision formats. ^[extracted]
- **Doesn't change:** the shape — arithmetic stays cheaper than data movement, the ladder keeps its levels, work per byte keeps deciding which ceiling you hit. ^[extracted]
- Because arithmetic outgrows bandwidth, the break-even ratio keeps **rising**: workloads that were compute-bound become memory-bound on newer hardware with no code change. Bet on data-movement reduction; peak FLOPs is the least predictive number on a spec sheet. ^[extracted]

## Conclusion & Promised Follow-ups

- The article explicitly defers kernel-writing details: "kernel writing before this framework tends to produce code that is fast for reasons the author cannot explain, and slow for reasons they cannot find." ^[extracted]
- Upcoming pieces: reading profiler output against the break-even line, how the KV cache changes the memory picture as context grows, and what happens inside a serving engine when it decides how to batch. ^[extracted]

## Concepts

- [[concepts/arithmetic-intensity|Arithmetic Intensity]] — the central ratio (work per byte) ^[inferred]
- [[concepts/gpu-memory-hierarchy|GPU Memory Hierarchy]] — the four-level ladder ^[inferred]
- [[concepts/compute-bound-vs-memory-bound|Compute vs Memory Bound Inference]] — the break-even framing generalized ^[inferred]
- [[concepts/gpu-utilization|GPU Utilization]] — why the monitor number is misleading ^[inferred]
- [[concepts/autoregressive-generation|Autoregressive Generation]] — decode as the memory-bound phase ^[inferred]
- [[concepts/kv-cache|KV Cache]] — HBM resident, flagged as a first-order serving lever and a promised follow-up ^[inferred]
- [[concepts/disaggregated-inference|Disaggregated Inference]] — prefill vs. decode have opposite bottlenecks ^[inferred]
- [[concepts/fp8-compute|FP8 Compute on Hopper]] — precision downsizing as a bytes-fetched reduction ^[inferred]

## Entities

- [[entities/akshay-pachaar|Akshay Pachaar]] — author
- [[entities/dailydoseofds|Daily Dose of Data Science]] — publisher (co-founded by the author)
- [[entities/nvidia|NVIDIA]] — H100 SXM5 / H200 hardware examples

## Open Questions

- The article's numbers are illustrative ("a current data center GPU") — no specific software stack or measurement methodology is cited; the 24 tok/s figure is a pure bandwidth floor, not a measured throughput. ^[ambiguous]
- The promised KV cache analysis is deferred; the article says only that it "changes the memory picture as context grows." ^[ambiguous]
- Whether ~300 concurrent sequences is the fp16 break-even for the named chips specifically, or a round-number approximation. ^[ambiguous]

## Related

- [[misc/web-x-com-i-status-2087928032904523980|How a GPU Actually Works — Akshay Pachaar's X Article]] — source post metadata
