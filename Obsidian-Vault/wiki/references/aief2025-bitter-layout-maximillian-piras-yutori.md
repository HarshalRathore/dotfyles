---
title: 'The Bitter Layout or: How I Learned to Love the Model Picker'
tags:
- talk
- aief2025
- ux
- design
- ai
- chat
sources:
- 'https://www.youtube.com/watch?v=bztd0yyagcq'
summary: Maximillian Piras argues that the converged AI UX pattern of chat + model picker persists because it can absorb the next model's capabilities, and introduces the Bitter Design Lesson as a corollary...
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# The Bitter Layout or: How I Learned to Love the Model Picker

> Talk by [[entities/maximillian-piras|Maximillian Piras]], [[entities/yutori|Yutori]], at AI Engineer World's Fair 2025.

Piras argues that AI-first applications have converged on a near-identical UI pattern — chat input + turn-by-turn UX + model picker dropdown — not because it is good design, but because it is the cheapest way to absorb the next model's capabilities. This is the "bitter layout."

## Key Ideas

### Schrodinger's Chat

Chat occupies a paradox: designers know it has deep usability issues, yet it persists. From Linus Lee (May 2022) through Amelia Wattenberger, Maggie Appleton, and Julian Lehr (March 2025), critics have convincingly argued chat is a bottleneck. Yet ChatGPT's escape velocity makes the counterargument — "just look at the chart" — hard to dismiss. ^[extracted]

### The Model Picker as Mode

The model picker dropdown is a mode selector in the Larry Tesler sense: it changes how inputs map to outputs. Users must match models to modes, creating "modes on top of modes." Piras dedicates this section in memory of [[entities/larry-tesler|Larry Tesler]]'s principle of modeless interfaces. ^[extracted]

### The Bitter Design Lesson

Derived from [[entities/rich-sutton|Rich Sutton]]'s Bitter Lesson: if the basis of competition is inference performance, the UI is the commodity. Until models commoditize, every interface must conform to the next model. Piras calls this the "bitter design lesson" — it produces uninspiring layouts, but the ROI (add one model, get Nx more intelligence) is hard to argue against. ^[extracted]

### The Flexibility-Usability Trade-off

Piras connects the debate to the design principle that as systems become more flexible, per-path usability decreases. The question "is chat the future?" is really about where to land on this trade-off at a given time. ^[inferred]

### Moving Beyond the Bitter Layout

Drawing on [[entities/brett-victor|Brett Victor]]'s "Future of Programming" talk and [[entities/dario-amodei|Dario Amodei]]'s "more grown than built" framing, Piras suggests designers must shift from procedural thinking to goal/constraint setting — moving from construction to gardening. ^[extracted]

## Concepts Introduced

- [[concepts/bitter-layout]] — The converged AI UX pattern
- [[concepts/bitter-design-lesson]] — Models non-commoditized, interface is commodity
- [[concepts/model-picker-as-mode]] — Model picker as mode selector
- [[concepts/schrodingers-chat]] — The chat paradox
- [[concepts/gardening-as-design-paradigm]] — Growing vs building

## Entities Mentioned

- [[entities/maximillian-piras]] — Speaker
- [[entities/yutori]] — His organization
- [[entities/larry-tesler]] — Anti-mode pioneer ("don't mode me in")
- [[entities/rich-sutton]] — Author of The Bitter Lesson
- [[entities/brett-victor]] — Future of Programming talk
- [[entities/dario-amodei]] — "More grown than built" quote
- [[entities/linus-lee]] — Early critic of raw text completion UI
- [[entities/openai|OpenAI]] — Creator of ChatGPT (the escape velocity counterargument)

## Sources

- Video: https://www.youtube.com/watch?v=BZtD0yYAgCQ
