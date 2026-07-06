---
title: "AI-Native Diagram Generation"
category: concepts
tags: [concept, ai-integration, diagram-generation, excalidraw, aief2025, llm]
summary: The approach of having AI generate structured diagram data formats (rather than visual content) as a more promising path for AI diagram tools. Illustrated by Gemini generating Excalidraw files.
sources: ["AIEF2025 - Excalidraw: AI and Human Whiteboarding Partnership - Christopher Chedeau - https://www.youtube.com/watch?v=aopgVJBQC0o"]
provenance: { extracted: 0.75, inferred: 0.25, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/ai-integration-patterns]]"
    type: extends
  - target: "[[concepts/ai-product-fit]]"
    type: related_to
  - target: "[[entities/excalidraw]]"
    type: related_to
---

# AI-Native Diagram Generation

**AI-native diagram generation** is the approach of having AI produce structured diagram data formats directly, rather than attempting to generate visual content from scratch. This distinguishes between two fundamentally different approaches to AI diagram tools.

## Two Approaches

### Approach 1: Visual Generation (Failed)

The first approach — attempted by Chedeau's team — was to have LLMs generate Excalidraw diagrams visually. The results were poor: "no resemblance of a house or anything." The gap between what AI can generate and what users need for diagramming was too wide.

### Approach 2: Data Format Generation (Promising)

The second approach — demonstrated by a [[entities/gemini|gemini]] demo at AIEF2025 — had Gemini output Excalidraw files directly. This is more promising because:

1. LLMs are better at generating structured text (JSON, markup) than visual content
2. The rendering is handled by the existing tool (Excalidraw), not by the AI
3. This follows the [[concepts/ai-product-fit]] principle: AI produces data, the tool handles presentation

## Implications

This pattern — AI generates structured data, the existing tool renders it — generalizes beyond diagrams. It's an example of [[concepts/ai-integration-patterns]] done right: instead of having AI replicate human drawing behavior, have AI generate the structured input that a rendering engine (the existing tool) can display.

The key insight is that AI doesn't need to be the entire pipeline; it can be one component in a larger system.^{[inferred]}
