---
title: "Graphite"
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
  - target: "[[entities/tomas-reimers]]"
    type: founded_by
  - target: "[[concepts/developer-outer-loop]]"
    type: implements
  - target: "[[concepts/code-review-primary-skill]]"
    type: related_to
sources:
  - "AIEF2025 - Don't get one-shotted: Use AI to test, review, merge, and deploy code — Tomas Reimers, Graphite - https://www.youtube.com/watch?v=H6MrR5NbTZA"
summary: "AI code review company that built Diamond, an AI-powered code review platform. Focused on making the developer outer loop (testing, review, merge, deploy) AI-native to match the AI-accelerated inner loop."
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
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

## Thesis

[[entities/tomas-reimers|Reimers]] argues that the entire developer toolchain must become AI-native, not just the IDE. As AI tools accelerate code writing (the inner loop), testing, review, merge, and deploy (the outer loop) become the bottleneck — and require AI-native solutions to keep pace. ^[extracted]

## Related

- [[entities/tomas-reimers|Tomas Reimers]] — Co-founder
- [[concepts/developer-outer-loop|Developer Outer Loop]] — The model motivating Graphite's approach
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — Related thesis: code review becomes the most critical skill as AI generates more code
- [[concepts/issue-to-pr-pipeline|Issue-to-PR Pipeline]] — Related pattern for autonomous AI code generation
- [[concepts/ai-powered-devops|AI-Powered DevOps]] — Outer loop automation ecosystem
