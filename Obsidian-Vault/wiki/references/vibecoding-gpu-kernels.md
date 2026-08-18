---
title: "Vibecoding GPU Kernels"
category: references
tags: [gpu, kernel-development, agent-harness, vibecoding, verification, x-article]
aliases: [vibecoding-gpu-kernels]
relationships:
  - target: '[[concepts/arithmetic-intensity]]'
    type: related_to
  - target: '[[concepts/agent-driven-kernel-development]]'
    type: related_to
  - target: '[[concepts/gpu-profiling]]'
    type: related_to
sources:
  - "https://x.com/i/status/2086442755748970889"
  - "https://x.com/i/article/2086409855523581952"
created: "2026-08-16T00:00:00Z"
updated: "2026-08-16T00:00:00Z"
summary: "GPU kernels are 'embarrassingly verifiable': LLMs write via a compile-correctness-roofline loop; DSL context, rung harnesses, NCU profiling shift bottleneck to validation."
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

# Vibecoding GPU Kernels

**Author:** [[entities/maharshi|Maharshi]] (@maharshii), ML perf optimizer @ [[entities/fal|FAL]] — X Article, August 9, 2026. Metrics: 505 likes, 830 bookmarks, ~154k views. ^[extracted]

> **tl;dr** Handwriting GPU kernels is "an embarrassingly verifiable task": with modern LLMs (Claude Opus 5, GPT 5.6 Sol) the work is a verifiable loop — compile check, correctness check against a ground-truth reference, optimize, then stop at roofline/satisfaction. CUDA DSLs (Triton, CuTeDSL, Tilelang) plus a context directory (e.g. a CUTLASS clone) yield a good first version; with context in place the bottleneck shifts to validation — rung-style test registries, IR/PTX/SASS dumps, and NCU profiling reports. "Is GPU kernel development dead? Well yes but actually no." ^[extracted]

## Overview

The article is a practitioner's report on having LLMs "literally print kernels" (a riff on vibe coding), covering the full loop from first version to profiling. It argues kernel writing is unusually well-suited to automated verification because every version can be checked against a slow, ground-truth reference implementation — the correctness check is a natural verifiable reward. The piece is structured as: the verifiable loop (with a diagram), getting a good first version (DSLs + context), testing/benchmarking/profiling (the new bottleneck), and closing thoughts on whether GPU kernel development is dead. ^[extracted]

## The Verifiable Loop

The article's diagram shows kernel development as a loop with four phases ^[extracted]:

- **Compile check** — a tight local loop (B ↔ C) run before correctness is even considered. ^[extracted]
- **Correctness check** (D ↔ E ↔ F) — the core verifiable-reward loop. The existence of a ground-truth reference implementation is what makes kernel writing "a good problem for automated verification." ^[extracted]
- **Optimization** (G → H → back to D) — reuses the same correctness loop for every new version, because "a fast but wrong kernel is worthless": correctness must be re-verified for each version. ^[extracted]
- **Roofline/satisfaction check** (I) — the outer loop deciding when to stop: either the kernel reaches roofline metrics (see [[concepts/arithmetic-intensity|Arithmetic Intensity]] and [[references/how-a-gpu-actually-works|How a GPU Actually Works]] for the roofline/break-even prerequisite) or the author is satisfied. ^[extracted]

## First Version: DSLs and Context

- **CUDA DSLs — Triton, CuTeDSL, Tilelang** — are Python and have a gentler learning curve than CUDA C++, but their abstractions "may confuse our agent even more," so the agent needs context about those abstractions. ^[extracted]
- **Triton:** modern LLMs already write "good" Triton and handle its abstractions with no context. ^[extracted]
- **CuTeDSL** (much more control than Triton): a **context directory** where the agent can look up DSL abstractions "helps a lot." ^[extracted]
- Example: cloning the **NVIDIA CUTLASS** repository into the context directory lets the agent look up **Layout Algebra, Copy/GEMM atoms, memory hierarchy, and example kernels** while writing CuTeDSL kernels. ^[extracted]
- A good first version, in the author's experience, compiles without obvious errors and passes the correctness test. ^[extracted]

## Test, Benchmark, and Profile

- With enough context, **the real bottleneck shifts to validation** — the reference implementation and checking against it ("correctness testing") become the critical piece. ^[extracted]
- **The reference's speed does not matter; its intention does.** "What you intend to measure and verify is what your agent will optimize for." ^[extracted]
- **Metrics:** for computations not in lower precision — Max Absolute/Relative Error (MAE), Mean Squared Error (MSE/RMSE), and PSNR (Peak Signal to Noise Ratio). For lower precisions — PSNR and **cosine similarity (cossim)**. ^[extracted]
- Kernel runs happen locally or via cloud; either way the agent must be able to access its outputs. ^[extracted]
- **Rung methodology:** a Python decorator registry for N test functions — each rung runs, records `ok`/error plus output metrics, and prints a status line:

```python
def rung(name):
    def deco(fn):
        try:
            out = fn()
            results[name] = {"ok": True, **(out or {})}
            print(f"[{name}] ok  " + "  ".join(f"{k}={v}" for k, v in (out or {}).items()))
        except Exception as e:
            results[name] = {"ok": False, "err": f"{type(e).__name__}: {e}"}
            print(f"[{name}] FAILED  {type(e).__name__}: {e}")
            traceback.print_exc()
        return fn
    return deco
```

Used as pre-checks plus a run rung that synchronizes and reports shape/finiteness:

```python
out = {}

@rung("pre-checks")
def _():
    run_pure_checks()
    run_dsl_checks()

@rung("run")
def _():
    out["o"] = custom_kernel(*inputs)
    torch.cuda.synchronize()
    return {"shape": tuple(out["o"].shape),
            "finite": bool(torch.isfinite(out["o"]).all())}
```

- **Benchmark rungs** can do several things ^[extracted]:
  - (a) benchmark **end-to-end kernel execution time**; ^[extracted]
  - (b) **intra-kernel tracing** to benchmark sections within a kernel, dumped to the output (custom tracer or **CUPTI**); ^[extracted]
  - (c) **dump generated IR, PTX, SASS, and CUBIN to a `dumps` directory** for the agent to read. When the DSL lowers to suboptimal PTX (eventually SASS), the agent can read the text and **inline lower-level code** instead of letting the DSL handle the suboptimal part; passing "searchable" PTX documentation as context is very helpful. ^[extracted]
- **Profiling:** if the agent can access the **NCU (Nsight Compute) CLI**, it can profile and generate a report for the kernel "as a part of the verifiable feedback loop." ^[extracted]

## Closing Thoughts

- "Is GPU kernel development dead? Well yes but actually no." ^[extracted]
- **Yes:** the difficult part — layouts, indexing, abstractions, overall structure — can be largely solved by agents with enough context; "you can easily reduce the work of 2-3 weeks to 1-2 days." ^[extracted]
- **No:** the real bottleneck has shifted from kernels to validations; the better your context and harness, the faster the process; specialized cases benefit even more, and "a good harness is all you will need." ^[extracted]
- **Humans still needed:** treat agents as "really smart assistants which you can guide," not autonomous — fundamental GPU/kernel understanding is where the human part still matters. ^[extracted]

## Concepts

- [[concepts/agent-driven-kernel-development|Agent-Driven Kernel Development]] — the article's central subject: LLM-generated GPU kernels driven by a verifiable loop ^[inferred]
- [[concepts/loop-engineering|Loop Engineering]] — the compile → correctness → optimize → roofline loop is a loop-engineering instance ^[inferred]
- [[concepts/context-engineering|Context Engineering]] — the context-directory pattern (CUTLASS clone, PTX docs) ^[inferred]
- [[concepts/ai-harness|AI Agentic Harness]] — rung registry, dumps directory, NCU reports as harness components ^[inferred]
- [[concepts/arithmetic-intensity|Arithmetic Intensity]] — the "roofline metrics" stop condition ^[inferred]
- [[concepts/gpu-profiling|GPU Profiling]] — NCU inside the verifiable feedback loop ^[inferred]

## Entities

- [[entities/maharshi|Maharshi]] — author (@maharshii), ML perf optimizer at FAL
- [[entities/fal|FAL]] — the author's employer
- [[entities/nvidia|NVIDIA]] — CUTLASS repository used as DSL context; Nsight Compute (NCU) profiler

## Open Questions

- No quantitative speedup data beyond the 2-3 weeks → 1-2 days anecdote; the claim is not backed by measurements. ^[ambiguous]
- Whether the loop scales to expert-level kernels (warp specialization, custom layouts) is untested — the article's examples are DSL-level kernels. ^[ambiguous]
- The guidance requirement (agents as smart assistants, not autonomous) is asserted as the author's conclusion rather than demonstrated by experiments; the boundary between guided and fully-autonomous harnesses is left open. ^[inferred]

## Related

- [[references/how-a-gpu-actually-works|How a GPU Actually Works]] — the roofline/break-even model behind the "reach roofline metrics" stop condition
- [[misc/web-x-com-i-status-2086442755748970889|Vibecoding GPU Kernels — maharshi's X Article]] — source post metadata
