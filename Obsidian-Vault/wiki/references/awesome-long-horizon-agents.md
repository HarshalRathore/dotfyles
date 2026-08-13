---
title: "Awesome-Long-Horizon-Agents (RUC-NLPIR)"
category: references
tags:
  - curated-list
  - long-horizon-agents
  - survey-companion
  - agent-taxonomy
sources:
  - "https://github.com/RUC-NLPIR/Awesome-Long-Horizon-Agents"
source_url: "https://github.com/RUC-NLPIR/Awesome-Long-Horizon-Agents"
relationships:
  - target: "[[references/towards-long-horizon-agents-a-survey]]"
    type: related_to
  - target: "[[concepts/long-horizon-agency]]"
    type: uses
  - target: "[[concepts/ai-harness]]"
    type: related_to
summary: "Curated reading list companion to the Towards Long-Horizon Agents survey, structuring 500+ references around harness engineering and model optimization."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-18
tier: supporting
created: 2026-07-18
updated: 2026-07-18
---

# Awesome-Long-Horizon-Agents (RUC-NLPIR)

> [!tldr] A curated reading list companion to the *Towards Long-Horizon Agents* survey (Dong et al., Jul 2026) from RUC-NLPIR at Renmin University of China. Structures 500+ references around the survey's taxonomy: long-horizon emergence, externalized harness engineering (6 subsections), and internalized model optimization (7 subsections). This is a curated reading list and taxonomy — not independent validation of the field's trajectory. Many cited works are recent arXiv preprints and may not be peer-reviewed.

## Description

This repository organizes the rapidly growing literature on long-horizon agents into the survey's framework of **two co-evolving pillars**: ^[extracted]

| Pillar | Focus | Sub-areas |
|--------|-------|-----------|
| **Harness Engineering** (externalized) | Loops, memory, tools, orchestration, guardrails, verification | 6 subsections — Loops & Workflows, Context & Memory, Tools/MCP/Skills, Orchestration, Hooks & Middleware, Verification |
| **Model Optimization** (internalized) | Architecture, training data, RL, distillation | 7 subsections — Architecture, Data/Environment Synthesis, Pre-/Mid-training, Fine-tuning, Agentic RL, On-Policy Distillation, Self-Evolution |

### Three-Stage Evolutionary Timeline

The companion taxonomy organizes the field's history into three stages, aligning with the survey's framework: ^[extracted]

- **Stage I (2020–2023): Prompt Engineering** — Chain-of-Thought, ReAct, Tree-of-Thoughts, SayCan
- **Stage II (2023–2025): Context Engineering** — RAG, MemGPT/Letta, Toolformer, FlashAttention, context compression
- **Stage III (2025–Present): Runtime Harnesses** — Reflexion, AutoGen, MCP, OpenHands, SWE-agent, AGENTS.md, agentic RL pipelines

### Application Domains Covered

| Domain | Representative Systems |
|--------|----------------------|
| Software Engineering | SWE-agent, OpenHands, Claude Code, aider, RepoZero |
| Information Seeking | Search-R1, WebDancer, WebThinker, DeepResearch |
| Computer Use | WebArena, OSWorld, UI-TARS, AndroidWorld |
| Multimodal Agents | VideoAgent, Qwen2.5-VL, MM-StoryAgent, OmniGAIA |
| General-Purpose | AutoGPT, Manus, GAIA, AI Scientist, FinRobot |

## Curation Caveats

- **Heavy weighting on 2025–2026 papers** — the field moves extremely fast; many citations are arXiv preprints from the past 12 months, not peer-reviewed ^[extracted]
- **Repository is a curated reading list only** — no code or datasets are hosted here. Claims about the field's trajectory are the authors' framing, not independently validated ^[extracted]
- The lab lists several of its own systems (Tool-Star, WebThinker, DeepAgent, OmniGAIA), creating potential selection bias ^[inferred]
- CONTRIBUTING.md and the survey PDF returned 404 at HEAD at time of analysis ^[extracted]

## Notable Curation Trends

- RL-dominant optimization paradigm — Agentic RL and On-Policy Distillation subsections are among the most densely populated ^[inferred]
- [[concepts/model-context-protocol|MCP]] treated as a foundational interoperability standard alongside A2A and ACP ^[extracted]
- METR's time-horizon measurement cited as the key empirical yardstick ^[extracted]
- Software engineering dominates the applications section — dozens of systems, benchmarks, and training frameworks ^[inferred]

## Related

- [[references/towards-long-horizon-agents-a-survey]] — The companion survey paper
- [[concepts/long-horizon-agency]] — Core concept synthesized from this repository's taxonomy
- [[concepts/ai-harness]] — Harness concept central to externalized engineering pillar
- [[concepts/model-context-protocol]] — Tool standardization protocol referenced across sections
- [[concepts/multi-turn-rl]] — Agentic RL and multi-turn training methods represented in the optimization pillar
- [[concepts/swe-bench]] — Key benchmark cited in software engineering applications

## Sources

- https://github.com/RUC-NLPIR/Awesome-Long-Horizon-Agents — Awesome-Long-Horizon-Agents (RUC-NLPIR, Jul 2026, MIT license)
