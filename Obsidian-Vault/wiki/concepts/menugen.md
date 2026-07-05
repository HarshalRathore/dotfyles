---
title: "Menugen"
category: concepts
tags: [menugen, vibe-coding, karpathy, hackathon, developer-experience, local-vs-deploy]
summary: "Andre Karpathy's vibe coding experiment: a web app that takes photos of restaurant menus and generates image representations of menu contents. Demonstrated the gap between local prototyping and production deployment."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: implements
  - target: "[[concepts/local-vs-deploy-experience-gap|Local vs Deploy Experience Gap]]"
    type: extends
  - target: "[[entities/andre-karpathy|Andre Karpathy]]"
    type: related_to
  - target: "[[references/llms-txt|LLMs.txt]]"
    type: related_to
---

## Menugen

Menugen is a web app created by Andre Karpathy at a hackathon as a vibe coding experiment. The app takes photos of restaurant menus (in text format) and generates image representations of the menu contents — useful for people who don't know what the words mean, English isn't their first language, or who simply enjoy seeing tantalizing photos of food.

### The Local vs Deploy Gap

Karpathy described building Menugen locally as "an exhilarating and fun escapade" but deploying it as "a bit of a painful slog." This captures a universal experience for developers: something works beautifully on your local machine but encounters significant friction when deployed to platforms like Vercel, Cloudflare, or Replicate.

The project served as an implicit critique of the developer experience across multiple major platforms — Replicate, OpenAI, Vercel, and others were all mentioned as having friction points. This made Replicate notable: being mentioned alongside these "big hotshot companies" highlighted that even mature platforms have work to do.

### Significance for AI-Native Design

Menugen's development and deployment experience directly informed Replicate's subsequent product changes: adding LLM-friendly documentation, curl-first API design, and MCP server support. It is a concrete example of how vibe coding experiments surface real developer experience problems that inform platform design.
