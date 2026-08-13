---
title: ReviewHog
category: entities
tags:
  - posthog
  - code-review
  - agent
  - automation
sources:
  - "https://x.com/i/status/2083231950744244360"
  - "https://posthog.com/blog/10k-prs-a-month"
source_url: "https://posthog.com/blog/10k-prs-a-month"
summary: "PostHog's planned fleet-based reviewer for complicated pull requests, intended to provide thorough top-down analysis within its self-driving product."
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.66
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-08-02T03:34:00+05:30"
updated: "2026-08-02T03:34:00+05:30"
relationships:
  - target: "[[concepts/self-driving-code-review]]"
    type: implements
  - target: "[[entities/posthog]]"
    type: related_to
---

# ReviewHog

ReviewHog is a planned PostHog review system for complicated pull requests. The article describes it as a fleet of agents that will provide a thorough, top-down review and eventually be offered as part of PostHog's self-driving product.

## Role in the Review Split

- Routine safety checks and showstopper detection belong to [[entities/stamphog|StampHog]].
- Complex reviews belong to ReviewHog's planned multi-agent analysis.
- Humans retain the questions that require understanding the change, the author, its safety, and its value.

The source gives no implementation details or launch date. ^[ambiguous]

## Related

- [[concepts/self-driving-code-review]] — the broader pattern of automated review
- [[concepts/ai-native-toolchain]] — review as one part of an AI-native outer loop
- [[entities/posthog]] — the organization building ReviewHog
- [[misc/web-x-com-posthog-status-2083231950744244360]] — source page with the full developer-experience account
