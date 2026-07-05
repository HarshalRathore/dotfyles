---
title: "Reasoning Models"
category: concepts
tags:
  - reasoning
  - inference
  - llm
  - quality
  - cost
  - tokens
aliases:
  - reasoning models
  - think-before-answer
  - chain-of-thought models
sources:
  - "AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc"
summary: "LLMs that produce additional 'thinking' tokens before generating the final answer, increasing both quality and cost. A Pareto frontier technique that trades more tokens for better outputs."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-pareto-frontier|Inference Pareto Frontier]]"
    type: shifts
  - target: "[[concepts/autoregressive-generation|Autoregressive Generation]]"
    type: extends
  - target: "[[concepts/inference-time-compute|Inference-Time Compute]]"
    type: relates_to
---

# Reasoning Models

**Reasoning models** are LLMs that produce additional "thinking" tokens — intermediate reasoning steps — before generating the final answer. This increases both the number of tokens generated and the quality of the output.

## Effect on the Pareto Frontier

As identified by [[entities/kyle-kranen|Kyle Kranen]] at AIEF2025, reasoning models have a specific Pareto effect:

- **Increases quality** — The model "thinks" through the problem before answering, improving accuracy
- **Increases cost** — More tokens generated = more compute = higher cost per request
- **Increases latency** — More autoregressive steps = longer generation time

Reasoning models trade more tokens (and thus more cost/latency) for better outputs.

## Relation to Inference-Time Compute

[[concepts/inference-time-compute|Inference-time compute]] is the broader paradigm of improving outputs by spending more compute during inference. Reasoning models are a specific instance: instead of generating multiple samples and voting (another inference-time compute technique), reasoning models generate a single chain of thought.

## Applications

- Complex math problems
- Multi-step reasoning tasks
- Code generation requiring planning

## Code-Executing Agents and the Reasoning Lineage

The evolution from O1 to O3, O4 Mini, and other frontier models has not just improved reasoning quality but enabled a paradigm shift: these models can now autonomously write and execute code as a problem-solving strategy. ^[extracted] O1 provided an early preview of reasoning capabilities, while O3 and O4 Mini demonstrated higher reliability and more capabilities — enabling agents to go beyond writing code to actually running it. ^[extracted]

This capability emerged organically: in multimodal reasoning tasks, models autonomously chose to run code (OCR, image cropping) without being explicitly instructed to do so, recognizing that code execution was the most efficient path to the objective. ^[extracted]

## Current Frontier Lineup (AIEF2025)

George Cameron's AIEF2025 talk presented the current frontier model ordering per Artificial Analysis Intelligence Index: ^[extracted]

1. **O3** — the leader
2. **O4 Mini** (Reasoning Mode High) — closely following O3
3. **DeepSeek R1** — released January 2025, only a couple of points behind leading models
4. **GROC 3 Mini** (Reasoning High)
5. **Gemini 2.5 Pro** — the "yappiest" model at 130 million output tokens
6. **Claude 4 Opus Thinking**

This lineup demonstrates that reasoning models now dominate the top of the intelligence index, with Chinese labs (DeepSeek) and Western labs (OpenAI, Google, Anthropic) all competing at the frontier. The gap between open-weight (DeepSeek R1) and proprietary models is at its narrowest ever. ^[extracted]

These models represent different approaches to the reasoning paradigm: open-weight (DeepSeek), proprietary-reasoning (Claude 3.7 Sonnet, O1 Pro), with dramatically different pricing and availability. ^[inferred]

## Related

- [[concepts/inference-pareto-frontier|Inference Pareto Frontier]] — reasoning shifts the quality axis
- [[concepts/autoregressive-generation|Autoregressive Generation]] — reasoning extends the autoregressive process
- [[concepts/inference-time-compute|Inference-Time Compute]] — reasoning is a form of inference-time compute
- [[concepts/code-executing-agents|Code-Executing Agents]] — reasoning models enable code execution

## Sources

- AIEF2025 - Hacking the Inference Pareto Frontier - Kyle Kranen, NVIDIA - https://www.youtube.com/watch?v=Y2qc0UhDSnc

- AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8
