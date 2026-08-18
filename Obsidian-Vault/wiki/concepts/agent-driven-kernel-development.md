---
title: "Agent-Driven Kernel Development"
category: concepts
tags:
  - gpu
  - kernel-development
  - agent-harness
  - vibecoding
  - verification
aliases:
  - vibecoding-gpu-kernels
sources:
  - "Vibecoding GPU Kernels — maharshi (X Article) - https://x.com/i/status/2086442755748970889"
summary: "Workflow where LLM agents write GPU kernels inside a verifiable loop (compile, correctness vs reference, benchmark, roofline); the bottleneck shifts from kernel structure to validation."
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.4
lifecycle: draft
lifecycle_changed: 2026-08-16
tier: supporting
created: '2026-08-16T00:00:00Z'
updated: '2026-08-16T00:00:00Z'
relationships:
  - target: "[[concepts/ai-harness|AI Agentic Harness]]"
    type: related_to
  - target: "[[concepts/gpu-profiling]]"
    type: uses
  - target: "[[concepts/arithmetic-intensity|Arithmetic Intensity]]"
    type: uses
---

# Agent-Driven Kernel Development

**Agent-driven kernel development** is the practice of having LLM agents (e.g. Claude Opus 5, GPT 5.6 Sol) write GPU kernels inside a verifiable loop, pioneered by [[entities/maharshi|Maharshi]]. Kernel writing is described as an "embarrassingly verifiable" task: unlike open-ended coding, every kernel version can be checked against a ground-truth reference and measured against hardware limits. ^[extracted]

## The Verifiable Loop

The workflow is a multi-level loop, each level gated by an automated check: ^[extracted]

1. **Compile check** — a tight local loop (B ↔ C) run before correctness is even considered.
2. **Correctness check** (D ↔ E ↔ F) — the core **verifiable-reward loop**: the kernel is compared against a slow reference implementation. A ground-truth reference is what makes kernel writing a good problem for automated verification.
3. **Optimization** (G → H → back to D) — every new version reuses the same correctness loop, since a fast but wrong kernel is worthless; correctness must be re-verified per version.
4. **Roofline/satisfaction check** (I) — the outer loop deciding whether to keep optimizing or stop, targeting the [[concepts/arithmetic-intensity|Arithmetic Intensity]] roofline.

This is a concrete instance of [[concepts/loop-engineering|Loop Engineering]]: the verifiable-reward loop is the core, and the roofline check is the convergence criterion.

## First Version: CUDA DSLs and Context Directories

Getting a good first version requires giving the agent the right context. The entry path is CUDA DSLs — **Triton, CuTeDSL, and Tilelang** — which are Python-based and gentler than CUDA C++. ^[extracted]

- LLMs already write "good" Triton with no context — the abstractions are familiar.
- For DSLs like CuTeDSL (more control, more confusing abstractions), a **context directory** where the agent can look up DSL abstractions helps a lot. Cloning the **NVIDIA CUTLASS** repository into the context directory lets the agent find Layout Algebra, Copy/GEMM atoms, memory hierarchy, and example kernels. ^[extracted]

This is [[concepts/context-engineering|Context Engineering]] applied to kernel development: the searchable material the agent can pull on demand. GPU access can be local or via cloud (e.g. [[entities/fal|FAL]]); either way the agent must be able to read its own outputs.

## Validation: The New Bottleneck

Given enough context, the bottleneck shifts from writing kernels to **validation**. The reference implementation's speed does not matter — its *intention* does: what you measure and verify is what the agent optimizes for. ^[extracted]

- Normal precision: **MAE, MSE/RMSE, PSNR**.
- Lower precision: **PSNR and cosine similarity**.

### Rung Methodology

A python decorator registry running N test functions, each reporting `{"ok": ..., **out}` and printing results (or a FAILED traceback on exception). Rungs include pre-checks, running the kernel with `torch.cuda.synchronize()`, finiteness checks, and benchmarks. ^[extracted]

## Benchmarking and Profiling as Feedback

The benchmark rung feeds the loop: ^[extracted]

- **End-to-end kernel execution time** for overall time spent.
- **Intra-kernel tracing** — benchmark sections within the kernel using a custom tracer or CUPTI, dumping section timings.
- **IR/PTX/SASS/CUBIN dumps** — dump generated artifacts to a `dumps` directory for the agent to read; when the DSL lowers to suboptimal PTX/SASS, the agent inlines lower-level code instead of letting the DSL handle the suboptimal part. Searchable PTX documentation passed as context helps here.
- **NCU (Nsight Compute) profiling** — if the agent can access the NCU CLI, it profiles the kernel and generates a report as part of the verifiable feedback loop. See [[concepts/gpu-profiling|GPU Profiling]].

## The Verdict: "Yes But Actually No"

"Is GPU kernel development dead?" — *Yes, but actually no.* ^[extracted]

- **Yes**: layouts, indexing, abstractions, and overall structure are largely solvable by agents with enough context — 2–3 weeks of work drops to 1–2 days.
- **No**: the real bottleneck has shifted from kernels to validation; the better your context and harness, the faster the process, and specialized cases benefit even more. A good [[concepts/ai-harness|AI Agentic Harness]] is all you need.
- Agents are best treated as **smart assistants to guide, not autonomous workers** — fundamental human understanding of GPUs and kernels is still required. ^[extracted]

## Related

- [[concepts/arithmetic-intensity|Arithmetic Intensity]] — the roofline check target
- [[concepts/gpu-profiling|GPU Profiling]] — NCU and PTX/SASS dumps in the feedback loop
- [[concepts/ai-harness|AI Agentic Harness]] — the harness this workflow instantiates
- [[concepts/context-engineering|Context Engineering]] — context directories for DSL abstractions
- [[concepts/loop-engineering|Loop Engineering]] — the verifiable-reward loop pattern
- [[references/vibecoding-gpu-kernels|Vibecoding GPU Kernels]] — source article deep-dive
- [[entities/maharshi|Maharshi]] — author

## Sources

- Vibecoding GPU Kernels — maharshi (X Article) - https://x.com/i/status/2086442755748970889
