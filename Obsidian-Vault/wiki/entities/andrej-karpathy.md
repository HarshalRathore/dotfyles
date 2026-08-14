---
title: Andrej Karpathy
tags:
- ai
- research
sources:
- '[[sources/autoresearch]]'
- '[[sources/llm-wiki]]'
- 'https://x.com/i/status/2080171634103840976'
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.45
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
created: '2026-07-04T15:08:32.607057+00:00'
updated: '2026-08-14T00:00:00Z'
summary: Andrej Karpathy, AI researcher (OpenAI co-creator of ChatGPT, ex-Tesla AI); known for the autoresearch pattern, the LLM Wiki gist, and his stance that AI detectors are doomed to fail.
relationships:
  - target: "[[concepts/ai-slop]]"
    type: related_to
---
# Andrej Karpathy

Andrej Karpathy is a prominent AI researcher and one of the creators of ChatGPT (OpenAI founding member, later Director of AI at Tesla). In March 2026, he packaged and named the "autoresearch" pattern — giving an AI agent a benchmark, a budget, and letting it loop: propose a change, measure it, keep what helps, discard what doesn't.

He also authored the foundational "LLM Wiki" gist describing the pattern of building persistent, compounding knowledge bases maintained by LLMs — the architecture this vault is built on. The gist contrasts ephemeral RAG (re-discover knowledge on every query) with a persistent wiki (compile once, keep current, compound over time). It defines the three-layer architecture (raw sources → wiki → schema), three operations (ingest, query, lint), and the philosophy that LLMs eliminate the maintenance burden that kills human-maintained wikis.

## Known for

- **Autoresearch pattern** — AI agent optimization loop: propose, benchmark, keep/discard
- **LLM Wiki pattern** — Persistent wiki maintained by LLMs, the foundation of this knowledge base
- Work at Tesla AI, OpenAI, and popularizing AI education

## 2026-07: AI detectors "in principle doomed to fail"

Quoted in Ruben Hassid's article ([[references/how-to-bypass-ai-detectors]]) via a screenshot of his X post to a school board: *"You will never be able to detect the use of AI in homework. Full stop. All 'detectors' of AI imo don't really work, can be defeated in various ways, and are in principle doomed to fail. You have to assume that any work done outside classroom has used AI."* ^[extracted]
