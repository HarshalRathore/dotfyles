---
title: "Schrodinger's Chat"
tags:
  - ai
  - ux
  - chat
  - design
  - aief2025
sources:
  - "[[sources/watchv=bztd0yyagcq]]"
summary: "The paradox in AI UX design where chatbots have well-documented usability problems yet remain the dominant interaction paradigm because one attribute — the ability to conform to the next model — outweighs all UX concerns."
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Schrodinger's Chat

Chat, as framed by [[entities/maximillian-piras|Maximillian Piras]] at AI Engineer World's Fair 2025, occupies a paradoxical state: it is simultaneously obviously the future and obviously not the future. Designers know chat has deep usability issues, yet everyone uses it daily. ^[extracted]

## The Debate Timeline

Piras traces the anti-chat argument through:

- **May 2022** — [[entities/linus-lee|Linus Lee]] argues that exposing raw text completion is not the right long-term paradigm. ^[extracted]
- **May 2023** — Amelia Wattenberger publishes arguments against chat as the future of UI. ^[extracted]
- **June 2023** — Maggie Appleton makes similar arguments about why chat should not be the default AI interface. ^[extracted]
- **March 2025** — Julian Lehr argues chat is a bottleneck by comparing clock speed across interface paradigms. ^[extracted]

Against every one of these arguments, ChatGPT's escape velocity and user adoption provide a counterargument that is hard to dismiss: "just look at the chart." ^[extracted]

## Why Chat Wins

The resolution of the paradox lies in the [[concepts/bitter-design-lesson|Bitter Design Lesson]]: chat persists because it can conform to the next model with minimal friction. The chat interface requires no redesign when a new capability ships — the model adapts, not the UI. This single attribute outweighs every usability concern until models commoditize. ^[inferred]

This makes chat the core of the [[concepts/bitter-layout|bitter layout]] — the converged AI UX pattern that dominates despite broad design consensus that better alternatives exist. ^[inferred]

## Related

- [[concepts/bitter-layout]] — The UI pattern that chat anchors
- [[concepts/bitter-design-lesson]] — Why chat persists
- [[concepts/model-picker-as-mode]] — The model picker UI element that comes with chat
- [[concepts/beyond-chatbots]] — The competing vision of LLM-integrated software
- [[entities/linus-lee]] — Early critic of raw text completion interfaces

## Sources

- [[references/aief2025-bitter-layout-maximillian-piras-yutori|The Bitter Layout or: How I Learned to Love the Model Picker — Maximillian Piras, Yutori (AI Engineer World's Fair 2025)]]
