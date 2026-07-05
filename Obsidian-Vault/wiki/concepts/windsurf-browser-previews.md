---
title: "Windsurf Browser Previews"
category: concepts
tags:
  - windsurf
  - browser-automation
  - visual-iteration
  - dom-inspection
  - aief2025
summary: "Windsurf's browser automation feature that lets the AI visually iterate on web applications by taking control of Chrome, inspecting DOM elements, and reading the JS console — enabling visual development workflows."
sources:
  - "[[sources/watchv=jvunpl5qo8q]]"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Windsurf Browser Previews

**Windsurf Browser Previews** is a feature that allows the Windsurf AI agent to take control of a web browser — specifically Chrome — to visually iterate on web applications. Introduced as part of Windsurf's wave progression by [[entities/kevin-hou|Kevin Hou]] at AIEF2025, it enables the AI to perform the same visual debugging and iteration tasks a human web developer would do. ^[extracted]

## Capabilities

Browser Previews enables the AI to:

- **Inspect DOM elements** — Examine the structure and styling of rendered pages
- **Read the JS console** — Access runtime errors, warnings, and debug output
- **Visually iterate** — Make changes based on what the AI sees in the browser, not just what's in the code
- **Preview and refine** — Generate code, preview in browser, inspect, iterate — in a closed loop

This is the AI agent's ability to "see" the output of code, not just generate the code itself. ^[extracted]

## Position in the "Doing Everything" Vision

Hou positions Browser Previews as one of the surfaces where the AI must act beyond the IDE. The sequence he describes:

1. Run terminal commands
2. Open Windsurf Browser Previews → visually iterate
3. Open PR via GitHub MCP
4. Run Windsurf Reviews
5. Deploy to Netlify

Browser Previews is step 2 — the visual feedback loop that closes the gap between code generation and visual result. ^[extracted]

## Relationship to the Shared Timeline

Browser Previews extends the [[concepts/shared-timeline|shared timeline]] model into the visual domain. The AI doesn't just share the developer's code timeline — it shares the developer's visual timeline, seeing what the developer sees and iterating based on visual feedback. ^[inferred]

## Related

- [[concepts/developer-outer-loop|Developer Outer Loop]] — Visual iteration is part of the outer loop
- [[concepts/shared-timeline|Shared Timeline]] — The model extended into visual domain
- [[concepts/ubiquitous-ai|Ubiquitous AI]] — AI reading context from the browser surface
- [[concepts/windsurf-reviews|Windsurf Reviews]] — The next step in the automation sequence
- [[references/aief2025-windsurf-everywhere-kevin-hou]] — Full talk
