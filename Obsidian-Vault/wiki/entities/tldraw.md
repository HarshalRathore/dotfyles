---
title: "tldraw"
category: entities
tags: [company, tool, canvas, whiteboard, sdk, ai]
relationships:
  - target: "[[entities/steve-ruiz]]"
    type: derived_from
sources:
  - "[[sources/watchv=1c2tdpkj6aq]]"
summary: "Company behind the tldraw infinite canvas SDK and tldraw.com whiteboard application. Known for AI features including Make Real, Draw Fast, and tldraw.computer."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# tldraw

tldraw is a company founded by [[entities/steve-ruiz|Steve Ruiz]] that builds an open canvas SDK and the tldraw.com whiteboard application. The canvas is built with React and supports embedding live web content (YouTube, Figma, CodeSandbox), freehand drawing, diagramming, and AI-powered features.

## Products

### tldraw.com

A free end-user whiteboard application at tldraw.com. Features include: ^[extracted]

- Infinite canvas with freehand drawing and shapes
- Smart arrows that follow shapes and maintain corner connections
- Embeddable web content (YouTube videos, Figma, CodeSandbox)
- Built-in code editor (CodeSandbox integration)
- All standard whiteboarding features (diagrams, slides, sticky notes)

### tldraw SDK (tldraw.dev)

A React-based SDK for building custom canvas applications. The SDK documentation and code are available at tldraw.dev. Ruiz's founding insight: by providing a high-quality canvas that other developers could use, the ecosystem would build applications that far exceeded what tldraw could build alone. ^[extracted] ^[inferred]

### AI Features

Three major AI features have been built on the tldraw canvas: ^[extracted]

1. **Make Real** (2023) — Vision-to-code generation: draw a wireframe, GPT-4 with vision generates a working web app. Users annotate on the output and iterate. One of the first tools letting non-programmers create software.

2. **Draw Fast** — Real-time image generation from freehand drawings using latent consistency models. As the user draws, the AI-generated image updates in near-real-time. Generated images are interactive canvas objects that can be rotated, stretched, and manipulated.

3. **tldraw.computer** — Graph-based visual programming environment where each node is an LLM-driven agent block. Built in collaboration with Google for the Gemini 2 launch, using Gemini 1.5 and Gemini Flash as backend models. Supports multi-modal pipelines (text, images, speech), cycles/loops, and asynchronous long-running processes.

4. **Teach** — Demo where AI draws on the canvas as a "virtual collaborator" using Claude as the backend. AI generates structured shapes (not pixels) that map to canvas objects, and the user can edit, correct, and remix AI content.

## Ecosystem

Third-party companies building with the tldraw SDK include Observable. A notable example: a Grant Cots liquid simulation using tldraw as the geometric, physical, and authoring layer. ^[extracted]

## Design Philosophy

Ruiz characterizes tldraw's approach as "shitty but amazing" — prioritizing rapid, working functionality and user delight (perfect arrow shapes, corner-aligned boxes) over polish. The canvas shines as an interface for AI because it is "just normal web stuff — React all the way down" — making it easy to embed, extend, and integrate with AI tools. ^[extracted]

## Related

- [[concepts/canvas-ai-interface]] — Canvas as the primary design paradigm
- [[concepts/wireframe-to-app-generation]] — Make Real feature pattern
- [[concepts/visual-agentic-workflows]] — tldraw.computer pattern
- [[concepts/llm-as-computation-engine]] — LLM-driven execution
- [[concepts/demo-driven-ai-exploration]] — tldraw's features as capability demos

## Sources

- [[references/tldraw-computer-steve-ruiz-ai-eng-2025|tldraw.computer — Steve Ruiz, tldraw (AI Engineer World's Fair 2025)]]
