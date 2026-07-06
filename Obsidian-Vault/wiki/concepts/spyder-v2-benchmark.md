---
title: Spyder V2 Benchmark
category: concepts
tags: [benchmark, agent-memory, long-horizon, retrieval, memory-harness]
aliases: [Spyder V2, Spyder V2 benchmark]
relationships:
  - target: '[[concepts/xbench]]'
    type: related_to
  - target: '[[concepts/memory-harness]]'
    type: related_to
  - target: '[[concepts/agent-memory]]'
    type: extends
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A benchmark for evaluating memory retrieval in long-horizon agent tasks, paired with XBench and validated across multiple models including QN 27B and DeepSeek v4 Flash.
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

# Spyder V2 Benchmark

**Spyder V2** is a benchmark for evaluating formal memory harness strategies in long-horizon agent tasks. It tests whether a model can retrieve the correct information from an earlier step when queried far outside its context window. ^[extracted]

Presented at the AI Engineer World's Fair 2026 by a researcher from Sakana AI. ^[extracted]

## XBench Pairing

Spyder V2 was used alongside the [[concepts/xbench|XBench benchmark]] (an established benchmark for long-horizon task memory) to validate memory retrieval strategies. In the experiments, both benchmarks were run across multiple models to measure recall policy effectiveness. ^[extracted]

## Key Findings

The ranked recall policy (decisions ledger) was tested on Spyder V2 with the following results: ^[extracted]

- **Cross-model generalization**: The ranked recall strategy worked consistently across both **QN 27B** (4-bit quantized) and **DeepSeek v4 Flash** models
- **Cost efficiency**: Better recall also costs less — bad memory policies waste tokens and send agents in the wrong direction
- **Policy matters more than scale**: The structural design of the recall function (what to store, how to rank, what survives multiple sessions) proved more important than raw context size

## The Challenge

Spyder V2 tasks are designed so that critical information exists far outside the model's context window — similar to XBench where a question at step 500 references an answer at step 124. The model must rely entirely on its memory harness to bridge the gap. ^[extracted]

## Implications

> "Bad memory is expensive because it spends more tokens and can send the agent the wrong way. But having a good structural policy for recall can save you a lot of tokens and budget." ^[extracted]

The benchmark is part of a broader research agenda on memory technique landscape, spanning over 30 runnable open-source cookbooks, from simple file system retrieval to trained memory models. ^[extracted]

## Related

- [[concepts/xbench]] — companion benchmark for long-horizon memory tasks
- [[concepts/memory-harness]] — the write-manage-read loop architecture tested on Spyder V2
- [[concepts/agent-memory]] — the broader domain Spyder V2 evaluates
- [[concepts/decisions-ledger]] — the ranked recall strategy that performed best
- [[concepts/context-rot]] — the fundamental problem Spyder V2 benchmarks
- [[concepts/retrieval-augmented-generation]] — retrieval paradigm underlying memory harnesses

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
