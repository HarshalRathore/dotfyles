---
title: "Flatfile"
tags:
  - company
  - data-migration
  - ai-platform
  - saas
sources:
  - "[[sources/watchv=cimvknx-cni]]"
summary: "Data migration and import platform that moves data between enterprise systems. Operates an AI platform layer including agents, tools, and real-time context analysis for checking, transforming, and validating data."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Flatfile

Flatfile is a developer platform for migrating data between enterprise systems. It provides infrastructure for moving data at scale, featuring a developer platform that embeds into customer applications and an AI layer that analyzes, validates, and transforms data.

## AI Platform Architecture

Per [[entities/craig-wattrus|Craig Wattrus]], Flatfile's AI stack has four layers: ^[extracted]

1. **Customer applications** — Flatfile applications deployed to customer infrastructure
2. **Real-time context** — data and validation outcomes (errors, warnings, data quality signals)
3. **AI agents** — agents with tools and jobs for data processing
4. **User-facing surfaces** — invisible, ambient, in-line, and conversational form factors for AI interaction

## AI Deployment Patterns

Flatfile deploys AI across four [[concepts/ai-coworker-form-factors|form factors]]: ^[extracted]
- **Invisible** — when a user signs up, AI agents write a Flatfile application in the background customized to their industry, without the user knowing AI is involved
- **Ambient** — sparkle indicators on columns where AI finds opportunities to fix data, subtle presence during normal work
- **In-line** — AI directly in the user's workflow, writing code that transforms data sets of millions of rows in real time
- **Conversational** — no-code/low-code build mode where users build Flatfile applications through conversation

## Products

- **Developer Platform** — APIs and infrastructure for embedding data import into applications
- **Build Mode** — conversational no-code/low-code system for building Flatfile applications
- **Obvious** — new consumer-facing product (announced but unreleased at time of talk) bringing data migration to end users ^[inferred]

## Related

- [[entities/craig-wattrus]] — Director of AI Transformation
- [[concepts/ai-coworker-form-factors]] — The four AI interaction form factors Flatfile uses
- [[concepts/unstructured-data-extraction]] — Core capability for data migration

## Sources

- [[references/aief2025-form-factors-ai-coworkers-craig-wattrus-flatfile]] — Talk at AI Engineer World's Fair 2025
