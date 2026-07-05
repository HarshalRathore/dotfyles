---
title: "Local vs Deploy Experience Gap"
category: concepts
tags: [developer-experience, local-vs-deploy, deployment-friction, vibe-coding, platform-fragmentation]
summary: "The phenomenon where AI-generated prototypes work beautifully locally but encounter significant friction when deployed — a universal pain point surfacing across major platforms."
sources:
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: related_to
  - target: "[[concepts/probabilistic-software|Probabilistic Software]]"
    type: related_to
  - target: "[[concepts/llm-as-primary-audience|LLM as Primary Audience]]"
    type: related_to
---

## Local vs Deploy Experience Gap

The local vs deploy experience gap describes the phenomenon where an application works beautifully when running locally but encounters significant friction when deployed to a production platform. This gap is particularly acute in the era of AI-generated code, where rapid local prototyping exposes the immaturity of deployment infrastructure.

### The Menugen Case Study

Andre Karpathy described building Menugen locally as "an exhilarating and fun escapade" but deploying it as "a bit of a painful slog." This captures a universal developer experience: the AI-generated code is correct and functional, but the surrounding platform integrations — authentication, payments, hosting, API keys, environment configuration — introduce unexpected complexity.

### Platform Fragmentation

The pain is amplified by platform fragmentation. Karpathy's Menugen deployment touched multiple platforms (Vercel, Cloudflare, Replicate, OpenAI, payment processors), each with its own developer experience challenges. The implicit critique across all of them was that their documentation, APIs, and onboarding were not optimized for the new reality of AI-assisted development.

### Implications

This gap is a primary driver behind the shift toward LLM-friendly platforms. If the primary consumer of your platform is an AI coding agent, then the deploy experience should be as smooth as the local experience — ideally, the same. Platforms that reduce this gap (through better docs, curl-first APIs, llms.txt, and MCP integration) gain a competitive advantage in the AI-native development era.
