---
title: SkillWeaver: Web Agents can Self-Improve by Discovering and Honing Skills
category: references
tags:
  - self-improvement
  - web-agents
  - skill-discovery
  - agent-evaluation
  - webarena
relationships:
  - target: "[[concepts/skillweaver]]"
    type: implements
  - target: "[[references/mind2web-2]]"
    type: related_to
  - target: "[[concepts/agent-as-a-judge]]"
    type: related_to
sources:
  - "https://arxiv.org/abs/2504.07079"
summary: Paper introducing SkillWeaver — a framework where web agents autonomously discover, practice, and distill reusable skills as APIs, with 31.8% improvement on WebArena.
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# SkillWeaver: Web Agents can Self-Improve by Discovering and Honing Skills

> [!tldr] SkillWeaver enables web agents to autonomously discover interaction skills on new websites, practice them, and distill reusable APIs — yielding 31.8% improvement on WebArena and 39.8% on real-world websites.

## Problem & Motivation

Web agents struggle with the vast diversity of website interfaces. Traditional approaches require hand-coded skill libraries or extensive fine-tuning for each new site. This paper asks: can agents learn to improve themselves by discovering and refining skills autonomously?

## Method / Architecture

SkillWeaver introduces a skill-centric framework:

1. **Skill Discovery** — Agents encounter new websites and identify repeatable interaction patterns
2. **Skill Execution & Practice** — Agents execute discovered skills to build proficiency
3. **Skill Distillation** — Refined skills are compiled into robust, reusable APIs

### Authors and Institutions

- Ohio State University, Cisco Research
- Led by Jianfeng Gou (Yu Su's research group)

## Results

| Benchmark | Improvement |
|---|---|
| WebArena | +31.8% |
| Real-world websites | +39.8% |
| Cross-agent transfer (weak agents using strong agent skills) | +54.3% |

The transferability finding is particularly notable: APIs distilled from stronger agents can improve weaker agents, suggesting a pathway for collaborative improvement across the agent ecosystem. ^[extracted]

## Limitations

- Evaluated primarily on web agents — generalization to other domains (code agents, research agents) is plausible but untested
- Skill discovery depends on agents having sufficient capability to identify meaningful patterns ^[inferred]
- The paper predates Mind2Web 2, sharing the same research lineage but approaching self-improvement from a different angle

## Related

- [[concepts/skillweaver]] — The concept and framework
- [[references/mind2web-2]] — Companion work from the same group on Agent-as-a-Judge
- [[concepts/agent-as-a-judge]] — Related evaluation work from the same research community
- [[entities/yu-su]] — Research group lead

## Sources

- https://arxiv.org/abs/2504.07079 — SkillWeaver (Gou et al., Apr 2025)
