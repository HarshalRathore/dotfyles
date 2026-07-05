---
title: Complexity-Adjusted Impact
category: concepts
tags: [complexity, impact, technique-selection, prioritization, lazy-principle, aief2025]
aliases: [complexity impact matrix, difficulty impact, stay lazy, complexity-adjusted]
summary: "Framework for prioritizing RAG techniques: plot each technique on a difficulty × impact matrix, then implement easy-high-impact items first and skip hard-low-impact ones. Also called the 'stay lazy' principle."
sources:
  - "AIEF2025 - Layering every technique in RAG, one query at a time — David Karam, Pi Labs (fmr. Google Search) - https://www.youtube.com/watch?v=w9u11ioHGA0"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/quality-engineering-loop]]"
    type: used_in
  - target: "[[concepts/premature-optimization]]"
    type: relates_to
  - target: "[[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]]"
    type: applied_to
---

# Complexity-Adjusted Impact

Complexity-adjusted impact is a prioritization framework for deciding which RAG techniques to implement. It plots each candidate technique on a two-dimensional matrix: **difficulty** (how hard is it to implement and maintain?) versus **impact** (how much does it improve quality?). ^[extracted]

## The Matrix

| | **High Impact** | **Low Impact** |
|---|---|---|
| **Easy** | Do immediately | Skip |
| **Hard** | Consider if justified | Definitely skip |

### Quadrant 1: Easy + High Impact
Implement immediately. Example: adding BM25 to a system that only uses vector search. BM25 is straightforward to add (most vector databases include it), and it often significantly improves quality for keyword-matching queries. ^[extracted]

### Quadrant 2: Hard + High Impact
Consider only when the problem space justifies the investment. Example: building custom embeddings for retrieval. Harvey (the legal AI company) builds custom embeddings because relevance embeddings alone don't suffice for their domain — the high impact of legal-specific retrieval justifies the high difficulty. ^[extracted]

### Quadrant 3: Easy + Low Impact
Skip. The effort isn't worth the marginal gain. ^[extracted]

### Quadrant 4: Hard + Low Impact
Definitely skip. This is the most common waste in RAG projects. ^[extracted]

## The "Stay Lazy" Principle

Karam calls this the "stay lazy" principle: always look at what's broken, and if it's not broken, don't fix it. ^[extracted]

This is not laziness in the negative sense — it's the recognition that:
1. Most RAG systems don't need most techniques
2. Adding complexity without solving a real problem makes the system harder to maintain
3. The right technique depends on your specific query patterns, not on what's trendy

The framework forces you to answer two questions before implementing anything:
- **What problem am I solving?** (impact)
- **How hard is this fix?** (difficulty)

If you can't answer the first question, you shouldn't be implementing the technique at all. ^[extracted]

## Relation to Premature Optimization

Complexity-adjusted impact is the applied version of the "premature optimization is the root of all evil" principle. It prevents teams from implementing sophisticated techniques (custom embeddings, cross-encoder re-rankers, graph-based retrieval) before confirming that simpler approaches (BM25, basic vector search) can't solve the problem. ^[inferred]

## Related

- [[concepts/quality-engineering-loop]] — the iterative process that uses this framework
- [[concepts/premature-optimization]] — the principle this framework operationalizes
- [[concepts/rag-pipeline-architecture|RAG Pipeline Architecture]] — the system being optimized
- [[references/aief2025-layering-every-technique-in-rag-david-karam|AIEF2025 - Layering every technique in RAG]] — the source talk
