---
title: Introduction to LLM serving with SGLang — Philip Kiely and Yineng Zhang, Baseten
tags:
- reference
- talk
- aief2025
- sglang
- inference
- serving
aliases:
- AIEF2025 SGLang workshop
sources:
- 'https://www.youtube.com/watch?v=ahtaha9fem0'
summary: Workshop covering the SGLang LLM serving framework including deployment, CUDA Graph optimization, Eagle 3 speculative decoding, and community contribution.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# Introduction to LLM serving with SGLang

> Workshop at AI Engineer World's Fair 2025. Covers getting started with [[entities/sglang|SGLang]], optimizing performance with CUDA graphs and Eagle 3 speculative decoding, and contributing to the open-source project.

## Overview

Philip Kiely (Developer Advocate, [[entities/baseten|Baseten]]) and [[entities/yineng-zhang|Yineng Zhang]] (Core Maintainer, SGLang) presented a hands-on workshop on serving LLMs with SGLang. The workshop covered SGLang's history, deployment on Baseten's platform, performance optimization via CUDA Graph tuning and Eagle 3 speculative decoding, and how to get involved in the open-source community. ^[extracted]

## Key Claims

- SGLang went from an arXiv paper (Dec 2023) to 15k GitHub stars in 18 months ^[extracted]
- xAI uses SGLang heavily for Grok models; Cursor uses it as a product company ^[extracted]
- CUDA Graph `cuda_graph_max_bs` tuning can significantly improve decoding throughput on L4 GPUs ^[extracted]
- Eagle 3 derives draft models from the target model's own layers rather than using a separate smaller model ^[extracted]
- SGLang's open-source nature means users unblock themselves rather than waiting for core developers ^[extracted]

## Related Pages Created

- [[entities/sglang]] — The serving framework
- [[entities/philip-kiely]] — Presenter
- [[entities/yineng-zhang]] — Presenter
- [[concepts/cuda-graph-for-llm-serving]] — CUDA Graph optimization technique
- [[concepts/speculative-decoding-eagle]] — Eagle 3 speculative decoding

## Sources

- https://www.youtube.com/watch?v=Ahtaha9fEM0
