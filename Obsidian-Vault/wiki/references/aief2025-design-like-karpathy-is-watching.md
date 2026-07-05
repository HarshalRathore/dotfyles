---
title: "Design like Karpathy is watching — Zeke Sikelianos, Replicate"
category: references
tags: [aief2025, zeke-sikelianos, replicate, karpathy, vibe-coding, llms-txt, mcp, curl, openapi, developer-experience, menugen, cog]
summary: "Zeke Sikelianos (Replicate) presents at AIEF2025 on designing AI-native products inspired by Andre Karpathy's work. Covers Menugen, LLMs.txt, curl-first APIs, OpenAPI, and MCP."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.95, inferred: 0.05, ambiguous: 0.0 }
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[misc/ai-engineer-worlds-fair-2025|AI Engineer World's Fair 2025]]"
    type: related_to
  - target: "[[entities/zeke-sikelianos|Zeke Sikelianos]]"
    type: related_to
  - target: "[[entities/replicate|Replicate]]"
    type: related_to
  - target: "[[entities/andre-karpathy|Andre Karpathy]]"
    type: related_to
---

## Design like Karpathy is watching

**Speaker:** Zeke Sikelianos, Replicate
**Event:** AI Engineer World's Fair 2025 (AIEF2025)
**Video:** https://www.youtube.com/watch?v=huQPkrwVWwc

### Summary

Zeke Sikelianos presents a talk inspired by Andre Karpathy's influence on AI-native product design. He covers Karpathy's background, the Menugen vibe coding experiment, and Replicate's response to developer experience challenges surfaced by that project.

### Key Topics

1. **Who is Andre Karpathy** — His work at Google, OpenAI, Tesla, xAI, Eureka Labs; YouTube educator; coiner of "vibe coding"; author of the Software 2.0 manifesto
2. **Menugen** — Karpathy's hackathon project (menu photo → food images); "exhilarating locally, painful to deploy"
3. **Developer experience pain points** — Outdated docs, API changes, rate limiting across major platforms
4. **LLMs.txt** — Single clean markdown files for LLM-friendly documentation; Replicate's implementation on model pages
5. **Curl over click** — "LLMs don't like to click, they like to curl"; curl commands encode everything an LLM needs
6. **Cog** — Packaging ML models in Docker containers with standardized OpenAPI interfaces
7. **LLM as primary audience** — The thesis that your product's primary consumer is now an LLM, not a human
8. **OpenAPI schemas** — JSON schemas as the foundation for agent tool discovery
9. **MCP (Model Context Protocol)** — Transforming OpenAPI into agent-actionable format; Replicate's MCP server for Claude Desktop

### Notable Quotes

- "The hottest new programming language is English" — Andre Karpathy
- "LLMs don't like to click, they like to curl" — Andre Karpathy (via Zeke)
- "The primary audience of your thing, your product, service, library, etc., is now an LLM, not a human" — Zeke Sikelianos
- Karpathy described Menugen locally as "an exhilarating and fun escapade" but deploying as "a bit of a painful slog"
