---
title: Graphite
tags:
- company
- ai
- code-review
- developer-tools
- aief2025
aliases:
- Graphite AI
- Diamond (Graphite)
relationships:
- target: '[[entities/tomas-reimers]]'
  type: founded_by
- target: '[[concepts/developer-outer-loop]]'
  type: implements
- target: '[[concepts/code-review-primary-skill]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=h6mrr5nbtza'
- 'https://www.youtube.com/watch?v=tswqekftnaw'
summary: AI code review company that built Diamond, an AI-powered code review platform. Developed the AI Entomology framework for classifying bugs in AI-generated code. Focused on making the developer outer...
provenance:
  extracted: 0.8
  inferred: 0.2
  ambiguous: 0.0
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: entities
---

# Graphite

Graphite is an AI code review company, founded by [[entities/tomas-reimers|Tomas Reimers]]. The company built Diamond, an AI code review platform that provides high-signal, low-noise feedback on pull requests, integrating with CI/testing infrastructure to summarize, prioritize, and correct errors. ^[extracted]

## Product

Diamond is Graphite's AI code reviewer:

- **Zero-setup**: Works out of the box with minimal configuration. ^[extracted]
- **Actionable**: Provides one-click suggestions that can be integrated directly into PRs. ^[extracted]
- **Customizable**: Adaptable to team and codebase conventions. ^[extracted]
- **Private/secure**: Code remains private throughout the review process. ^[extracted]
- **High signal, low noise**: Prioritizes meaningful feedback over trivial issues. ^[extracted]

### Effectiveness

Diamond's AI review comments achieve a ~52% acceptance rate (March 2025 data), higher than human review comments which are integrated at roughly 45–50%. ^[extracted] Only ~4% of Diamond's comments are "downloaded" (dismissed). ^[extracted]

### New AI Coding Tools

Reimers notes the expanding landscape of AI coding tools — [[entities/windsurf|Windsurf]], [[entities/v0|V0]], and [[entities/bolt|Bolt]] — as additional contributors to the code volume problem. ^[extracted]

## AI Entomology

Graphite developed the AI Entomology framework — studying bugs in AI-generated code using AI itself. The approach involved analyzing 10,000 code review comments across their own codebase and open-source projects, classified by feeding them to various LLMs. ^[extracted]

The result was the Bug Taxonomy, a 2D classification framework mapping code review comments by LLM capability and human desirability. Key findings: ^[extracted]

- **Tribal knowledge** is the hardest category for AI code review — humans want this feedback, but LLMs cannot access it
- **Code cleanliness** (add tests, extract functions) is the easiest to over-generate — LLMs can catch it easily, but humans find it frustrating
- The sweet spot is the top-right quadrant: bugs, security concerns, and accidental commits

Graphite uses upvote/downvote reactions on Diamond's comments to monitor whether the LLM stays within its capability bounds, achieving a <4% downvote rate. ^[extracted]

## Thesis

[[entities/tomas-reimers|Reimers]] argues that the entire developer toolchain must become AI-native, not just the IDE. As AI tools accelerate code writing (the inner loop), testing, review, merge, and deploy (the outer loop) become the bottleneck — and require AI-native solutions to keep pace. ^[extracted]

## Related

- [[entities/tomas-reimers|Tomas Reimers]] — Co-founder
- [[concepts/developer-outer-loop|Developer Outer Loop]] — The model motivating Graphite's approach
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — Related thesis: code review becomes the most critical skill as AI generates more code
- [[concepts/issue-to-pr-pipeline|Issue-to-PR Pipeline]] — Related pattern for autonomous AI code generation
- [[concepts/ai-powered-devops|AI-Powered DevOps]] — Outer loop automation ecosystem
- [[concepts/ai-entomology|AI Entomology]] — The framework Graphite developed for studying AI-generated bugs
- [[concepts/bug-taxonomy|Bug Taxonomy]] — The 2D classification framework derived from analyzing 10,000 comments
- [[concepts/tribal-knowledge|Tribal Knowledge]] — The hardest category for AI code review
- [[concepts/code-cleanliness|Code Cleanliness]] — The easiest category to over-generate
- [[concepts/llm-hallucination-detection|LLM Hallucination Detection]] — Upvote/downvote signals for monitoring LLM performance
- [[references/aief2025-ai-powered-entomology-tomas-reimers-graphite]] — Source talk (AI Entomology)
