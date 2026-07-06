---
title: Pelican-on-Bicycle Benchmark
category: concepts
tags:
- benchmark
- evaluation
- svg
- code-generation
- informal-benchmark
- aief2025
aliases:
- pelican benchmark
- pelican on bicycle
sources:
- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
summary: An informal benchmark created by Simon Willison that prompts text LLMs to generate SVG code of a pelican riding a bicycle, evaluating spatial reasoning, code generation, and creative problem-solvin...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/swe-bench|SWE-bench]]'
  type: related_to
- target: '[[concepts/leaderboard-skepticism|Leaderboard Skepticism]]'
  type: alternative_to
---

# Pelican-on-Bicycle Benchmark

The **Pelican-on-Bicycle Benchmark** is an informal evaluation method created by [[entities/simon-willison|Simon Willison]] for assessing the code-generation and spatial-reasoning capabilities of text-only large language models. Instead of using traditional benchmarks with numerical leaderboards (which Willison expressed growing distrust of), he prompts models to generate SVG code depicting a pelican riding a bicycle.

## Design Rationale

The benchmark was designed around several deliberate choices: ^[extracted]

1. **SVG is code** — Text models should be able to generate code, and SVG is a code format, making it a fair test for text-only models (not image models)
2. **Bicycles are hard to draw** — Even asking humans to draw a bicycle reveals that most people can't quite remember how the different triangles and components fit together
3. **Pelicans are hard to draw** — Described as "glorious animals, very difficult to draw"
4. **Pelicans can't ride bicycles** — They're the wrong shape, making it an impossible physical task for a real pelican
5. **Models try really hard** — Unlike standard benchmarks, text models include helpful comments in the SVG code (e.g., "now I'm going to draw the bicycle, draw the wheels"), revealing their reasoning process

## What It Reveals

The benchmark exposes capabilities that traditional leaderboards may miss: ^[inferred]

- **Spatial reasoning** — Understanding how geometric shapes compose into recognizable objects
- **Code generation quality** — Producing syntactically valid and semantically coherent SVG
- **Creative problem-solving** — Attempting an impossible task rather than refusing or giving up
- **Self-commenting** — Models include reasoning comments in their output, revealing their internal planning

## Evolution

What started as a joke evolved into something Willison "learned quite a lot" from. He used it to track and compare model progress across the December–March 2025 period, with results ranging from "unimpressive" (Amazon Nova) to "amazing" (DeepSeek V3) to progressively better outputs from later models.

## Related

- [[entities/simon-willison|Simon Willison]] — creator of the benchmark
- [[concepts/swe-bench|SWE-bench]] — another benchmark, but for coding tasks
- [[concepts/leaderboard-skepticism|Leaderboard Skepticism]] — Willison's distrust of traditional benchmarks
- [[concepts/eval-driven-development|Eval-Driven Development]] — evaluation as a development practice

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
