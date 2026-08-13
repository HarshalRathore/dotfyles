---
title: PostHog
category: entities
tags:
  - analytics
  - open-source
  - product-analytics
  - ai-observability
  - developer-experience
sources:
  - '[[sources/ai-evals]]'
  - 'https://x.com/i/status/2083231950744244360'
  - 'https://posthog.com/blog/10k-prs-a-month'
summary: "PostHog is an analytics and developer-tools company whose engineering practice combines self-driving product loops, AI evaluation, and an AI-native developer-experience outer loop."
provenance:
  extracted: 0.84
  inferred: 0.13
  ambiguous: 0.03
base_confidence: 0.78
lifecycle: draft
lifecycle_changed: 2026-08-02
tier: supporting
created: '2026-07-04T15:08:28.018019+00:00'
updated: '2026-08-02T03:34:00+05:30'
relationships:
  - target: '[[concepts/agent-loop]]'
    type: uses
  - target: '[[concepts/ai-native-toolchain]]'
    type: implements
  - target: '[[concepts/self-driving-code-review]]'
    type: uses
---

# PostHog

PostHog is an all-in-one developer analytics platform. Its product surface includes analytics, AI observability, evaluation, error tracking, session replay, feature flags, experiments, and tools that give agents more context for diagnosing and improving software.

## Product and Engineering Loops

- [[misc/web-posthog-com-blog-what-if-your-product-built-itself]] — self-driving product pipeline from signals through research, PR, and measurement
- [[misc/web-posthog-com-blog-what-is-a-scout]] — scheduled agents that watch product data and emit signals
- [[misc/web-posthog-com-docs-ai-evals]] — LLM-as-judge, code-based Hog evals, sentiment analysis, and MCP management
- [[misc/web-github-com-karpathy-autoresearch]] — autoresearch applied to a ClickHouse query bug

## Developer Experience at Scale

PostHog reports growing from 1,441 shipped PRs in January to 4,725 in June 2026 while increasing engineering headcount by 10%. Agent-opened monorepo PRs rose from about 20% to 70% in four months, and self-driving reached about 4% of PRs. ^[extracted]

The response is an [[concepts/ai-native-toolchain|AI-native toolchain]] rather than another isolated assistant: skill-driven cloud dev machines, `hogli`, selective CI, GitHub workflow analytics, [[entities/stamphog|StampHog]], planned [[entities/reviewhog|ReviewHog]], and browser-driven QA. ^[extracted]

The engineering account separates throughput from reliability. PostHog cites extensive backend tests, stable revert rates, service uptime, human merge gates, and escalation paths as safeguards while agents handle more routine work. ^[extracted]

## Related

- [[concepts/agent-loop]] — the iterative pattern behind PostHog's self-driving systems
- [[concepts/loop-engineering]] — reliability mechanics for autonomous loops
- [[concepts/developer-experience]] — the broader DevEx concept illustrated by PostHog
- [[concepts/self-driving-code-review]] — automated review with human escalation
- [[misc/web-x-com-posthog-status-2083231950744244360]] — source account of the 10,000-PR developer-experience target