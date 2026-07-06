---
title: LLM Wiki — Karpathy's Foundational Gist
category: misc
tags:
- llm
- wiki
- knowledge-management
- pattern
- karpathy
sources:
- '[[sources/llm-wiki]]'
source_url: https://gist.githubusercontent.com/karpathy/442a6bf555914893e9891c11519de94f/raw/ac46de1ad27f92b28ac95459c782c07f6b8c964a/llm-wiki.md
created: '2026-07-01'
updated: '2026-07-01'
summary: Karpathy's original gist describing the LLM Wiki pattern — a persistent, compounding wiki maintained by LLMs, replacing ephemeral RAG with compiled knowledge.
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-01
tier: supporting
---

# LLM Wiki — Karpathy's Foundational Gist

[[entities/andrej-karpathy]]'s original gist describing the LLM Wiki pattern — the foundational document that this vault is built on. This vault is a concrete instantiation of the ideas in this gist.

## Overview

Contrasts the standard RAG approach (retrieve-and-regenerate every query, no accumulation) with a persistent wiki approach (compile knowledge once, keep it current, compound over time). The LLM reads sources, extracts key information, and integrates it into an existing wiki — updating entity pages, revising topic summaries, flagging contradictions, strengthening synthesis.

## Key Points

- **Core thesis**: RAG re-discovers knowledge on every query; a persistent wiki compiles it once and keeps it current. The wiki is a compounding artifact.
- **Three-layer architecture**: raw sources (immutable) → wiki (LLM-maintained markdown) → schema (config telling the LLM how to maintain the wiki)
- **Three operations**: Ingest (read source, update 10-15 wiki pages), Query (search wiki, synthesize answer, optionally file answer back), Lint (health-check: contradictions, orphans, stale claims)
- **Two tracking files**: `index.md` (content catalog, organized by category, one-line summaries) and `log.md` (chronological append-only record)
- **Human role**: curate sources, direct analysis, ask good questions, think about meaning. **LLM role**: all bookkeeping — cross-references, summaries, consistency, contradiction detection
- **Why it works**: the maintenance burden of a personal wiki grows faster than its value for humans. LLMs don't get bored and can touch 15 files in one pass. The cost of maintenance is near-zero.
- **Inspiration**: traces the idea to Vannevar Bush's Memex (1945) — personal, curated knowledge store with associative trails. Bush couldn't solve who does the maintenance; the LLM handles that.
- **Optional tooling**: qmd (hybrid BM25/vector search), Obsidian Web Clipper (article→markdown), Marp (slide decks from wiki), Dataview (frontmatter queries)

## Concepts

- [[concepts/agent-loop]] — The ingest/query/lint operations described here are special cases of the agent loop: the LLM is the agent, the wiki is the evaluation, and new sources are the goal.

## Entities

- [[entities/andrej-karpathy]] — Author of this gist and originator of the LLM Wiki pattern

## Related

- [[entities/andrej-karpathy]] — Karpathy entity page
- [[concepts/agent-loop]] — The agent loop concept that the three operations (ingest, query, lint) instantiate
