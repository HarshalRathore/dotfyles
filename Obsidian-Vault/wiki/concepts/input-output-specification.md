---
title: Input-Output Specification
category: concepts
tags:
- input-output
- specification
- ai-systems
- moat
- system-design
- enterprise-ai
summary: The principle that clearly defining what goes into an AI system and what comes out is the most fundamental and durable part of building an AI application — more important than the choice of model o...
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/evals-as-moat]]'
  type: related_to
- target: '[[concepts/sequence-of-moats]]'
  type: related_to
- target: '[[concepts/ai-lego-blocks-framework]]'
  type: related_to
sources: []
---

**Input-Output Specification** is the principle that clearly defining what goes into an AI system and what comes out is the most fundamental and durable part of building an AI application. This specification should be defined before choosing models, architectures, or tools — and it remains valid even as those underlying choices evolve. ^[inferred]

## The Thesis

**[[entities/randall-hunt|Randall Hunt]]** of **[[entities/caylent|Caylent]]** articulated this based on lessons from 200+ enterprise GenAI deployments:

> "The inputs to your system and what your system is going to do with them — that is the most fundamental part, your inputs and your outputs."

His layered architecture places inputs and outputs at the foundation:

1. **Inputs and Outputs** — The specification. Does not change.
2. **Evals** — Proves the system meets the specification.
3. **System Architecture** — How inputs flow to outputs. Evolves.
4. **LLMs and Tools** — The incidental implementation details. Will change.

The key insight: layers 3 and 4 are commodities. Layer 1 is the differentiator. ^[inferred]

## What an Input-Output Specification Includes

- **Input modalities** — Text, images, audio, video, structured data, user prompts, sensor data
- **Input format and constraints** — Schema, validation rules, expected ranges
- **Output modalities** — Text, structured data, actions, API calls, notifications
- **Output format and constraints** — Schema, format requirements, SLA expectations
- **Input-output mapping** — The transformation logic (which may be rule-based, model-based, or hybrid)
- **Edge cases** — What happens with missing, malformed, or adversarial inputs

## Why It's a Moat

1. **Domain-specific** — Your inputs and outputs encode your domain knowledge
2. **Durable** — The specification doesn't change when models improve
3. **Hard to copy** — Competitors can copy your model choice but not your input-output specification, which is the result of deep domain understanding
4. **Eval-driven** — A clear specification enables precise evals, which in turn enable continuous improvement

## Contrast with Common Mistakes

- **Chatbot-first approach** — Starting with "let's build a chatbot" and figuring out inputs/outputs later. Randall warns: "if you just build a chatbot, sayonara, good luck, you're the Polaroid."
- **Model-first approach** — Starting with "let's use GPT-4" and building around the model's capabilities rather than the problem's requirements.
- **Architecture-first approach** — Starting with "let's build a RAG pipeline" and then finding problems to solve with it.

## Related

- [[concepts/evals-as-moat]] — Evals and input-output specification together form the real moat
- [[concepts/sequence-of-moats]] — How competitive moats form in AI systems
- [[concepts/ai-lego-blocks-framework]] — Building AI systems from composable blocks
- [[concepts/vibe-check]] — The anti-pattern of skipping specification and testing

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
