---
title: "AIEF2025 - Excalidraw: AI and Human Whiteboarding Partnership - Christopher Chedeau"
category: references
tags: [reference, talk, aief2025, excalidraw, whiteboarding, ai-integration, open-source]
summary: Christopher Chedeau's AIEF2025 talk on building Excalidraw from procrastination, the physical-vs-virtual whiteboard paradigm shift, and lessons from AI integration experiments.
sources: ["AIEF2025 - Excalidraw: AI and Human Whiteboarding Partnership - Christopher Chedeau - https://www.youtube.com/watch?v=aopgVJBQC0o"]
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/christopher-chedeau]]"
    type: related_to
  - target: "[[entities/excalidraw]]"
    type: related_to
---

# AIEF2025 - Excalidraw: AI and Human Whiteboarding Partnership

Christopher Chedeau, creator of [[entities/excalidraw|excalidraw]], delivered a two-part talk at the AI Engineer World's Fair 2025. The first half covered the origin story of Excalidraw and a framework for thinking about online whiteboarding; the second half detailed AI integration experiments and lessons learned.

## Origin Story

Chedeau built Excalidraw on January 1, 2020 — out of frustration while trying to write a blog post. He wanted to use [[entities/zwibbler|zwibbler]] for illustrations, but the website was down. Instead of waiting, he opened a code sandbox and used rover.js to build a minimal whiteboard clone. He posted about it on Twitter, and it went viral (200+ likes on the first tweet), sparking community interest that led to Excalidraw's creation. Three months later, COVID forced everyone remote, and Excalidraw unexpectedly became a whiteboarding solution for distributed teams.

## Physical vs. Virtual Whiteboarding Framework

Chedeau's key conceptual insight: early online whiteboarding tools mapped physical whiteboard limitations one-to-one to digital — fixed canvas size, letter-by-letter text drawing, pixel-by-pixel erasing, freehand shapes only. Excalidraw's breakthrough was recognizing that virtual whiteboards should **exploit digital advantages**: infinite scrollable canvas, text boxes, select-and-delete, shape primitives (circle, rectangle), and copy-paste. He drew a direct parallel to the current state of AI integrations: most AI tools are doing the same thing — re-implementing what humans already do with AI — rather than asking what AI enables that wasn't possible before.

## AI Integration Experiments

The second half covered three AI experiments:

1. **Image-to-beach transformation**: Gorkem at [[entities/file-ai|file-ai]] built a model that turns Excalidraw diagrams with natural elements (palm trees, sun) into photorealistic beach scenes. Chedeau called it "mind-blowing" but noted a critical product lesson: people don't draw realistic images on Excalidraw — they draw diagrams. Just because a model exists doesn't mean it should be in your product.

2. **Diagram generation with LLMs**: Attempting to have LLMs generate Excalidraw diagrams produced poor results — no resemblance to the intended content. The gap between what AI can generate and what users actually need for diagramming was too wide.

3. **Gemini outputting Excalidraw files**: Chedeau saw a demo of Gemini generating Excalidraw files directly, suggesting a more promising direction — having AI produce the *data format* rather than trying to generate visual content from scratch.

## Anthropic Keynote Demo

During the Anthropic keynote, the team used Excalidraw to demonstrate Claude's AI agent capabilities. They had the agent reimplement the most popular feature request — a table layout — inside Excalidraw. As of the talk, no PR had been submitted yet; Chedeau joked that anyone working at Claude was welcome to submit one.
