---
title: Product highlights
tags:
- analytics
- open-source
- product-analytics
- ai-observability
sources:
- '[[sources/ai-evals]]'
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-04T15:08:28.018019+00:00'
updated: '2026-07-04T15:08:28.018019+00:00'
summary: Posthog
---
PostHog is an all-in-one developer analytics platform. Their engineering team applied Karpathy's autoresearch pattern to optimize ClickHouse query performance, uncovering a 3-year-old timezone wrapping bug. PostHog also provides AI Observability with automated evaluations (LLM-as-judge, code-based Hog evals, and sentiment analysis) as part of their platform, and a self-driving product improvement pipeline that automatically ingests signals, researches problems, and opens PRs.

## Product highlights
- [[misc/web-posthog-com-docs-ai-evals]] — Three evaluation types for automated LLM output quality assessment, with MCP tooling for programmatic management
- [[misc/web-posthog-com-blog-what-is-a-scout]] — Small scheduled agents that watch PostHog data and emit signals for the self-driving pipeline
- [[misc/web-posthog-com-blog-what-if-your-product-built-itself]] — Full product improvement loop: signal → problem → research → fix → PR

## Related

- [[misc/web-github-com-karpathy-autoresearch]] — Their blog post about using autoresearch to find a ClickHouse query bug
- [[misc/web-posthog-com-docs-ai-evals]] — Official documentation for their AI evaluation system
- [[misc/web-posthog-com-blog-what-is-a-scout]] — What is a Scout? — the self-driving agent pattern
- [[misc/web-posthog-com-blog-what-if-your-product-built-itself]] — What If Your Product Built Itself? — the self-driving pipeline


## Related Pages
- The company whose engineering blog and projects are the primary sources ingested into the Hot Cache. [[entities/posthog]]