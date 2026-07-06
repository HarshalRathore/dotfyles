---
title: Code Compression Benchmark
category: concepts
tags: [benchmark, code-compression, information-theory, model-evaluation, algorithmic-discovery]
aliases: [code compression, compression benchmark, lossless code compression]
relationships:
  - target: '[[concepts/nano-gpt-speed-run]]'
    type: related_to
  - target: '[[concepts/information-theory]]'
    type: extends
  - target: '[[concepts/model-benchmarks]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A benchmark proposing to compress 10MB of source code into the best lossless representation — a problem that forces models to create novel algorithms rather than just predict tokens.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Code Compression Benchmark

The **code compression benchmark** proposes a novel evaluation method: compress 10MB of source code into the smallest lossless representation. The goal is to create a benchmark where the size of the compressed file plus the size of the source code is never-ending — a problem that forces models to do novel things like creating totally new algorithms. ^[extracted]

Presented at the AI Engineer World's Fair 2026. ^[extracted]

## The Rationale

Current benchmarks test models on predicting tokens or solving predefined problems. Code compression is different because:

1. **No predefined solution** — there's no single right answer
2. **Requires algorithmic thinking** — compression is fundamentally about finding patterns and regularities
3. **Measures understanding** — to compress well, you must understand the code's structure and semantics
4. **Never-ending** — the size of compressed + source is always positive, so there's always room for improvement

## Connection to Code Writing

The speaker noted that code writing is a very visual activity — thinking in block diagrams and data flow, not just chains of tokens. The code compression benchmark forces models to move beyond token prediction and develop genuine understanding. ^[extracted]

## Related

- [[concepts/nano-gpt-speed-run|Nano GPT Speed Run]] — another benchmark pushing models beyond token prediction
- [[concepts/information-theory|Information Theory]] — the mathematical foundation of compression
- [[concepts/model-benchmarks|Model Benchmarks]] — the broader category of model evaluation
- [[concepts/chain-of-thought|Chain of Thought]] — the token-chain thinking mode compression challenges

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
