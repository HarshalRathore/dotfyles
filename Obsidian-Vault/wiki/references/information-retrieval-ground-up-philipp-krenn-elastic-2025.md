---
title: Information Retrieval from the Ground Up — Philipp Krenn (Elastic)
tags:
- search
- retrieval
- rag
- elasticsearch
- ai-eng-fair-2025
sources:
- '[[sources/ai-engineer-worlds-fair-2025-information-retrieval-from-the-ground-up-philipp-krenn]]'
- 'https://www.youtube.com/watch?v=4xe_imyxbqc'
summary: Hands-on walkthrough of retrieval fundamentals — keyword/lexical search through hybrid retrieval — with live Elasticsearch demos using Star Wars quotes. Covers tokenization, stemming, inverted inde...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-03 08:30:00+00:00
updated: 2026-07-03 08:30:00+00:00
category: references
---

# Information Retrieval from the Ground Up

> Philipp Krenn, Elastic — AI Engineer World's Fair 2025

A practical, demos-driven tour of retrieval techniques: from the classic inverted index and BM25 scoring, through learned sparse and dense vector representations, to hybrid search with RRF and re-ranking. All examples use Elasticsearch with Star Wars quotes.

## Key Ideas

### Lexical/Keyword Search

The foundation of search. At ingestion time, text is run through an **analysis pipeline**: tokenization (splitting on whitespace/punctuation), lowercasing, stop word removal, and stemming. This produces tokens stored in an **inverted index** — an alphabetically sorted list of tokens with pointers to document IDs and positions. ^[inferred — synthesized from multiple examples in talk]

- Token positions enable phrase search (word N followed by word N+1) and highlighting without re-analyzing source text. ^[extracted]
- The same analysis pipeline runs on queries at search time, ensuring exact matches against stored tokens. ^[extracted]
- Stop word lists are language-specific (33 words in English); removing them reduces index size but can eliminate meaningful queries like "to be or not to be." ^[extracted]
- Stemming reduces words to roots (looking → look, droids → droid) using rule-based algorithms like Snowball. It is not dictionary-based — "blackberries" stems to "blackberri" — and breaks on compound nouns in languages like German and Korean without n-gram or dictionary fallbacks. ^[extracted]

### The Inverted Index

The core data structure behind every search engine built on Apache Lucene. Tokens are stored alphabetically with:
- Document IDs containing the token
- Term frequency per document
- Position list per document

This structure makes retrieval fast because all the work happens at ingestion time. ^[extracted]

### Scoring: BM25

BM25 (Best Match, 25th iteration) is the standard ranking algorithm, replacing classic TF-IDF. Three components:

1. **Term frequency** — how often the term appears in the document (flattened curve vs TF-IDF's linear growth — after ~5 occurrences, additional hits add little relevance)
2. **Inverse document frequency** — rare terms are more relevant than common ones
3. **Field length norm** — a match in a short field is more relevant than the same match in a long field

Key caveat: BM25 scores are only meaningful *within a single query* — they are not percentages and cannot be compared across queries. Adding or removing a document changes the statistics and shifts all scores. ^[extracted]

### Dense Vector Search

Documents are represented as dense floating-point vectors (embeddings) in a high-dimensional space. Queries are embedded with the same model, and similarity is measured by vector distance (cosine similarity, etc.). ^[extracted]

Properties:
- Always returns some result — there is no clean "no match" cutoff point ^[extracted]
- Quality depends entirely on the embedding model; requires evaluation on your specific data and queries ^[extracted]
- More dimensions are not always better — they're more expensive and may not improve results for your use case ^[extracted]
- Chunking strategy (by page, paragraph, sentence, overlapping or not) significantly impacts retrieval quality ^[extracted]

### Learned Sparse Retrieval (ELSER / SPLADE)

An alternative to dense vectors. The text is represented as a sparse vector — a list of expanded terms with relevance weights. At query time, the query is similarly expanded and the overlap between query and document term-weight lists is scored. ^[extracted]

| Property | Dense | Sparse |
|---|---|---|
| Representation | Fixed-length float array | Variable-length term-weight map |
| Interpretability | Opaque — dimensions are unlabeled | More interpretable — shows which terms matched |
| Query time cost | Fast (ANN index) | Expensive — many OR clauses across many terms |
| Typical models | OpenAI text-embedding-3-small (128d demo), many options | ELSER (Elastic), SPLADE |

### Hybrid Search and RRF

Combining multiple search methods (keyword + dense + sparse) via Reciprocal Rank Fusion (RRF). RRF ignores absolute scores and blends by position: `score = 1 / (60 + rank)`. Each result's RRF score from each sub-query is summed to produce the final ranking. ^[extracted]

- Avoids the problem of normalizing incomparable scores from different methods ^[extracted]
- Elasticsearch supports multi-method retrievers in a single query with built-in RRF fusion ^[extracted]

### Re-ranking

A two-stage approach: retrieve a broad set of candidates (e.g., 1000) with a cheap method, then re-score the top N with a more expensive, higher-quality model. Elastic now includes a built-in re-ranking model that reportedly boosts evaluation scores by ~10 points on customer datasets. ^[extracted]

### Query Rewriting

Using an LLM to transform a user's natural language query into something more search-engine-friendly before retrieval. Example: "What's that Italian dish with layered pasta and meat?" → "lasagna" → keyword search for lasagna recipes. Also supports the HyDE pattern where the LLM generates a synthetic document that looks like a relevant result, then uses its embedding for vector search. ^[extracted]

### Search Evaluation

Four approaches to measuring search quality:
1. **Golden dataset** — human experts rate queries against known-good results (rare in practice)
2. **Clickstream analysis** — infer quality from user behavior (clicked on top results = good, paged through many results = bad, immediate bounce = bad)
3. **LLM-as-judge** — use an LLM to evaluate result relevance
4. **Human + LLM** — mixed approach

Krenn notes that robust evaluation sets are "very important though very rare" and "a lot of people YOLO it." ^[extracted]

### Key Caveats

- **Vector search is not a replacement for keyword search.** Keyword search excels at exact brand/ID matches where vector models fail. Most real-world systems need hybrid search. ^[extracted]
- **Language analysis must match the document language.** Applying the wrong stemmer/stop words produces garbage. Elastic can auto-detect language from a few words. ^[extracted]
- **Search tuning can improve one query while degrading 20 others** — evaluation is essential. ^[inferred]
- **Don't translate scores to percentages.** BM25 scores are relative within a single query and change when the corpus changes. ^[extracted]
- **HNSW indices have high write-time cost** due to immutable segment merging; newer Elasticsearch versions (8.11+, 9.0) have significant optimizations. ^[extracted]

## Open Questions

- Optimal chunking strategy remains domain- and model-dependent with no universal answer.
- How to best combine RRF weighting vs learned re-ranking is still an active area.

## Related Pages

- [[concepts/information-retrieval]]
- [[concepts/lexical-search]]
- [[concepts/inverted-index]]
- [[concepts/bm25-scoring]]
- [[concepts/dense-vector-search]]
- [[concepts/sparse-vector-retrieval]]
- [[concepts/hybrid-search]]
- [[concepts/reciprocal-rank-fusion]]
- [[concepts/re-ranking]]
- [[concepts/analysis-pipeline]]
- [[concepts/chunking-for-retrieval]]
- [[concepts/query-rewriting]]
- [[concepts/search-evaluation-methods]]
- [[entities/philipp-krenn]]
- [[entities/elastic]]
- [[entities/apache-lucene]]
- [[concepts/hybridrag]]
- [[concepts/rag-evaluation]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
