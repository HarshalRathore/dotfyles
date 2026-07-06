---
title: Nano Chat
category: concepts
tags: [auto-research, nan-chat, competition, Aden, AI-participant]
aliases: [nano chat, nan chat, Aden competition]
relationships:
  - target: '[[concepts/auto-research-loop]]'
    type: implements
  - target: '[[concepts/nano-gpt-speed-run]]'
    type: related_to
  - target: '[[concepts/valued-work-per-watt]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: An AI participant named Aden in a research competition using the auto-research loop — demonstrating that AI can compete with human experts using minimal compute.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Nano Chat

**Nano Chat** was an AI participant named **Aden** in OpenAI's "parameter golf" competition at the AI Engineer World's Fair 2026. The goal was to train the best language model under size and compute constraints. Unlike [[concepts/nano-gpt-speed-run|Nano GPT Speed Run]], which focuses on discovering CUDA kernels for low-level GPU optimization, Nano Chat competed in a high-level ML engineering challenge — implementing architectural improvements (gated attention, quantization), combining community contributions (tokenizer improvements), and navigating hard file-size limits to produce better models. ^[extracted]

## What Nano Chat Actually Does

Nano Chat (Aden) is a multi-agent, self-improving system that can: ^[extracted]

- **Read public information** — research papers, other PRs, community notes
- **Run its own experiments** — autonomously iterating on model training configurations
- **Submit PRs** once findings pass a quality gate — publishing its work for the community

Over 22 days, it ran 1,300 experiments on a single H-100 node, set 7 leaderboard records (the best human made only 3), and achieved an H-index of 10 across the community (next best human: 7). ^[extracted]

## Key Difference from Nano GPT Speed Run

| Dimension | Nano Chat (Aden) | Nano GPT Speed Run |
|-----------|-----------------|-------------------|
| **Competition** | OpenAI parameter golf — train best LM under size/compute limits | CUDA kernel optimization for speed |
| **Approach** | Implement ML architectures from papers, combine community contributions | Iterate on GPU kernel code |
| **Innovation type** | Architectural + algorithmic (gated attention, quantization, tokenizer) | Low-level systems optimization |
| **Output** | Model checkpoints, PRs with training recipes | Optimized CUDA kernels |
| **Coordination** | Human community — Aden's PRs merged and built upon by others | Pure benchmark leaderboard |

The two represent different frontiers of auto-research: Nano Chat operates at the **ML engineering** layer (architecture search, training optimization), while Nano GPT Speed Run operates at the **systems** layer (GPU kernel discovery). ^[inferred]

## Performance

Aden's results in the competition: ^[extracted]

| Metric | Value |
|--------|-------|
| Compute used | 4% of competition's total |
| Records made | 15% of total |
| Leaderboard hit rate | 28% of submissions |
| Community average hit rate | ~4.7% |
| Hit rate multiplier | **6× community average** |

## How Aden Worked

Aden's contributions traced to human research papers and other participants. Almost all of Aden's record PRs came from ideas in human research papers. A very small fraction of original ideas emerged from Aden's efforts to navigate file size constraints. ^[extracted]

### Concrete Example

Aden picked up an idea from a paper called **gated attention** and implemented it. It introduced more parameters and broke the 16 MB file size limit. Aden figured out a quantization mechanism to bring the file size down. With those two primitives combined, the score barely moved. Then another contributor posted a tokenizer improvement. Aden recognized the idea, combined it with the architectural work, and after five days the three ideas produced a huge synergistic jump in performance — becoming one of Aden's leaderboard records. ^[extracted]

## Implications

The key lesson is that auto-research systems are not yet producing truly novel ideas. As Zheng Yao observed, "most of them are just good execution, but in reality, execution is mostly the bottleneck." The value lies in rapid iteration and combination across a huge search space — the system finds and implements ideas from the community faster than any human could. ^[extracted]

## Related

- [[concepts/auto-research-loop|Auto-Research Loop]] — the process Aden used
- [[concepts/nano-gpt-speed-run|Nano GPT Speed Run]] — another auto-research demonstration
- [[concepts/valued-work-per-watt|Valued Work Per Watt]] — the efficiency metric Aden optimized
- [[entities/aden|Aden]] — the AI participant

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
