---
title: "10,000 PRs a Month Is Easy — PostHog Developer Experience at Scale"
category: misc
tags:
  - posthog
  - agent-loop
  - code-review
  - developer-experience
  - ci-cd
sources:
  - "https://x.com/i/status/2083231950744244360"
  - "https://posthog.com/blog/10k-prs-a-month"
source_url: "https://x.com/i/status/2083231950744244360"
canonical_url: "https://posthog.com/blog/10k-prs-a-month"
created: "2026-08-02T03:34:00+05:30"
updated: "2026-08-02T03:34:00+05:30"
summary: "PostHog's account of scaling agent-assisted engineering to 4,725 monthly PRs while redesigning cloud development, CI, review, and browser-based QA around human attention."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.66
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
relationships:
  - target: "[[concepts/agent-loop]]"
    type: implements
  - target: "[[concepts/ai-native-toolchain]]"
    type: extends
  - target: "[[concepts/self-driving-code-review]]"
    type: implements
---

# 10,000 PRs a Month Is Easy — PostHog Developer Experience at Scale

> **Source:** [PostHog on X](https://x.com/i/status/2083231950744244360), linking to the expanded [engineering article](https://posthog.com/blog/10k-prs-a-month). The X post was published July 31, 2026; the article is dated July 28, 2026.

## Overview

PostHog describes an internal developer-experience program built for an agent-accelerated engineering organization. Monthly shipped PRs rose from 1,441 in January to 4,725 in June while engineering headcount grew by only 10%. The stated north star is “10,000 PRs a month is easy,” but the article treats throughput as an outcome of talent, agentic automation, faster feedback, and reliable delivery systems—not as a goal worth pursuing in isolation.

The main lesson is an outer-loop redesign: once agents increase the rate of change, cloud development environments, selective CI, automated review, and browser-based QA must absorb the additional work before human attention becomes the bottleneck.

## Key Points

### Agent-assisted throughput

- PostHog reports that agents opened roughly 20% of monorepo PRs four months earlier and about 70% by the time of publication. Its self-driving system accounted for about 4% of PRs and was growing quickly.
- The organization does not impose a universal token budget. Engineers are expected to choose appropriate tool usage, with trust and feedback preferred over a blanket process rule.
- The author reports spending about 60% of personal token usage automating CI and review toil, especially keeping PRs current, getting CI green, and acting on review feedback.

### Development environments move to the cloud

- PostHog's local stack is heavy enough that testing multiple PR copies is constrained by laptop RAM and disk.
- The team is building skill-driven cloud dev machines. An agent can start a dev box, run a PR, and record a video of the resulting test output.
- The internal `hogli` CLI helps agents run CI checks locally and sends feedback about difficult workflows to the developer-experience team.

### CI becomes a selection problem

- PostHog reports 21,643,653 minutes of CI usage in June 2026—roughly 41 years of compute time in one month.
- The proposed response is not simply more compute. It is defining work that need not run while staying in a safe “Goldilocks zone”: quarantine flaky tests without hiding their reports, use AST-based change analysis for selective test execution, add merge queues, and speed up jobs with a pre-migrated database schema.
- Streaming GitHub data into PostHog AI gives the team cost, duration, and failure-frequency views for targeting CI improvements.

### Validation and reliability

- PostHog separates safety from quality. A quarter of a million Python backend tests protect critical data ingestion and display paths, while other product areas are optimized for fast learning and correction.
- The article uses PR size and revert rates as rough quality signals. Median PR size increased from 120 to 144 lines between the weeks of May 25 and July 13; p99 increased from 7,718 to 14,023 lines. The share of merged reverts stayed near its prior level (0.1–0.4% in the cited periods and 0.2% in June 2026).
- Reported 90-day uptime remained high across core services: event ingestion, session replay ingestion, and the Feature Flags API at 100%; the app at 99.993%; REST query endpoints at 99.985%; and PostHog AI at 99.927%.

### Review and browser-based QA

- `StampHog` combines deterministic safety checks with an LLM review for showstoppers. It approves when the change is safe and escalates otherwise; PostHog reports that it approves 20% of PRs at roughly $300 per month in token cost.
- `ReviewHog` is a planned fleet-based reviewer for more complicated, top-down reviews. The intended division of labor is routine review automation first, human judgment for understanding, authorship, safety, and value.
- PostHog's `qa-frontend` skill checks out a PR, designs test cases, drives the UI in a browser, and returns annotated screenshots, an animated reel, or an optional video. Agents can escalate when a change is confusing or not good enough, or write a persistent Playwright test when the behavior should stay covered.

## Concepts

- [[concepts/agent-loop]] — the loop pattern applied to PR readiness, CI feedback, review, and UI validation
- [[concepts/ai-native-toolchain]] — the thesis that testing, review, merge, and deployment must be redesigned for AI-accelerated change volume
- [[concepts/developer-experience]] — developer experience as the capacity to create and safely handle change
- [[concepts/cloud-for-agents]] — cloud workspaces for agent-driven development and parallel PR testing
- [[concepts/agent-evaluation-pipeline]] — layered validation from automated checks to production reliability signals

## Entities

- [[entities/posthog]] — the company and engineering organization described by the source
- [[entities/paul-dambra]] — author of the expanded article
- [[entities/stamphog]] — automated approval agent for routine PRs
- [[entities/reviewhog]] — planned fleet reviewer for complex PRs
- [[entities/hogli]] — internal developer CLI for cloud and local development workflows
- [Pawel's `qa-frontend` example](https://github.com/PostHog/posthog/pull/72523) — browser-driven PR validation

## Open Questions

- At what point does PR volume stop being a useful throughput signal and become a source of review or coordination debt? ^[inferred]
- How should organizations calibrate automated approval thresholds as agent-authored changes expand into higher-risk parts of a system? ^[inferred]
- Can browser-driven QA cover enough of a UI change to reduce human review without encouraging teams to neglect durable tests? ^[inferred]

## Related

- [[misc/web-posthog-com-blog-what-if-your-product-built-itself]] — PostHog's signal-to-PR self-driving product pipeline
- [[misc/web-posthog-com-newsletter-loops]] — PostHog's four-part model for engineering loops
- [[concepts/loop-engineering]] — reliability mechanics and brakes for autonomous loops
- [[concepts/self-driving-code-review]] — AI handling routine review work while humans retain critical decisions
