---
title: The Bitter Layout
tags:
- ai
- ux
- design
- product
- chat
- aief2025
sources:
- 'https://www.youtube.com/watch?v=bztd0yyagcq'
summary: The converged AI UX pattern of chat input + turn-by-turn interaction + model picker dropdown that persists not because it is good design, but because it can absorb the next model's capabilities at...
provenance:
  extracted: 0.6
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# The Bitter Layout

The bitter layout, a term coined by [[entities/maximillian-piras|Maximillian Piras]] at AI Engineer World's Fair 2025, describes the near-universal UI pattern that AI-first applications have converged on: a chat input field at the bottom, turn-by-turn message history above, and a model picker dropdown. Despite consistent criticism from designers, this layout dominates across chatbots, search engines, coding assistants (Cursor, V0), and creative tools (Canva). ^[extracted]

## The Bitter Design Lesson

The layout exists not because it is good design, but because it is the cheapest way to absorb the next model's capabilities. Piras frames this as a corollary to Rich Sutton's Bitter Lesson: as long as the basis of competition is inference performance, the interface is the commodity. When a new model ships, the bitter layout absorbs it by adding one dropdown item — the app becomes "NX more intelligent" with one line item. ^[extracted]

This produces what Piras calls the [[concepts/bitter-design-lesson|Bitter Design Lesson]]: until models commoditize and overshoot user needs, the primary job of every AI interface is conforming to the next model. ^[inferred]

## The Model Picker as Mode Selector

The bitter layout's signature UI element — the model picker dropdown — functions as a mode selector in the Larry Tesler sense: flipping it changes how the same inputs map to drastically different outputs. Users must match models to modes, creating a [[concepts/model-picker-as-mode|layered mode problem]] that violates basic usability principles. ^[extracted]

## Why Chat Survives

[[concepts/schrodingers-chat|Schrödinger's Chat]] captures the paradox: designers know chat has deep usability issues, yet chat persists because one attribute — its ability to conform to the next model — outweighs every UX concern. ^[extracted] This explains the resilience of the bitter layout against alternative interfaces like canvases, spatial UIs, or structured data pipelines advocated by [[concepts/beyond-chatbots|the beyond-chatbots philosophy]]. ^[inferred]

## Flexibility-Usability Trade-off

The bitter layout embodies the flexibility-usability trade-off from design theory: as systems accommodate more models and capabilities, usability decreases. The debate about whether chat is the future is really a debate about which side of this trade-off to optimize for at a given time. ^[inferred]

## Moving Beyond

Piras suggests the path forward is a shift from construction to gardening — setting goals and constraints (via design systems, user stories as system prompts) rather than procedurally designing every interaction. This echoes [[entities/brett-victor|Brett Victor]]'s lesson of thinking in terms of goals and constraints rather than procedures. ^[extracted]

## Related

- [[concepts/bitter-design-lesson]] — The design principle that produces the bitter layout
- [[concepts/schrodingers-chat]] — Why chat persists despite known usability problems
- [[concepts/model-picker-as-mode]] — The model picker as a mode selector argument
- [[concepts/beyond-chatbots]] — The competing philosophy that LLMs should be integrated into existing software rather than wrapped in chat
- [[concepts/gardening-as-design-paradigm]] — The speculated future direction beyond the bitter layout

## Sources

- [[references/aief2025-bitter-layout-maximillian-piras-yutori|The Bitter Layout or: How I Learned to Love the Model Picker — Maximillian Piras, Yutori (AI Engineer World's Fair 2025)]]
