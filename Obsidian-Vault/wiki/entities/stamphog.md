---
title: StampHog
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
summary: "PostHog's agentic PR approval system: deterministic safety checks plus LLM showstopper review, with escalation to humans when a change is not safe."
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

# StampHog

StampHog is PostHog's agent for routine pull-request approval. It runs deterministic safety checks and then uses an LLM to look for showstoppers; it approves when the change meets its bar and escalates to human review otherwise.

## Key Points

- PostHog reports that StampHog approves about 20% of PRs.
- The reported token cost is about $300 per month.
- Its intended role is to remove routine review work, not to eliminate human decisions about whether a change is understood, safe, or valuable.

The source does not describe StampHog's exact checks, model, or escalation policy. ^[ambiguous]

## Related

- [[concepts/self-driving-code-review]] — automated review as part of an AI-native outer loop
- [[concepts/ai-native-toolchain]] — redesigning review, CI, and merge around agent-accelerated change
- [[concepts/agent-loop]] — review as a goal/context/evaluation loop
- [[entities/posthog]] — the organization building StampHog
- [[misc/web-x-com-posthog-status-2083231950744244360]] — source page with the full developer-experience account
