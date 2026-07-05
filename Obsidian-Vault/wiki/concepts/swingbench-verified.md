---
title: "SWE-bench Verified"
category: concepts
tags: [swe-bench, coding-benchmark, llm-evaluation, autonomous-coding, inference-time-compute, aief2025]
aliases: [SWE-bench, SWE-bench verified, software engineering benchmark]
sources:
  - "[[sources/watchv=qludzkvfp6a]]"
summary: "A benchmark measuring LLM performance on real-world software engineering tasks. SWE-bench verified scores reached ~80% by end of 2024, improving with inference-time compute scaling."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-time-compute|Inference-Time Compute Scaling]]"
    type: measures
  - target: "[[concepts/pass-at-k|Pass@k / Coverage Score]]"
    type: evaluated_by
  - target: "[[concepts/agentic-coding|Agentic Coding]]"
    type: used_by
---

# SWE-bench Verified

**SWE-bench Verified** is a benchmark that measures LLM performance on real-world software engineering tasks — specifically, fixing bugs in open-source Python projects. The "verified" subset contains problems where test cases can definitively confirm whether a fix is correct. ^[extracted]

## Performance Trajectory

By the end of 2024, SWE-bench verified scores were roughly 80%. ^[extracted] This represents significant progress in autonomous coding, but there is still room for improvement.

## Inference-Time Scaling on SWE-bench

Stanford research (publicly published) showed that: ^[extracted]

- Pass@k (coverage score) on SWE-bench verified improves predictably with more samples
- Using open-source DeepSeek models, accuracy increased as more samples were generated
- The improvement curve is smooth and predictable — more inference compute → better results

This is one of the strongest pieces of evidence for [[concepts/inference-time-compute|inference-time compute scaling]] in coding tasks. ^[inferred]

## Why SWE-bench Matters

SWE-bench is one of the most realistic coding benchmarks because it uses: ^[inferred]

- **Real issues** from open-source projects (not synthetic problems)
- **Real test suites** from the original projects
- **Real fixes** that need to be correct to pass

This makes it a better predictor of how well models will perform in actual autonomous coding scenarios.

## Relationship to Other Benchmarks

SWE-bench differs from [[concepts/llm-benchmarking|traditional LLM benchmarks]] in that it measures practical software engineering capability rather than abstract reasoning or knowledge recall. ^[inferred]

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
