---
title: "AI Integration Patterns"
category: concepts
tags: [concept, ai-integration, product-design, aief2025, excalidraw, ai-product-fit]
summary: Framework for thinking about AI integration: most current approaches re-implement existing workflows with AI rather than asking what AI enables that wasn't possible before.
sources: ["AIEF2025 - Excalidraw: AI and Human Whiteboarding Partnership - Christopher Chedeau - https://www.youtube.com/watch?v=aopgVJBQC0o"]
provenance: { extracted: 0.8, inferred: 0.2, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/physical-vs-virtual-whiteboarding]]"
    type: extends
  - target: "[[concepts/ai-product-fit]]"
    type: related_to
---

# AI Integration Patterns

The **AI integration patterns** framework describes how organizations currently approach adding AI to products, and the common pitfall of simply re-implementing existing workflows with AI rather than asking what AI enables.

## The Current Pattern: Re-implementation

Most AI integrations follow a "sprinkle AI" pattern — taking whatever users already do and re-implementing it with AI. This is analogous to early online whiteboarding tools that mapped physical whiteboard limitations one-to-one to digital.^{[inferred]}

The problem, as [[Christopher Chedeau|christopher-chedeau]] noted at AIEF2025, is that unlike Excalidraw (which had a proven user experience to build on), AI integrations have no established baseline. Nobody has experience with the AI-enhanced workflow yet, making it harder to evaluate whether the integration actually improves things.

## The Alternative Pattern: AI-Native Design

The alternative is to ask: *what can AI do that wasn't possible before?* This is the same principle as [[Physical vs. virtual whiteboarding|physical-vs-virtual-whiteboarding]] — don't replicate the physical, exploit the virtual. Applied to AI, it means:

1. Start with the user's core need, not the existing workflow
2. Ask what AI can enable that was previously impossible
3. Design the workflow around AI's actual capabilities, not around replicating human behavior

## Examples from Excalidraw

Chedeau's team explored multiple AI integration approaches for Excalidraw:

- **Image-to-scene transformation** (File AI): Technically impressive but misaligned with user behavior — people don't draw realistic images
- **Diagram generation**: Poor results — LLMs couldn't generate recognizable diagrams
- **Gemini-generated Excalidraw files**: More promising — AI producing the data format directly

The third approach best exemplifies the AI-native pattern: instead of having AI draw diagrams (replicating human behavior), have AI generate the structured data that Excalidraw renders.^{[inferred]}
