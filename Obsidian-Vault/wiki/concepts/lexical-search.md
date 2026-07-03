---
title: Lexical Search
tags: [search, keyword, fundamentals]
aliases: [keyword search, full-text search]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "Classic search approach that matches on string identity after text analysis. Fast, scalable, predictable — built on the inverted index with BM25 scoring. Dumb but effective for exact and near-exact matches."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-03T08:30:00Z
updated: 2026-07-03T08:30:00Z
---

# Lexical Search

The classic approach to search: match on the actual words stored in documents after running text through an **analysis pipeline**. Also called keyword search or full-text search. ^[extracted]

## How It Works

At **ingestion time**, each document's text is analyzed:
1. **Tokenization** — split on whitespace and punctuation (simpler for Western languages, more complex for Asian languages) ^[extracted]
2. **Lowercasing** — normalize case so searches are case-insensitive ^[extracted]
3. **Stop word removal** — filter common words (33 words in English) using language-specific lists; can eliminate meaningful queries ("to be or not to be" becomes empty) ^[extracted]
4. **Stemming** — reduce words to roots via rule-based algorithms like Snowball (looking → look, droids → droid). Not dictionary-based: "blackberries" stems to "blackberri." ^[extracted]

The analyzed tokens are stored in an [[concepts/inverted-index|inverted index]] with positions and offsets. The same analysis pipeline runs on the query at search time, ensuring exact token-to-token matches. ^[extracted]

## Advanced Techniques

| Technique | Description | Cost |
|---|---|---|
| **Fuzzy matching** | Levenshtein edit distance per token; supports 1–2 edits | Moderate |
| **N-grams** | Substring tokens (trigrams common); edge n-grams match from word start only | High storage + query cost |
| **Synonyms** | Expand tokens via synonym lists; LLMs now make synonym generation easier | Requires maintenance |
| **Slop** | Allow missing words in phrase search (e.g., "I am father" with slop 1 matches "I am your father") | Cheap |
| **Multi-field storage** | Store text multiple ways (with and without stop words, with n-grams) with different weights | Higher storage |

## Scoring

Lexical search uses BM25 scoring: term frequency (flattened curve), inverse document frequency (rare = relevant), and field length norm (short field match > long field match). Scores are relative within a single query only — never comparable across queries or representable as percentages. ^[extracted]

## Limitations

- No semantic understanding — "bat" the animal and "bat" the sports equipment match the same ^[extracted]
- Language analysis must match the document language; wrong stemmer/stop words produce garbage ^[extracted]
- Dictionaries for advanced features (contractions, compounds) are often not freely available or have restrictive licenses ^[extracted]

## Related

- [[concepts/inverted-index]]
- [[concepts/bm25-scoring]]
- [[concepts/analysis-pipeline]]
- [[concepts/information-retrieval]]
- [[concepts/hybrid-search]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
