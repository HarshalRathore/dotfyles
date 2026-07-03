---
title: "Steve Ruiz"
category: entities
tags: [person, creator, tldraw, canvas, whiteboard]
relationships:
  - target: "[[entities/tldraw]]"
    type: implements
sources:
  - "AI Engineer World's Fair 2025 talk - tldraw.computer - Steve Ruiz, tldraw - https://www.youtube.com/watch?v=1C2TdPkj6aQ"
summary: "Founder of tldraw, creator of the tldraw canvas SDK and tldraw.computer — a graph-based visual AI pipeline system. Speaker at AI Engineer World's Fair 2025."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Steve Ruiz

Steve Ruiz is the founder of [[entities/tldraw|tldraw]], the company behind the tldraw infinite canvas SDK and tldraw.com (a free whiteboard application). He presented tldraw's AI features — Make Real, Draw Fast, and tldraw.computer — at the AI Engineer World's Fair 2025.

## Background

tldraw started as a digital ink library that Ruiz built and later implemented in Excalibur (at the request of "Christopher"). While working on that project, Ruiz recognized the need for a general-purpose SDK for building canvas-based applications. He built tldraw around the insight that "if you build a canvas that other people can use, people will build cool stuff with it." ^[extracted]

## Contributions

- **tldraw canvas SDK** — A React-based infinite canvas SDK that powers both tldraw.com (the end-user whiteboard) and numerous third-party integrations ^[extracted]
- **Make Real** (2023) — One of the first tools enabling non-programmers to generate working applications from hand-drawn wireframes using GPT-4 with vision ^[extracted]
- **Draw Fast** — Real-time image generation from freehand drawings using latent consistency models ^[extracted]
- **tldraw.computer** — A graph-based visual programming environment where each node is an LLM-driven block; built in collaboration with Google for the Gemini 2 launch using Gemini 1.5 and Gemini Flash ^[extracted]
- **Teach** — AI-as-virtual-collaborator demo where the model draws on the canvas and interacts with user content (using Claude as backend) ^[extracted]

## Philosophy

Ruiz describes tldraw's design philosophy and competitive advantage as "shitty but amazing" — prioritizing rapid, working functionality over polish. His design principle for tldraw.computer: "I want a computer that works the way I thought a computer worked before I knew how a computer works" — treating inputs as things you process and outputs as things you route elsewhere. ^[extracted]

## Related

- [[concepts/canvas-ai-interface]] — Ruiz's primary design paradigm
- [[concepts/wireframe-to-app-generation]] — Make Real as an instance of this pattern
- [[concepts/visual-agentic-workflows]] — tldraw.computer as an instance of this pattern
- [[concepts/llm-as-computation-engine]] — LLM-driven execution demonstrated at tldraw

## Sources

- [[references/tldraw-computer-steve-ruiz-ai-eng-2025|tldraw.computer — Steve Ruiz, tldraw (AI Engineer World's Fair 2025)]]
