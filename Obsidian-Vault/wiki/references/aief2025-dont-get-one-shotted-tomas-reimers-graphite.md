---
title: "Don't Get One-Shotted: Use AI to Test, Review, Merge, and Deploy Code — Tomas Reimers, Graphite (AIEF2025)"
category: references
tags: [ai-engineering, code-review, software-engineering, workflow, cicd, aief2025]
aliases: [Don't get one-shotted, Tomas Reimers AIEF2025, Graphite AI outer loop]
relationships:
  - target: "[[concepts/developer-outer-loop]]"
    type: articulates
  - target: "[[concepts/code-review-primary-skill]]"
    type: extends
  - target: "[[entities/graphite]]"
    type: describes
  - target: "[[entities/tomas-reimers]]"
    type: describes
sources:
  - "[[sources/watchv=h6mrr5nbtza]]"
summary: "Tomas Reimers, co-founder of Graphite, argues that AI accelerates the inner loop of development (writing code) so dramatically that the outer loop (testing, reviewing, merging, deploying) becomes the bottleneck — and the entire toolchain must become AI-native, not just the IDE."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Don't Get One-Shotted: Use AI to Test, Review, Merge, and Deploy Code — Tomas Reimers, Graphite

> "While the inner loop was getting sped up by AI, the outer loop was rapidly becoming the bottleneck." — Tomas Reimers

## Key Claims

- **Software development has two loops**: The inner loop (writing code, getting features working) and the outer loop (testing, reviewing, merging, deploying). Historically, these operated at roughly the same pace. ^[extracted]

- **AI accelerates the inner loop dramatically**: Nearly all developers surveyed use AI tools; 46% of code on GitHub is written by Copilot. AI tools ([[entities/cursor-ai|Cursor]], [[entities/windsurf|Windsurf]], [[entities/v0|V0]], [[entities/bolt|Bolt]]) produce higher volumes of code faster than ever before. ^[extracted]

- **The outer loop becomes the bottleneck**: Higher code volume means more to review, test, merge, and deploy. The problems of large-scale code volume that used to only affect big companies now affect all organizations. ^[extracted]

- **The solution is AI-native tooling, not just AI teammates**: An early hypothesis was that adding AI "teammates" (background agents, AI reviewers) to the existing workflow would suffice. Reimers concludes this is not enough — the entire toolchain must be AI-native. ^[extracted]

- **Self-driving code review is achievable**: Diamond (Graphite's AI code reviewer) achieves ~52% comment acceptance rate, higher than human review comments (~45–50%). Only ~4% of AI comments are dismissed. ^[extracted]

## Diamond: Graphite's AI Code Reviewer

Key properties of Diamond: ^[extracted]

- **High signal, low noise** — Prioritizes meaningful feedback over trivial issues
- **Zero setup** — Works out of the box
- **Deep codebase understanding** — Leverages change history and code context
- **CI integration** — Integrates with testing infrastructure to summarize and correct failures
- **One-click actionable** — Suggestions can be applied directly
- **Customizable** — Adaptable to team conventions
- **Private and secure** — Code stays private

## Requirements for the AI-Native Outer Loop

1. Prioritization, tracking, and notification for pull requests at scale
2. Driver-assist features to help reviewers focus
3. Optimized CI pipelines and merge queues
4. Better deployment tools

## People

- [[entities/tomas-reimers|Tomas Reimers]] — Speaker (co-founder of [[entities/graphite|Graphite]])

## Related

- [[concepts/developer-outer-loop|Developer Outer Loop]] — The core concept articulated by this talk
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — Chris Kelly's complementary argument that code review becomes the most important engineering skill
- [[concepts/issue-to-pr-pipeline|Issue-to-PR Pipeline]] — Practical AI automation of the outer loop
- [[concepts/peer-programming|Peer Programming]] — AI as autonomous teammate vs AI as completion engine
- [[concepts/burden-of-generated-code|Burden of Generated Code]] — Every generated line needs outer-loop validation
- [[entities/graphite|Graphite]] — Company building Diamond
- [[concepts/self-driving-code-review|Self-Driving Code Review]] — AI handles manual review so developers focus on what matters
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — The entire developer toolchain must be AI-native, not just the IDE
- [[concepts/ai-teammates-insufficient|AI Teammates Are Insufficient]] — Adding AI agents to existing workflows is not enough
- [[references/aief2025-ai-powered-entomology-tomas-reimers-graphite]] — Reimers' other AIEF2025 talk on bug taxonomy and AI Entomology
- [[concepts/high-signal-low-noise|High Signal, Low Noise]] — Core quality principle for AI code review systems
