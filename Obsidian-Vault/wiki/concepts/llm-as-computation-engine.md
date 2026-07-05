---
title: "LLM as Computation Engine"
category: concepts
tags: [ai, llm, computation, reasoning, multi-modal, non-linear]
relationships:
  - target: "[[concepts/latent-model-capabilities]]"
    type: extends
  - target: "[[concepts/wireframe-to-app-generation]]"
    type: related_to
sources:
  - "[[sources/watchv=1c2tdpkj6aq]]"
summary: "Using language models as the execution engine for computation that involves ambiguous, multi-modal, or non-linear reasoning — producing outputs through inference rather than deterministic code."
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# LLM as Computation Engine

A paradigm where language models serve as the execution engine for operations that involve ambiguous, multi-modal, or non-linear reasoning — computation that traditional deterministic code cannot handle. The LLM receives inputs (which may include text, numbers, images, or drawings), infers meaning or numeric values from them, and produces outputs through reasoning rather than algorithmic processing.

## Concept

Traditional computation requires well-defined inputs and deterministic operations (e.g., `add(2, 3) = 5`). An LLM-as-computation-engine extends this to handle inputs that are ambiguous, visual, or otherwise unstructured. The model reasons about what the inputs "mean" and performs the operation through inference. ^[extracted] ^[inferred]

## Demonstration

[[entities/steve-ruiz|Steve Ruiz]] demonstrated this with an "add up all your inputs" node in [[entities/tldraw|tldraw]]'s tldraw.computer: ^[extracted]

- **Input 1:** Number 2 (standard numeric input)
- **Input 2:** Number 11 (standard numeric input)
- **Input 3:** A hand-drawn octopus (visual input — LLM infers "8")
- **Result:** The LLM computes 2 + 8 + 11 = 21

In a second example, a camera feed of the speaker's face was inferred as the number 14 and added to the computation. ^[extracted]

The key distinction: the execution is not performed by code — it is performed by the language model reasoning about what each input means and producing a result consistent with the instruction. ^[extracted]

## Key Properties

- **Multi-modal inputs** — the engine accepts text, numbers, drawings, images, or camera feeds as operands, inferring meaning from each ^[inferred]
- **Non-deterministic** — results may vary between runs because the "computation" is a reasoning process, not an arithmetic operation ^[ambiguous]
- **Graceful with ambiguity** — unlike traditional code that errors on unexpected input types, the LLM finds a plausible interpretation ^[inferred]
- **Prompt-defined operations** — the "operation" (add, transform, classify) is defined in natural language, making it extensible without programming ^[inferred]

## Implications

This pattern collapses the traditional distinction between "data" and "computation." In a conventional program, data passes through fixed computational logic. In the LLM-as-computation paradigm, both the operation and the interpretation of data are handled by the model's reasoning — the line between data, instruction, and execution blurs. ^[inferred]

## Why It Matters

- Enables [[concepts/visual-agentic-workflows|visual agentic workflows]] where each graph node performs flexible, context-sensitive operations ^[inferred]
- Makes "programming" accessible to non-programmers — the operation is defined in natural language rather than code ^[inferred]
- Opens the door to computation on inputs that resist formalization — sketches, photographs, ambiguous text, emotional states ^[inferred]

## Limitations

- Unreliable for precise numerical computation where accuracy is required ^[inferred]
- Non-deterministic behavior means results cannot be guaranteed ^[inferred]
- Cost and latency per "operation" are orders of magnitude higher than CPU instructions ^[inferred]
- Prompt injection risk: the input format used to define operations may allow adversarial inputs to override the intended behavior ^[inferred]

## Related

- [[concepts/latent-model-capabilities]] — LLMs possess reasoning abilities beyond their training objectives
- [[concepts/wireframe-to-app-generation]] — Vision models interpreting sketches as UI specifications
- [[concepts/visual-agentic-workflows]] — Graph-based pipelines using LLM nodes as execution blocks
- [[concepts/canvas-ai-interface]] — Canvas as the interaction surface for visual computation

## Sources

- [[references/tldraw-computer-steve-ruiz-ai-eng-2025|tldraw.computer — Steve Ruiz, tldraw (AI Engineer World's Fair 2025)]]
