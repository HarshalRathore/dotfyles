---
title: NVIDIA Dynamo
tags:
- nvidia
- inference
- open-source
- llm-serving
- disaggregation
- model-serving
sources:
- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
summary: Open-source NVIDIA project for data-center-scale LLM inference, enabling teams to manipulate their deployment's Pareto frontier for better SLAs or lower costs through techniques like disaggregation.
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/nvidia|NVIDIA]]'
  type: implements
- target: '[[entities/kyle-kranen|Kyle Kranen]]'
  type: led_by
- target: '[[concepts/disaggregated-inference|Disaggregated Inference]]'
  type: enables
- target: '[[concepts/inference-pareto-frontier|Inference Pareto Frontier]]'
  type: optimizes
category: entities
---

# NVIDIA Dynamo

NVIDIA Dynamo is an open-source project released by NVIDIA for data-center-scale LLM inference. It is led by [[entities/kyle-kranen|Kyle Kranen]] and designed to help teams manipulate their deployment's Pareto frontier.

## Purpose

Dynamo enables inference operators to achieve:

- **Better SLAs** — Meet stricter latency or quality requirements
- **Lower costs** — Reduce infrastructure spend for existing SLAs

The project supports techniques like disaggregation (splitting prefill and decode phases), model config changes, and other inference optimization strategies.

## Key Capabilities

- **Disaggregation** — Separate compute-bound prefill from memory-bound decode onto different GPU sets
- **Pareto frontier manipulation** — Systematic optimization across quality, latency, and cost axes
- **Data-center scale** — Designed for production deployments with significant cloud bills

## Related

- [[entities/kyle-kranen|Kyle Kranen]] — Project lead
- [[entities/nvidia|NVIDIA]] — Creator
- [[concepts/disaggregated-inference|Disaggregated Inference]] — Core technique supported
- [[concepts/inference-pareto-frontier|Inference Pareto Frontier]] — Optimization framework

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc
