---
title: Amol
category: entities
tags: [person, Nori-Agentic, visual-artifacts, AI-employee, WF2026]
aliases: [Amol Nori, Amol Nori Agentic]
relationships:
  - target: '[[entities/nori-agentic|Nori Agentic]]'
    type: ceo_of
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: CEO of Nori Agentic, presented on using coding agents to create visual artifacts like slides, docs, and video at WF2026.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Amol

**Amol** is the CEO of **Nori Agentic**, a company that deploys an AI employee capable of understanding a company's code, docs, Slack, and other data. He presented at the AI Engineer World's Fair 2026 on the topic of using coding agents to create visual artifacts — slides, docs, and video — a domain most people believe agents are fundamentally bad at. ^[extracted]

## Visual Artifacts via HTML

Amol's core thesis is that the problem with agents making visual artifacts is not the model — it's the medium. Humans design tools like PowerPoint, Figma, and Canva for human hands: click, drag, resize, snap to grid. These tools have a data structure underneath, but in a format only the application can read. When handed to an agent, the output comes out wrong — elements overlap, text is unreadable, alignment breaks. ^[extracted]

The solution, Amol argues, is to give the AI tools based on how it thinks — not in pixels, but in language: words, tokens, structure. HTML lets a model think in structure. HTML tags have meanings built into the language (heading, chart, grid), and the browser turns it all into pixels. The model never actually places a coordinate, yielding charts, layouts, fonts, and motion for free. He demonstrated this with the classic "pelican riding a bicycle" test, showing that asking a model to produce SVG fails but asking it to produce HTML succeeds. ^[extracted]

## Nori Sessions

Amol introduced **Nori Sessions**, a product where the Nori bot lives in the fabric of a company and builds slide decks end to end — from call transcripts and emails to fully formatted, branded decks. He claimed that a slide deck that takes 10 hours of human fiddling should take about 25 minutes once all formatting, branding, and layout work is removed. Nori ships with everything needed to make this work, using HTML as the intermediate representation and rendering to PDF when needed. ^[extracted]

## Key Quote

> "Stop thinking like a user. Think like the model. Give it the right language. And for graphics, all you need is HTML." ^[extracted]

## Related

- [[concepts/visual-artifacts|Visual Artifacts]] — the domain Nori Agentic addresses
- [[entities/nori-agentic|Nori Agentic]] — the company Amol leads
- [[concepts/coding-agents|Coding Agents]] — the technology Nori builds on

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
