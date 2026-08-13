---
title: "AIDE² — First Experimental Evidence of Recursive Self-Improvement — Zhengyao Jiang Thread"
category: references
tags:
  - recursive-self-improvement
  - autoresearch
  - reward-hacking
  - agent-loop
  - rsi-ladder
sources:
  - https://x.com/zhengyaojiang/status/2077079778793042425
source_url: https://x.com/zhengyaojiang/status/2077079778793042425
summary: "Zhengyao Jiang announces AIDE² with first experimental evidence of recursive self-improvement after 8 days — inner/outer loop architecture discovers 7 improvements over a 2-year hand-tuned baseline."
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: 2026-07-18
tier: supporting
created: 2026-07-18T00:00:00Z
updated: 2026-07-18T00:00:00Z
relationships:
  - target: "[[concepts/auto-research-loop]]"
    type: extends
  - target: "[[concepts/reward-hacking]]"
    type: related_to
  - target: "[[concepts/ai-harness]]"
    type: related_to
---

# AIDE² — First Experimental Evidence of Recursive Self-Improvement — Zhengyao Jiang Thread

**Source:** [Zhengyao Jiang (@zhengyaojiang)](https://x.com/zhengyaojiang) — 2026-07-14 via X (7-part thread + 2 follow-ups) ^[extracted]

## Summary

Zhengyao Jiang announces **AIDE²**, a system providing "the first experimental evidence of recursive self-improvement (RSI)" after 8 days of [[concepts/auto-research-loop|autoresearch]]. ^[extracted] The system uses a dual-loop architecture:

- **Inner loop:** optimizes code against an evaluation metric
- **Outer loop:** optimizes the inner agent's harness/prompting system ^[extracted]

## Results

- After **100 iterations**, the outer loop discovered **7 improvements** over the baseline, including: ^[extracted]
  - A new search policy
  - A memory system achieving **16x prompt compression**
  - A **layered [[concepts/reward-hacking|reward hacking]] defense**

- Discovered agents beat a **2-year hand-tuned baseline** on all 3 held-out benchmarks, including a physics-based weather model. ^[extracted]

- The system achieved **Level 1 on their RSI ladder**; Level 2 results (using the improved inner agent as the better outer loop) were described as "mixed" — "do not claim ignition." ^[extracted]

## Technical Details

- The outer loop pushed inner-loop reward hacking rate lower via prompting + rule-based checks on OOD GPU kernel tasks. ^[extracted]
- The RSI ladder positions Level 1 as initial RSI capability and Level 2 as self-amplifying improvement. Full tech report promised for later. ^[extracted]
- Affiliated with Weco AI ([weco.ai](https://weco.ai)). ^[extracted]

## Engagement with Prior Art

Jeff Clune (@jeffclune) challenged the novelty claim, noting prior work: Darwin Godel Machine, HyperAgents, and "First Steps Toward Automated AI Research." ^[extracted] Zhengyao acknowledged the prior work and clarified their bar required all four: (1) frontier AI starting point, (2) comparison vs top experts, (3) generalization to held-out benchmarks, (4) measured as efficiency under same compute — claiming no prior work meets all four simultaneously. ^[extracted]

## Significance

AIDE² represents a formalized [[concepts/auto-research-loop|auto-research]] system with documented self-improvement across benchmarks. Together with Anshu's autonomous autocorrect experiment, it forms a case study in practical versus claimed RSI. ^[inferred]

## Related

- [[concepts/auto-research-loop]] — the auto-research paradigm AIDE² formalizes
- [[concepts/reward-hacking]] — the layered defense mechanism discovered by the outer loop
- [[concepts/ai-harness]] — the harness architecture that the outer loop optimizes
