---
title: Mind2Web 2: Evaluating Agentic Search with Agent-as-a-Judge
category: references
tags:
  - agentic-search
  - agent-evaluation
  - benchmark
  - agent-as-a-judge
  - deep-research
relationships:
  - target: "[[concepts/agent-as-a-judge]]"
    type: implements
  - target: "[[concepts/deep-research-agents]]"
    type: related_to
  - target: "[[concepts/rubric-based-evaluation]]"
    type: related_to
  - target: "[[concepts/interactive-reasoning-benchmarks]]"
    type: extends
sources:
  - "https://arxiv.org/abs/2506.21506"
  - "https://x.com/ysu_nlp/status/2073602859523031301" — Yu Su's tweet sharing Mind2Web 2 on Jul 5, 2026
  - "https://x.com/paradite_/status/2073521542062831267" — Zhu Liang's original tweet asking about agent-as-judge evals (Jul 4, 2026)
summary: Benchmark of 130 long-horizon agentic search tasks + novel Agent-as-a-Judge evaluation framework using tree-structured rubrics for automatic assessment.
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Mind2Web 2: Evaluating Agentic Search with Agent-as-a-Judge

> [!tldr] Mind2Web 2 introduces 130 long-horizon agentic search tasks requiring real-time web browsing and synthesis, plus a novel Agent-as-a-Judge framework using tree-structured rubrics for automatic evaluation of complex, time-varying answers. OpenAI Deep Research achieves 50–70% of human performance in half the time.

## Problem & Motivation

Agentic search systems (e.g., Deep Research) autonomously browse the web, synthesize information, and return citation-backed answers — representing a major shift from traditional short-horizon QA. The growing complexity and open-endedness of these systems has outpaced existing evaluation benchmarks, which assume short search horizons and static answers. This creates an evaluation gap: how do you assess systems that operate over long time horizons, visit many websites, and produce time-varying answers?

## Benchmark Design

Mind2Web 2 introduces:

- **130 realistic, long-horizon tasks** requiring real-time web browsing and extensive information synthesis
- Tasks involve visiting up to **31 websites** and **375 webpages**
- Human annotators spend up to **an hour** per task
- Construction required **1,000+ hours of human labor**

### Rubric Tree Design

The benchmark uses a tree-structured rubric for evaluation:

- Rubric trees average **50 nodes** (maximum 603)
- Up to **6 layers** of evaluation
- Nodes are classified as critical, non-critical, or sequential
- The tree structure maps the expected answer decomposition into verifiable sub-claims

## Agent-as-a-Judge Framework

The key methodological contribution: task-specific judge agents constructed from the rubric trees to automatically assess both answer correctness and source attribution. This framework:

- Constructs judge agents per task based on the rubric tree
- Evaluates both correctness and source attribution automatically
- Achieves **99% correctness rate** against human evaluation
- Addresses the challenge of evaluating time-varying and complex answers that static benchmarks cannot handle

## Experiments

Evaluated **10 frontier agentic search systems** plus human performance:

| Finding | Detail |
|---|---|
| Best system | OpenAI Deep Research |
| Performance | 50–70% of human performance |
| Efficiency | Half the time of humans |
| Outperforms | Search-augmented LLMs and Operator-style web agents |
| Weakness | Systems struggle with time-varying tasks requiring real-time info |
| AI advantage | On detail-oriented tasks, AI outperforms humans (cognitive fatigue, limited working memory) |

## Limitations

- 130 tasks, while high-quality, is a limited set compared to earlier Mind2Web benchmarks
- The 99% agreement between Agent-as-a-Judge and human evaluation is measured on a subset — full calibration against human raters is implied but not fully detailed ^[inferred]
- The benchmark focuses on English-language web tasks

## Related

- [[concepts/agent-as-a-judge]] — The evaluation framework this paper introduces
- [[concepts/deep-research-agents]] — The class of systems being evaluated
- [[concepts/interactive-reasoning-benchmarks]] — Related evaluation paradigm
- [[concepts/rubric-based-evaluation]] — Rubric-based evaluation approaches
- [[references/mind2web-2-twitter-thread]] — The Twitter thread where the paper was shared and discussed
- [[entities/yu-su]] — Lead author, University of Wisconsin–Madison / Ohio State University
- [[entities/zhu-liang]] — OSU researcher whose tweet catalyzed the Mind2Web 2 discussion
