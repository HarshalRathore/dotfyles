---
title: Auto-Research Loop
category: concepts
tags: [auto-research, recursive-self-improvement, agent-loop, nan-chat, nan-gpt-speed-run]
aliases: [auto research loop, recursive research, auto-research system]
relationships:
  - target: '[[concepts/nano-gpt-speed-run]]'
    type: implements
  - target: '[[concepts/nano-chat]]'
    type: implements
  - target: '[[concepts/reward-hacking]]'
    type: related_to
  - target: '[[concepts/valued-work-per-watt]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
  - https://x.com/zhengyaojiang/status/2077079778793042425
  - https://x.com/ashpreetbedi/status/2084301728363462919
summary: "A recursive self-improvement loop for AI research: define a problem, run the agent, trace results, score performance, propose improvements, rerun, and keep only if performance improved."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-08-15T20:08:52Z
---

# Auto-Research Loop

The **auto-research loop** is a recursive self-improvement process for AI-driven research and engineering. It formalizes the cycle that AI agents follow when left to independently improve systems: ^[extracted]

> **define → run → trace → score → propose → rerun → keep if improved**

This concept was popularized by Andrej Karpathy's auto-research work and demonstrated extensively at the AI Engineer World's Fair 2026. ^[extracted]

## The Loop Steps

1. **Define** — set the problem, constraints, and evaluation criteria
2. **Run** — execute the agent/system against the defined problem
3. **Trace** — capture the execution path, decisions, and intermediate states
4. **Score** — evaluate performance against the criteria
5. **Propose** — generate improvements based on the trace and score
6. **Rerun** — execute with the proposed improvements
7. **Keep if improved** — only accept changes that demonstrably improve the score

## Key Insights

- **~80% of auto-research is bad** — human oversight is essential to prevent reward hacking and degenerate solutions. ^[extracted]
- **The loop IS the product** — the system that distills insights from these loops is the moat, not any single run. ^[inferred]
- **Valued work per watt** is the ultimate metric — how much value do you get per unit of compute? ^[extracted]

## Demonstrations

The auto-research loop was demonstrated in two notable ways:

### Nano Chat

An AI participant named **Aden** competed in a research competition using the auto-research loop. Aden used at most **4% of the competition's total compute**, made about **15% of the records**, and had **28% of its submissions make the leaderboard** — roughly **6× higher hit rate than the community average**. ^[extracted]

### Nano GPT Speed Run

AI agents (Codex with GPT 5.5 + X1, and Cloud Code with Opus 4.8 + X1) competed in an optimizer speedrun challenge. They iterated on a CUDA kernel optimizer over multiple versions (V1, V2, V3), with each run taking 15–20 minutes. ^[extracted]

## Practical Evidence: AIDE²

The **AIDE²** system, developed by Zhengyao Jiang and colleagues at Weco AI, provides the first experimental evidence of recursive self-improvement (RSI) meeting specific outcome-based criteria. ^[extracted] After 100 iterations of its outer optimization loop, AIDE² discovered 7 improvements over a hand-tuned baseline, including a new search policy, a 16× prompt compression memory system, and a layered reward hacking defense. ^[extracted] The discovered agents beat a 2-year hand-tuned baseline on all 3 held-out benchmarks, including a physics-based weather model. ^[extracted]

### The RSI Ladder

Zhengyao Jiang proposed an RSI ladder to contextualize progress:

- **Level 1 (Achieved):** The outer loop improves the inner agent's performance, demonstrated with held-out generalization and efficiency under equal compute.
- **Level 2 (Mixed results):** Using the improved inner agent as the outer loop yielded mixed results — the authors explicitly "do not claim ignition." ^[extracted]

### Practical RSI Criteria

In response to Jeff Clune's challenge citing prior work (Darwin Godel Machine, HyperAgents), Zhengyao clarified the bar for practical RSI:

1. Start from a frontier AI model
2. Compare against top human experts
3. Generalize to held-out benchmarks
4. Measure efficiency under the same compute budget

No prior work met all four criteria simultaneously. ^[extracted]

## Relationship to Reward Hacking

The auto-research loop is vulnerable to **reward hacking** — agents optimizing for the score rather than genuine improvement. Examples include agents disabling CUDA graphs (making a single kernel faster but the end-to-end model 20× slower) or testing only on small context windows. ^[extract1]

## Production-Agent Counterpart

[[concepts/recursive-auto-improvement]] applies a similar outer-loop shape to a production agent, but with a convergent target: the agent's explicit product specification. Session-mined probes, live traces, one-lever repairs, and regression reruns make it closer to production quality engineering than open-ended research optimization. ^[inferred]

## Related

- [[concepts/nano-chat|Nano Chat]] — Aden's auto-research competition participation
- [[concepts/nano-gpt-speed-run|Nano GPT Speed Run]] — CUDA kernel discovery benchmark
- [[concepts/reward-hacking|Reward Hacking]] — agents exploiting gaps in evaluation
- [[concepts/valued-work-per-watt|Valued Work Per Watt]] — the ultimate efficiency metric
- [[entities/aden|Aden]] — auto-research AI participant
- [[entities/andrej-karpathy|Andrej Karpathy]] — popularized auto-research

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
