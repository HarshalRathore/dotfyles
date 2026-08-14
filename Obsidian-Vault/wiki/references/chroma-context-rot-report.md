---
title: Context Rot — Chroma Technical Report (Hong, Troynikov, Huber)
category: references
tags: [context-rot, long-context, llm-evaluation, needle-in-a-haystack, chroma]
aliases: [chroma context rot, context rot report, increasing input tokens impact]
relationships:
  - target: '[[concepts/context-rot]]'
    type: extends
  - target: '[[entities/chroma]]'
    type: related_to
sources:
  - https://www.trychroma.com/research/context-rot
summary: "Chroma's report (July 2025): as input tokens grow, LLM performance degrades non-uniformly — 18 models, four NIAH-extension experiments, LongMemEval, and a repeated-words task."
provenance:
  extracted: 0.9
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:30:00Z
updated: 2026-08-13T15:30:00Z
---

# Context Rot: How Increasing Input Tokens Impacts LLM Performance

> **TL;DR:** The assumption that LLMs use their context uniformly is false. Across 18 LLMs (including GPT-4.1, Claude Sonnet 4, Gemini 2.5, Qwen3) and 194,480 model calls, performance degrades as input length grows even on simple, controlled tasks — faster when needle-question semantic similarity is low, and non-uniformly under distractors and haystack-structure changes. Plain lexical Needle-in-a-Haystack dramatically underestimates long-context degradation.

**Authors:** Kelly Hong, Anton Troynikov, Jeff Huber (Chroma) · **Published:** 2025-07-14 · **URL:** https://www.trychroma.com/research/context-rot

## Overview

Models are presumed to process context uniformly — the 10,000th token as reliably as the 100th. The report tests that assumption directly by holding task complexity constant and varying only input length. It also argues the dominant long-context benchmark, Needle in a Haystack (NIAH), measures narrow lexical retrieval: direct string matches of a known sentence in unrelated text. Real applications (agent tasks, summarization) demand semantically-oriented processing over broader, more ambiguous information. ^[extracted]

## Task Suite

- **NIAH extension** — four controlled experiments:
  1. **Needle-Question Similarity** — cosine similarity of needle-question pairs (averaged over five embedding models: text-embedding-3-small/large, jina-embeddings-v3, voyage-3-large, all-MiniLM-L6-v2). Needles hand-written to blend into the haystack topic (PG-essay and arXiv haystacks, topics found via UMAP/HDBSCAN clustering + MMR picks; similarity ranges PG 0.445–0.775, arXiv 0.521–0.829, σ<0.1). ^[extracted]
  2. **Impact of Distractors** — distractors (topically related to the needle but not answering) vs irrelevant content (unrelated); baseline / single / multiple (4) distractor setups. ^[extracted]
  3. **Needle-Haystack Similarity** — two thematically distinct haystacks (Paul Graham essays, arXiv papers) with corresponding needles. ^[extracted]
  4. **Haystack Structure** — original coherent flow vs sentence-shuffled haystack (same topic, no logical continuity). ^[extracted]
- **LongMemEval** — conversational question-answering benchmark. ^[extracted]
- **Repeated Words** — synthetic task: replicate a series of repeated words. ^[extracted]

## Methodology

- 18 LLMs incl. GPT-4.1, Claude 4 (Sonnet 4), Gemini 2.5 Flash, Qwen3 (standard and thinking modes where available); each model run across **8 input lengths × 11 needle positions** within its maximum context window, temperature 0 (except where incompatible, e.g. o3 / Qwen thinking mode); Qwen models extended 32,768 → 131,072 tokens via YaRN. ^[extracted]
- Outputs graded by an aligned GPT-4.1 judge (method in the appendix). Refusals were rare: 69 of 194,480 calls (0.035%), e.g. Claude Opus 4 empty outputs with `stop_reason="refusal"`. ^[extracted]
- Answers were pre-verified to not exist in the haystacks (vector-database lookup), ensuring errors are hallucinations, not retrieval of alternative answers. ^[extracted]

## Findings

- **Performance consistently degrades with increasing input length across all experiments** — even on the simplest tasks. ^[extracted]
- **Lower needle-question similarity → faster degradation**; at short lengths even low-similarity pairs succeed, so the degradation is not intrinsic difficulty — input size is the isolated factor. Needle position had no notable effect. ^[extracted]
- **Distractors have non-uniform impact**, growing more prominent as input length increases, with distinct model-specific responses. ^[extracted]
- **Needle-haystack similarity has no uniform effect** — flagged for further investigation. ^[extracted]
- **Haystack structure consistently matters** — shuffling logical flow changes how models process long inputs. ^[extracted]

## Related Work

Prior evidence the report builds on: NoLiMa (non-lexical needle-question matches show significant drops), AbsenceBench (recognizing absence of a snippet degrades with length), multi-round co-reference resolution (MRCR), Latent List (type of irrelevant content matters — locally-cancelling list operations degrade more than print statements), Graphwalks. ^[extracted]

## Citation

```plaintext
@techreport{hong2025context,
title = {Context Rot: How Increasing Input Tokens Impacts LLM Performance},
author = {Hong, Kelly and Troynikov, Anton and Huber, Jeff},
year = {2025}, month = {July}, institution = {Chroma},
url = {https://trychroma.com/research/context-rot}}
```

## Concepts

- [[concepts/context-rot|Context Rot]] — token-level degradation (this report) vs agent-level forgetting (the AIEF talk); the report is the empirical underpinning for "context is not free"
- [[concepts/context-management-for-agents|Context Management for Agents]] — why harnesses compact instead of growing context
- [[concepts/prompt-caching|Prompt Caching]] — the economics that make compaction worthwhile

## Entities

- [[entities/chroma|Chroma]] — publisher and employer of the authors
- [[entities/pi|Pi]] — the compaction post links this report as the reason to start fresh or compact

## Open Questions

- The report's codebase is published for replication ("complete codebase to replicate our results") — vault-level replication not performed. ^[inferred]
- Whether 2026 frontier models have improved on these curves — the report is dated July 2025. ^[ambiguous]

## Related

- [[misc/web-earendil-com-posts-compaction-in-pi|How Compaction Works in Pi]] — cites this report as the motivation for not growing context unboundedly
- [[references/prompt-caching-in-agents|Prompt Caching In Agents]] — cost side of the same trade-off
