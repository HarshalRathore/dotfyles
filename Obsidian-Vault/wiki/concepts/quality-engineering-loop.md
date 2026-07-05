---
title: Quality Engineering Loop
category: concepts
tags: [quality-engineering, rag, retrieval, loss-analysis, technique-selection, baseline, aief2025]
aliases: [quality loop, quality engineering cycle, baseline-loss-technique]
summary: "Iterative improvement cycle for RAG systems: baseline → loss analysis → technique selection → re-baseline. Start with outcomes, not techniques. Match fix complexity to problem severity."
sources:
  - "AIEF2025 - Layering every technique in RAG, one query at a time — David Karam, Pi Labs (fmr. Google Search) - https://www.youtube.com/watch?v=w9u11ioHGA0"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/complexity-adjusted-impact]]"
    type: uses
  - target: "[[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]]"
    type: applied_to
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: extends
  - target: "[[concepts/loss-analysis|Loss Analysis]]"
    type: includes
---

# Quality Engineering Loop

The quality engineering loop is an iterative improvement cycle for RAG (and broader AI system) quality, pioneered at Google Search and applied at Pi Labs. It flips the common approach on its head: instead of starting with techniques (BM25? embeddings? re-rankers?), you start with outcomes and work backward. ^[extracted]

## The Four Steps

1. **Define outcomes** — Establish your quality bar (your personal benchmark, not an external benchmark). What does "good enough to launch" look like for your application? ^[extracted]
2. **Baseline** — Measure current quality on a representative query set using the simplest possible approach first. ^[extracted]
3. **Loss analysis** — Look at actual queries and cases. Identify what's broken by examining individual failures. What queries work? What queries fail? Why? ^[extracted]
4. **Technique selection** — Choose techniques based on complexity-adjusted impact, matching the fix's complexity to the problem's severity. ^[extracted]

Then re-baseline and iterate. ^[extracted]

## The Core Principle

The biggest mistake teams make is starting at step 4. Without understanding what's broken through loss analysis, you cannot know whether BM25, vector retrieval, or re-ranking is the right choice. Many times, you don't need any of these techniques at all. ^[extracted]

This is why the loop starts with outcomes and loss analysis before touching any retrieval technique. The techniques are a catalog to consult after you understand the problem, not a checklist to implement blindly. ^[extracted]

## Complexity-Adjusted Impact

Within the loop, technique selection is guided by a difficulty × impact matrix: ^[extracted]

- **Easy + high impact** → do it immediately (e.g., adding BM25 to a pure vector system)
- **Hard + high impact** → consider only when the problem space justifies the investment (e.g., custom embeddings for a domain where relevance alone doesn't suffice)
- **Easy + low impact** → skip
- **Hard + low impact** → definitely skip

This is the "stay lazy" principle: always look at actual cases, see what's working, see what's not, and only invest in techniques that move the needle. ^[extracted]

## Relation to Evals

The quality engineering loop is the operational counterpart to eval-driven development. Evals provide the measurement infrastructure; the quality loop provides the process. Together they form a disciplined approach to AI system improvement that Google used for search and that Pi Labs now applies to RAG systems. ^[inferred]

## Related

- [[concepts/complexity-adjusted-impact]] — the difficulty × impact framework used within the loop
- [[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]] — the system being improved
- [[concepts/eval-driven-development|Eval-Driven Development]] — the measurement philosophy
- [[concepts/loss-analysis|Loss Analysis]] — step 3 of the loop
- [[references/aief2025-layering-every-technique-in-rag-david-karam|AIEF2025 - Layering every technique in RAG]] — the source talk
