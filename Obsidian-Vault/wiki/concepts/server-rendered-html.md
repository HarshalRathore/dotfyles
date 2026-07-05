---
title: "Server-Rendered HTML for AI Teams"
category: concepts
tags:
  - frontend
  - simplicity
  - technology-choice
  - ai
  - aief2025
aliases:
  - Server-rendered HTML
  - SSR HTML
  - HTMX Alpine stack
relationships:
  - target: "[[concepts/simple-is-better-ai|Simple is Better in AI Engineering]]"
    type: implements
  - target: "[[concepts/small-ai-teams|Small AI Teams with Huge Impact]]"
    type: related_to
sources:
  - "[[sources/watchv=k-iykdmfkhe]]"
summary: "Datalab's frontend stack: server-rendered HTML with HTMX and Alpine.js instead of React or fancy frameworks. Simple, clean, modular code that AI can add to very well."
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Server-Rendered HTML for AI Teams

**Server-rendered HTML with HTMX and Alpine.js** is the frontend technology choice advocated by [[entities/vik-paruchuri|Vik Paruchuri]] ([[entities/datalab|Datalab)]) as part of the broader "use simple, boring technology" philosophy. ^[extracted]

## The Stack

Datalab explicitly does not use React or any fancy frontend frameworks. Instead: ^[extracted]

- **Server-rendered HTML** — Pages rendered on the server, sent as HTML
- **HTMX** — Lightweight library for dynamic interactions without JavaScript frameworks
- **Alpine.js** — Lightweight JavaScript for small interactive bits

## Why This Stack

1. **Super simple** — No complex build tools, no framework learning curve
2. **Clean modular code** — Easy to understand, modify, and extend
3. **AI-friendly** — Clean, readable, maintainable code that AI tools can add to very well
4. **Aggressive component reuse** — Components reused between on-prem and API deployments

## Connection to AI-Assisted Development

The stack choice is directly tied to Datalab's AI-assisted development philosophy. Clean, modular, well-documented code is much easier for AI tools to understand and modify. This is why Marker was re-architected to be "extremely modular and easy to work with and well-documented" — it makes it "much easier to use AI to actually add to it." ^[extracted]

## Related

- [[concepts/simple-is-better-ai|Simple is Better in AI Engineering]] — Philosophy
- [[concepts/small-ai-teams|Small AI Teams with Huge Impact]] — Where this fits
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — AI-assisted development
- [[entities/datalab|Datalab]] — Living example
- [[entities/marker|Marker]] — Re-architected for this
- [[references/aief2025-small-ai-teams-vik-paruchuri-datalab]] — Source talk
