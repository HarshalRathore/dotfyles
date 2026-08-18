---
title: "Maharshi"
category: entities
tags: [person, ml-engineering, gpu, performance, kernel-development]
aliases: [maharshii]
relationships:
  - target: "[[entities/fal|FAL]]"
    type: works_at
sources:
  - "https://x.com/maharshii/status/2086442755748970889"
summary: "ML performance engineer at fal; writes about vibecoding GPU kernels with LLM agents (X Articles, verified)."
provenance:
  extracted: 0.8
  inferred: 0.2
  ambiguous: 0.0
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: "2026-08-16"
tier: supporting
created: "2026-08-16T00:00:00Z"
updated: "2026-08-16T00:00:00Z"
---

# Maharshi

**Maharshi** (@maharshii) is an ML performance optimizer at **FAL** — "learning deeply about life one gradient step at a time - ml perf optimizer @ fal" (per his X bio). He is verified on X (~43K followers) and writes at maharshi.bearblog.dev. ^[extracted]

## Role

- **ML Performance Optimizer, FAL** — per bio. ^[extracted]

## The 'vibecoding gpu kernels' X Article (Aug 9, 2026)

Argues that handwriting GPU kernels is an "embarrassingly verifiable task", and that LLM agents (Claude Opus 5, GPT 5.6 Sol) can print kernels for you inside a verifiable loop:

- **Compile → correctness vs reference → benchmark → roofline check** — the core verifiable-reward loop; every optimization version re-checks correctness against a slow reference implementation, since a fast but wrong kernel is worthless.
- **CUDA DSLs + context directories** — Triton, CuTeDSL, Tilelang lower the learning curve vs CUDA C++; cloning repos like NVIDIA cutlass into a context directory gives the agent DSL-abstraction context (Layout Algebra, Copy/GEMM atoms, memory hierarchy).
- **Rung testing** — a decorator-based harness running N test functions (pre-checks, run, benchmark, dumps of IR/PTX/SASS/CUBIN).
- **NCU profiling** — Nsight Compute CLI reports fold into the verifiable feedback loop.

See [[references/vibecoding-gpu-kernels|Vibecoding GPU Kernels]] for the full treatment. ^[extracted]

## Relationship to FAL

Works at [[entities/fal|FAL]] as an ML performance optimizer, per his bio. ^[extracted]

## Related

- [[misc/web-x-com-i-status-2086442755748970889|Vibecoding GPU Kernels — maharshi's X Article]] — the X Article's wiki page
- [[concepts/agent-driven-kernel-development|Agent-Driven Kernel Development]] — the emerging concept this article instantiates

## Sources

- X profile + article: https://x.com/maharshii/status/2086442755748970889
