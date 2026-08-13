---
title: "Excalidraw"
category: entities
tags: [tool, open-source, whiteboarding, collaboration, excalidraw, aief2025, claude-code]
summary: Open-source virtual whiteboard tool built by Christopher Chedeau and used in Anthropic demonstrations of Claude Code implementing a table component.
sources:
  - "AIEF2025 - Excalidraw: AI and Human Whiteboarding Partnership - Christopher Chedeau - https://www.youtube.com/watch?v=aopgVJBQC0o"
  - "https://x.com/i/status/2083486328172273795"
provenance: { extracted: 0.95, inferred: 0.05, ambiguous: 0.0 }
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-08-02T05:25:57+05:30
relationships:
  - target: "[[entities/christopher-chedeau]]"
    type: related_to
  - target: "[[entities/claude-code]]"
    type: uses
  - target: "[[entities/cat-wu]]"
    type: related_to
  - target: "[[entities/rover-js]]"
    type: uses
  - target: "[[entities/zwibbler]]"
    type: replaces
---

# Excalidraw

Excalidraw is an open-source virtual whiteboarding tool created by [[entities/christopher-chedeau|christopher-chedeau]] in January 2020. It was originally built as a personal project to create illustrations for a blog post but became a real product after going viral on Twitter.

## Origin

Chedeau built the first version in a code sandbox using rover-js after [[entities/zwibbler|zwibbler]] was unavailable. The initial post on Twitter received 200+ likes and significant community interest, which led to Excalidraw's development as a public tool.

## Design Philosophy

Excalidraw's key innovation was recognizing that virtual whiteboards should not replicate physical whiteboard limitations. Its design exploits digital advantages:

- **Infinite canvas**: Scrollable workspace rather than fixed-size boards
- **Text boxes**: Type text directly instead of tracing letters by hand
- **Shape primitives**: Select and draw circles, rectangles, and other shapes
- **Select-and-delete**: Delete entire objects at once rather than pixel-by-pixel erasing
- **Copy-paste**: Digital-native functionality impossible on physical whiteboards

This philosophy — don't just digitize the physical, exploit the virtual — became Chedeau's framework for thinking about AI integration more broadly.

## Anthropic Keynote Demo

During the Anthropic keynote at AIEF2025, Excalidraw was used to demonstrate [[entities/claude-code|claude-code]]'s AI agent capabilities. The team had the agent reimplement the most popular feature request — a table layout — inside Excalidraw. As of the talk, no PR had been submitted.

## Claude Code Feature Demo

A separate [[misc/web-x-com-i-status-2083486328172273795|Claude Code product video]] uses Excalidraw as a real repository for implementing a table component. The requested behavior includes custom dimensions, drag-to-resize interaction, and Excalidraw's existing styling options. The agent is shown making the changes, updating comments, and leaving a commit for inspection. ^[extracted]

This revisits the table request from the earlier Anthropic demonstration but shows a later workflow in which the resulting changes are inspected as a commit. The two demonstrations should not be treated as one event. ^[ambiguous]

## AI Integration Experiments

Chedeau's team has experimented with several AI integrations:

1. **Image-to-scene transformation** (by Gorkem at File AI): Models that turn Excalidraw diagrams with natural elements into photorealistic scenes. Technically impressive but misaligned with how people actually use the tool.
2. **Diagram generation**: Attempts to have LLMs generate Excalidraw diagrams produced poor results.
3. **Gemini-generated Excalidraw files**: A more promising direction — AI generating the data format directly rather than visual content.
