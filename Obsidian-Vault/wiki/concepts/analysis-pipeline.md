---
title: Text Analysis Pipeline
tags: [search, indexing, preprocessing]
aliases: [analyzer, analysis pipeline, tokenizer]
sources: ["AI Engineer World's Fair 2025 - Information Retrieval from the Ground Up - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=4Xe_iMYxBQc"]
summary: "Configurable chain of character filters, tokenizer, and token filters that transforms raw text into searchable tokens at ingestion and query time in a search engine."
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

# Text Analysis Pipeline

The analysis pipeline transforms raw text into tokens stored in the [[concepts/inverted-index|inverted index]]. Critically, the **same pipeline runs on both the stored text and the query text**, ensuring exact token-to-token matches at search time. ^[extracted]

## Pipeline Stages

### 1. Character Filters (optional)
Pre-process the raw text before tokenization:
- HTML strip — remove tags like `<em>` since nobody searches for markup ^[extracted]

### 2. Tokenizer
Splits text into individual tokens:
- **Standard tokenizer** — breaks on whitespace AND punctuation (e.g., "Obi-Wan" → ["Obi", "Wan"]) ^[extracted]
- **Whitespace tokenizer** — breaks only on whitespace ("Obi-Wan" → ["Obi-Wan"]) ^[extracted]

Asian languages require more sophisticated tokenizers since words are not space-delimited. ^[extracted]

### 3. Token Filters
Transform and filter tokens:
- **Lowercasing** — case-insensitive matching ^[extracted]
- **Stop word removal** — language-specific lists filter common words (33 words in English). Can be overridden. ^[extracted]
- **Stemming (Snowball)** — rule-based reduction to word roots. Not dictionary-based: "blackberries" → "blackberri" (weird but consistent). ^[extracted]
- **N-grams / Edge n-grams** — substring tokens for partial matching ^[extracted]
- **Synonyms** — expand to related terms ^[extracted]

## Language-Specific Analysis

Each language has its own stop word list and stemming rules. Using the wrong language analyzer produces garbage results because rules (e.g., English stemmer stripping trailing 's') apply incorrectly to other languages. ^[extracted] Elasticsearch includes a language-aware analyzer that can auto-detect the language from a few words with high accuracy. ^[extracted]

## Best Practices

- Do not mix languages in the same field — use separate fields per language with the appropriate analyzer ^[extracted]
- Consider storing text multiple ways (with/without stop words, with n-grams) with different boost weights for fallback matching ^[inferred]
- Test analysis output with the `_analyze` endpoint before committing to a pipeline configuration ^[extracted]

## Related

- [[concepts/lexical-search]]
- [[concepts/inverted-index]]
- [[entities/apache-lucene]]
- [[entities/elastic]]

## Sources

- AI Engineer World's Fair 2025 — Philipp Krenn, Elastic: <https://www.youtube.com/watch?v=4Xe_iMYxBQc>
