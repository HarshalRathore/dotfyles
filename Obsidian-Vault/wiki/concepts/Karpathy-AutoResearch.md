---
title: Karpathy AutoResearch
category: concepts
tags: [auto-research, Andrej-Karpathy, recursive-self-improvement, AI-research]
aliases: [Karpathy auto-research, Karpathy autoresearch, Andrej Karpathy auto-research]
relationships:
  - target: '[[concepts/auto-research-loop]]'
    type: implements
  - target: '[[concepts/nano-chat]]'
    type: related_to
  - target: '[[concepts/nano-gpt-speed-run]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Andrej Karpathy's auto-research framework — using AI agents to independently conduct research, discover improvements, and iterate on systems without human intervention.
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

# Karpathy AutoResearch

**Karpathy AutoResearch** refers to Andrej Karpathy's framework for using AI agents to independently conduct research — discovering improvements, iterating on systems, and producing results without human intervention. ^[extracted]

This concept was popularized by Karpathy and demonstrated extensively at the AI Engineer World's Fair 2026. ^[extracted]

## The Core Idea

Instead of humans designing research experiments and interpreting results, AI agents:

1. **Define** the problem and evaluation criteria
2. **Run** experiments autonomously
3. **Trace** the execution and intermediate states
4. **Score** the results
5. **Propose** improvements
6. **Rerun** with improvements
7. **Keep** only what improves the score

This creates a **recursive self-improvement loop** where the agent continuously improves the system it's studying. ^[inferred]

## Demonstrations

Karpathy's auto-research framework was demonstrated in two notable ways at WF2026:

1. **Nano Chat** — Aden competing in a research competition
2. **Nano GPT Speed Run** — CUDA kernel discovery by AI agents

Both demonstrated that AI can independently discover improvements that match or exceed human-designed solutions. ^[extracted]

## Connection to Other Concepts

- **Auto-research loop** — the formalized process Karpathy's work inspired
- **Valued work per watt** — the efficiency metric that auto-research optimizes
- **Reward hacking** — the key risk in auto-research systems

## Related

- [[concepts/auto-research-loop|Auto-Research Loop]] — the formalized process
- [[concepts/nano-chat|Nano Chat]] — Aden's competition participation
- [[concepts/nano-gpt-speed-run|Nano GPT Speed Run]] — CUDA kernel discovery
- [[entities/andrej-karpathy|Andrej Karpathy]] — the originator of auto-research

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
