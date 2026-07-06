---
title: Model Picker as Mode Selector
tags:
- ai
- ux
- design
- hci
- aief2025
sources:
- 'https://www.youtube.com/watch?v=bztd0yyagcq'
summary: The argument that model picker dropdowns in AI applications function as mode selectors — violating Larry Tesler's principle of modeless interfaces by changing how the same inputs map to outputs.
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Model Picker as Mode Selector

[[entities/maximillian-piras|Maximillian Piras]] argues that the model picker dropdown — the near-ubiquitous UI element across AI applications — is a modern mode selector, violating [[entities/larry-tesler|Larry Tesler]]'s principle of modeless interfaces. A mode is any setting that changes how identical inputs map to outputs; a model picker does exactly that. ^[extracted]

## Modes on Modes

The real usability problem emerges when models interact with other features: users must match models to modes. A user may need to switch models to access multimodal features, or discover that a feature is unavailable under the current model selection — creating what Piras calls "modes on top of modes." ^[extracted]

## The Flexibility-Usability Trade-off

Piras connects this to the flexibility-usability trade-off in design theory: as a system becomes more flexible (more models, more capabilities), its per-path usability decreases because the number of edge cases and combinations grows. The model picker is a concrete example of this tension — it gives users flexibility but forces them to understand model-specific capability profiles. ^[inferred]

## The Ideal Alternative

Piras speculates that the ideal interface would let users describe their use case and have the system select the model and mode automatically — "just talk to the model and let it pick itself." ^[extracted] This points toward [[concepts/bitter-design-lesson|the Bitter Design Lesson]] being a transitional state until models become capable enough to handle their own selection.

## Relationship to the Bitter Layout

The model picker is the signature UI element of the [[concepts/bitter-layout|bitter layout]] — the converged AI UX pattern. Understanding it as a mode selector makes clearer why the bitter layout is hard to improve: removing the model picker means removing flexibility, while keeping it means accepting a mode selector in every app. ^[inferred]

## Related

- [[concepts/bitter-layout]] — The UI pattern the model picker belongs to
- [[concepts/bitter-design-lesson]] — Why the model picker persists
- [[concepts/schrodingers-chat]] — The broader chat paradox
- [[entities/larry-tesler]] — The origin of the "don't mode me in" principle

## Sources

- [[references/aief2025-bitter-layout-maximillian-piras-yutori|The Bitter Layout or: How I Learned to Love the Model Picker — Maximillian Piras, Yutori (AI Engineer World's Fair 2025)]]
