---
title: Physical vs. Virtual Whiteboarding
category: concepts
tags:
- concept
- whiteboarding
- product-design
- digital-advantages
- excalidraw
- aief2025
summary: 'Framework for designing digital tools: don''t replicate physical limitations one-to-one; instead, exploit the unique advantages of the virtual medium. Articulated by Christopher Chedeau in AIEF2025.'
sources:
- '["AIEF2025 - Excalidraw: AI and Human Whiteboarding Partnership - Christopher Chedeau - https://www.youtube.com/watch?v=aopgVJBQC0o"]'
provenance: '{ extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }'
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/excalidraw]]'
  type: related_to
- target: '[[entities/christopher-chedeau]]'
  type: related_to
- target: '[[concepts/ai-integration-patterns]]'
  type: extends
---

# Physical vs. Virtual Whiteboarding

The **physical vs. virtual whiteboarding** framework, articulated by [[entities/christopher-chedeau|christopher-chedeau]] at AIEF2025, describes a pattern in product design: early digital versions of physical tools tend to replicate the physical tool's limitations one-to-one, missing opportunities to exploit digital advantages.

## The Pattern

When online whiteboarding tools first emerged (around 2020), they mapped physical whiteboard constraints directly to the digital realm:

| Physical Whiteboard | Early Online Tools | Excalidraw (Virtual-Native) |
|---------------------|-------------------|---------------------------|
| Fixed canvas size | Fixed-size boards | Infinite scrollable canvas |
| Trace each letter by hand | Letter-by-letter drawing | Text boxes (type directly) |
| Erase pixel by pixel | Pixel-by-pixel erasing | Select-and-delete whole objects |
| Freehand shapes only | Freehand circles only | Shape primitives (circle, rectangle) |
| N/A | N/A | Copy-paste |

## The Principle

The core insight is that virtual tools should not simply digitize physical constraints. Instead, they should ask: *what is this tool uniquely capable of in a digital context?* The answer determines the product's design.

## Broader Application

Chedeau explicitly extended this framework to AI integration: most AI integrations at the time were doing the same thing — taking what humans already do and re-implementing it with AI — rather than asking what AI enables that wasn't possible before. This is the same pattern as early online whiteboarding tools that replicated physical limitations.^{[inferred]}

This principle generalizes to any domain where a physical tool is being digitized: the best digital products don't just replicate the physical; they reimagine what's possible.^{[inferred]}
