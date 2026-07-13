---
title: SkillWeaver
category: concepts
tags:
  - self-improvement
  - agents
  - skill-discovery
  - agentic-workflows
  - web-agents
relationships:
  - target: "[[references/skillweaver]]"
    type: implements
  - target: "[[concepts/agent-as-a-judge]]"
    type: related_to
  - target: "[[concepts/web-agent-vs-browser-tool]]"
    type: related_to
sources:
  - "https://arxiv.org/abs/2504.07079"
summary: Framework enabling web agents to self-improve by autonomously discovering, practicing, and distilling reusable skills as APIs.
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# SkillWeaver

A skill-centric framework enabling web agents to **self-improve** by autonomously discovering, practicing, and distilling reusable skills as APIs. ^[extracted]

## How It Works

SkillWeaver operates through a three-phase loop:

1. **Discover** — Agents encounter new websites and autonomously identify repeatable interaction patterns (skills)
2. **Practice** — Agents execute the discovered skills repeatedly to refine their implementation
3. **Distill** — Refined skills are compiled into robust, transferable APIs that can be used by other agents

## Results

- **31.8% improvement** on WebArena benchmark after skill distillation ^[extracted]
- **39.8% improvement** on real-world websites ^[extracted]
- **Transferable skills**: APIs distilled from strong agents improve weaker agents by up to **54.3%** on WebArena ^[extracted]

## Significance

SkillWeaver demonstrates that agents can develop capabilities beyond their original training through autonomous skill accumulation. The transferability finding — that skills distilled from stronger agents benefit weaker ones — suggests a pathway toward collaborative agent improvement across the ecosystem. ^[inferred]

The paper was shared by Yu Su as an example of work "ahead of its time," noted from mid-2024. ^[extracted]

## Open Questions

- Can skill distillation generalize beyond web agents to other agent domains (code, robotics, research)?
- What types of interaction patterns are most effectively distilled into APIs?
- How do skill conflicts or incompatible APIs between agents get resolved?

## Sources

- https://arxiv.org/abs/2504.07079 — SkillWeaver: Web Agents can Self-Improve by Discovering and Honing Skills (Gou et al., Apr 2025)
