---
title: Canvas as AI Interface
category: concepts
tags:
- ai
- interface
- canvas
- whiteboard
- visual
- interaction-design
relationships:
- target: '[[concepts/visual-agentic-workflows]]'
  type: related_to
- target: '[[concepts/demo-driven-ai-exploration]]'
  type: extends
sources:
- 'https://www.youtube.com/watch?v=1c2tdpkj6aq'
summary: Using an infinite digital canvas as the primary interaction surface for AI — where users can draw, embed apps, design agentic pipelines, annotate AI output, and collaborate with AI in a shared visu...
provenance:
  extracted: 0.55
  inferred: 0.4
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Canvas as AI Interface

A design paradigm where an infinite digital canvas serves as the primary interaction surface for AI systems. Rather than chat conversations or dialog boxes, the canvas provides a persistent, spatial, and multi-modal workspace where users draw inputs, embed live applications, design agentic workflows as graphs, annotate AI-generated output, and iterate through visual feedback loops.

## Characteristics

A canvas AI interface typically provides: ^[inferred]

- **Spatial organization** — content is positioned freely in 2D space, not linear conversation
- **Multi-format embedding** — the canvas can contain text, drawings, images, live web apps, video, code editors, and iframes, all coexisting and interacting ^[extracted]
- **Annotative iteration** — users annotate directly on AI outputs (drawing arrows, circling elements, writing corrections) as the primary feedback mechanism ^[extracted]
- **Visual agentic workflows** — agent pipelines are designed by placing and connecting nodes on the canvas ^[extracted]
- **Virtual collaboration** — AI generates shapes and content on the canvas that the user can manipulate, correct, and remix; the AI can also work with the user's own shapes ^[extracted]
- **Persistence** — the canvas retains state, so work-in-progress, experiments, and outputs remain available across sessions ^[inferred]

## The tldraw Implementation

[[entities/tldraw|tldraw]] exemplifies the canvas-as-AI-interface paradigm through its three AI features: ^[extracted]

1. **Make Real** — draw wireframes, generate working apps, annotate on the output, iterate
2. **Draw Fast** — draw a picture, see a real-time AI-generated image evolve beneath the pen, then manipulate the generated image on the canvas
3. **tldraw.computer** — build visual agentic graphs where each node is an LLM-driven block; the canvas becomes a programming environment

The embedding capability is central: the canvas can contain YouTube videos, Figma embeds, code editors (CodeSandbox), and even tldraw itself inside tldraw — all interactive and coexisting with drawn content. ^[extracted]

## The "Virtual Collaborator" Pattern

A canvas that supports both human and AI-generated content creates a "virtual collaborator" dynamic: ^[extracted] ^[inferred]

- The AI draws shapes not as pixel images but as structured text that maps to canvas shapes
- The user can edit, correct, or delete AI-generated shapes
- The AI can see and work with the user's existing shapes
- The back-and-forth is not chat-based — it is visual and spatial

In the Teach demo, Ruiz uses Claude as the backend: "draw a cat" produces a cat on the canvas; "make the cat blow out the candle" modifies the existing drawing (even adding smoke). The AI adjusts existing shapes rather than regenerating everything. ^[extracted]

## Design Advantages

- Lowers the barrier to AI interaction — drawing is more intuitive than writing precise prompts for many spatial or design tasks ^[inferred]
- Enables bi-directional spatial communication: user annotates AI output, AI modifies user content ^[inferred]
- Supports the full AI interaction lifecycle in one place: input → generation → annotation → iteration ^[inferred]
- Matches how [[concepts/demo-driven-ai-exploration|demo-driven AI exploration]] works — build, test, iterate in a fluid visual environment ^[inferred]

## Related

- [[concepts/visual-agentic-workflows]] — Visual graph design on the canvas
- [[concepts/wireframe-to-app-generation]] — Wireframe → app on the canvas
- [[concepts/llm-as-computation-engine]] — LLM nodes in canvas graphs
- [[concepts/vibe-coding-origins]] — Alternative natural-language AI interface paradigm

## Sources

- [[references/tldraw-computer-steve-ruiz-ai-eng-2025|tldraw.computer — Steve Ruiz, tldraw (AI Engineer World's Fair 2025)]]
