---
title: "Wireframe-to-App Generation"
category: concepts
tags: [ai, vision, code-generation, prototyping, wireframe, design-to-code]
relationships:
  - target: "[[concepts/vibe-coding-origins]]"
    type: related_to
  - target: "[[concepts/demo-driven-ai-exploration]]"
    type: extends
sources:
  - "https://www.youtube.com/watch?v=1c2tdpkj6aq"
summary: "Using vision-capable LLMs to convert hand-drawn wireframes, screenshots, or lo-fi mockups into working applications through iterative screenshot-and-prompt cycles."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Wireframe-to-App Generation

A pattern where vision-capable language models convert hand-drawn wireframes, screenshots of lo-fi mockups, or annotated interface sketches into working applications. The model receives a visual input (wireframe) and an instruction to "make it real" — generating runnable code that implements the visual design.

## Origin

The pattern was popularized by [[entities/tldraw|tldraw]]'s **Make Real** feature (2023), which allowed users to draw wireframes on a whiteboard, take a screenshot, and send it to GPT-4 with vision to generate a working prototype. Users could then annotate on the generated output and iterate. ^[extracted]

## How It Works

1. **Draw or wireframe** — user creates a lo-fi visual representation on a canvas or whiteboard
2. **Capture** — screenshot of the wireframe is taken (optionally including prior generated output for iteration)
3. **Vision-to-code** — a vision model (e.g., GPT-4 with vision) receives the screenshot with a prompt like "You're a web developer, your designer just gave you this lo-fi thing — can you prototype this?"
4. **Application output** — the model generates a working application (typically HTML/JS/CSS) on the canvas
5. **Annotate and iterate** — the user annotates directly on the generated output, takes a new screenshot, and repeats the process

Bug-fixing is also part of the pattern: screenshot a bug alongside the source code, send both to the model, and get a fix. ^[extracted]

## Key Characteristics

- **Vision-native** — the model must accept image inputs; the wireframe is never described in text ^[inferred]
- **Iterative refinement** — annotation on generated output is the feedback mechanism, creating a visual conversation loop ^[inferred]
- **Non-programmer accessible** — the pattern was one of the first tools letting people who cannot program create software ^[extracted]
- **Low fidelity tolerance** — the model must interpret rough hand-drawn shapes as UI elements (buttons, text fields, layouts) ^[inferred]

## Relationship to Vibe Coding

Wireframe-to-app generation shares lineage with [[concepts/vibe-coding-origins|vibe coding]] — both lower the barrier to software creation through natural language. Vibe coding uses textual prompts; wireframe-to-app uses visual inputs. They can be complementary: wireframes provide spatial layout, while text prompts add behavioral intent. ^[inferred]

## Related

- [[concepts/llm-as-computation-engine]] — LLMs reasoning about non-text inputs
- [[concepts/canvas-ai-interface]] — Canvas as the interaction surface
- [[concepts/visual-agentic-workflows]] — Multi-step visual pipelines

## Sources

- [[references/tldraw-computer-steve-ruiz-ai-eng-2025|tldraw.computer — Steve Ruiz, tldraw (AI Engineer World's Fair 2025)]]
