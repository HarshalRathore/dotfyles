---
title: tldraw.computer - Steve Ruiz, tldraw (AI Engineer World's Fair 2025)
category: references
tags:
- ai
- whiteboard
- canvas
- visual-programming
- agentic-workflows
- tldraw
sources:
- 'https://www.youtube.com/watch?v=1c2tdpkj6aq'
summary: Steve Ruiz presents tldraw's AI features including Make Real (wireframe-to-app generation), Draw Fast (real-time generative drawing), and tldraw.computer (graph-based multi-modal agentic pipelines...
provenance:
  extracted: 0.92
  inferred: 0.05
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# tldraw.computer — Steve Ruiz, tldraw (AI Engineer World's Fair 2025)

> A talk demonstrating how an infinite canvas SDK paired with AI models enables three distinct interaction paradigms: screenshot-to-application generation, real-time generative drawing, and graph-based multi-modal agentic pipelines.

## Overview

[[entities/steve-ruiz|Steve Ruiz]], founder of [[entities/tldraw|tldraw]], presents three AI features built on top of tldraw's infinite canvas platform. The talk demonstrates a progression from simple vision-to-code generation (Make Real, 2023) through real-time image synthesis (Draw Fast) to tldraw.computer — a visual graph-based environment where LLM-driven nodes accept inputs, execute prompts, and pipe outputs to downstream nodes.

## Make Real (2023)

Make Real was one of the first tools to let non-programmers generate working applications by drawing wireframes. The approach is conceptually straightforward: ^[extracted]

- Take a screenshot of a hand-drawn wireframe on the canvas
- Send it to a vision model (GPT-4 with vision) with the instruction: "You're a web developer, your designer just gave you this lo-fi thing — can you prototype this?"
- The model generates a working web application from the visual input
- The generated app appears back on the canvas, where the user can annotate on top of it and iterate

The talk demonstrates iterating by annotating on the generated output — drawing a "make the button solid" annotation, taking a fresh screenshot, and sending it back as the next prompt. This creates an annotation-driven iteration loop. ^[extracted]

Ruiz also shows taking a screenshot of a bug in the generated output, sending it together with the original source code to the model, and having it fix the bug. ^[extracted]

This feature connects to the broader pattern of [[concepts/wireframe-to-app-generation|wireframe-to-app generation]] and shares lineage with the [[concepts/vibe-coding-origins|vibe coding]] movement — both lower the barrier for non-programmers to create software.

## Draw Fast

Draw Fast uses latent consistency models (LCMs) for real-time image generation from freehand drawings. As the user draws, the generated image updates in near-real-time. Users can then interact with generated images on the canvas — rotating, stretching, and treating them as manipulable objects. ^[extracted]

## tldraw.computer (Primary Subject)

The main topic is a graph-based visual programming environment on the canvas where each node is an LLM-driven "agent block": ^[extracted]

### Architecture

- **Nodes accept inputs and produce outputs** — each block has a script (a short prompt) describing how to use its inputs and what to produce
- **Pipes connect nodes** — output from one node flows as input to the next
- **Multi-modal by default** — nodes can produce text, images, speech, or structured data
- **LLMs execute the graph** — execution is not done in code; the language model itself performs the reasoning at each node
- **Cycles and loops are supported** — graphs can include feedback loops that run indefinitely (e.g., a "random pop song generator" that adds to a list, checks if the song is about love, and feeds back in)

### Demo: Multi-Modal Commercial Generation

The talk demonstrates a graph that:
1. Takes user input ("write a short commercial for an AI Engineer MCP observability conference")
2. A text-generation node writes a commercial script
3. The text passes to an image-generation node (creates a visual based on the script)
4. Simultaneously passes to a speech-generation node (creates audio)
5. The user can then pipe the output through another iteration with modified instructions ("make it sad and serious")

### LLM as Non-Linear Computation Engine

A key insight: the graph executes via language models, not traditional code. This enables "non-linear thinking" — reasoning about ambiguous inputs where traditional programming would fail. ^[extracted]

Demo: an "add up all your inputs" node receives the numbers 2 and 11 plus a drawing of an octopus. The LLM infers a number from the octopus drawing (8), adds 2 + 8 + 11 = 21. A camera feed of Ruiz's face is inferred as a number (14) and added to the computation. This demonstrates the [[concepts/llm-as-computation-engine|LLM as computation engine]] pattern. ^[extracted]

### Gemini Collaboration

tldraw.computer was built in collaboration with [[entities/google|Google]] for the Gemini 2 launch. Google approached tldraw about launching with partner demos. Ruiz used Gemini 1.5 and Gemini Flash (fast, multimodal) as the backend models. ^[extracted]

### Philosophy

The design philosophy behind tldraw.computer: "I want a computer that works the way I thought a computer worked before I knew how a computer works" — treating inputs as things you "do stuff to" and results as things you "take over there." ^[extracted]

## Teach Demo

A separate demonstration shows the AI drawing on the canvas as a "virtual collaborator." The AI generates shapes not as pixel images but as structured text that maps to canvas shapes. The user can correct the AI's shapes, and the AI can work with the user's shapes in turn. This demo uses Claude as the backend. ^[extracted]

## Key Takeaways

- An infinite canvas SDK naturally pairs with AI models for visual-agent interaction ^[inferred]
- Graph-based visual programming with LLM nodes enables accessible agentic workflow design ^[inferred]
- Asynchronous, long-lived agentic processes can be designed visually using this paradigm ^[inferred]
- Ruiz characterizes tldraw's advantage as "shitty but amazing" — prioritizing rapid, working functionality over polish ^[extracted]

## Related Pages

- [[concepts/wireframe-to-app-generation]] — The Make Real pattern generalized
- [[concepts/visual-agentic-workflows]] — Graph-based agentic pipeline design
- [[concepts/llm-as-computation-engine]] — LLMs as non-traditional computation
- [[concepts/canvas-ai-interface]] — Canvas as AI interaction surface
- [[concepts/vibe-coding-origins]] — Shared lineage of code-from-natural-language
- [[concepts/demo-driven-ai-exploration]] — tldraw's features as capability demos
- [[concepts/agent-loop]] — Related pattern for agentic iteration

## Sources

- AI Engineer World's Fair 2025 talk — tldraw.computer — Steve Ruiz, tldraw — https://www.youtube.com/watch?v=1C2TdPkj6aQ
