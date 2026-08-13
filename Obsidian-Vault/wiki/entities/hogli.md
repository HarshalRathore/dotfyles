---
title: hogli
category: entities
tags:
  - posthog
  - developer-experience
  - agent-tools
  - cli
sources:
  - "https://x.com/i/status/2083231950744244360"
  - "https://posthog.com/blog/10k-prs-a-month"
source_url: "https://github.com/PostHog/posthog/tree/master/tools/hogli"
summary: "PostHog's internal developer CLI for skill-driven cloud dev boxes, local CI checks, and fast feedback about workflows that are difficult for people or agents."
provenance:
  extracted: 0.88
  inferred: 0.10
  ambiguous: 0.02
base_confidence: 0.66
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-08-02T03:34:00+05:30"
updated: "2026-08-02T03:34:00+05:30"
relationships:
  - target: "[[concepts/developer-experience]]"
    type: implements
  - target: "[[concepts/cloud-for-agents]]"
    type: related_to
  - target: "[[entities/posthog]]"
    type: related_to
---

# hogli

`hogli` is PostHog's internal developer CLI. The source describes it as part of the tooling behind skill-driven cloud development machines and as a way to push CI checks into local development so agents can test code sooner.

## Key Points

- An agent can use the surrounding workflow to start a dev box, run a PR, and record a video of the test result.
- `hogli` includes a feedback path for reporting difficult workflows to PostHog's developer-experience team.
- The source links the CLI to PostHog's effort to move beyond laptop-bound development as engineers test multiple PRs in parallel.

The article does not specify the CLI's command surface or implementation. ^[ambiguous]

## Related

- [[concepts/developer-experience]] — developer tooling as a throughput and feedback system
- [[concepts/cloud-for-agents]] — cloud workspaces for agent-driven development
- [[concepts/ai-native-toolchain]] — tooling designed for AI-accelerated change volume
- [[entities/posthog]] — the organization building `hogli`
- [[misc/web-x-com-posthog-status-2083231950744244360]] — source page with the full developer-experience account
