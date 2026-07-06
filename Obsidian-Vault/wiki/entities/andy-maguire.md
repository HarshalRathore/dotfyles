---
title: Andy Maguire
created: '2026-07-01'
updated: '2026-07-01'
tags:
- posthog
- agent-systems
sources:
- '[[misc/web-posthog-com-blog-what-is-a-scout]]'
aliases:
- andymaguire
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Andy Maguire
---
# Andy Maguire

Andy Maguire is a PostHog engineer who wrote about and developed the Scout pattern — small scheduled agents that watch PostHog data, learn what's worth knowing, and emit signals for PostHog's self-driving product pipeline.

## Known for

- **Scout pattern** — Small scheduled agents that emit signals (semi-structured findings with evidence and suggested actions) for the self-driving pipeline
- **Agent Skill pattern** — Markdown-first business logic for AI agents: `SKILL.md` as interface, `references/` files for depth, runnable example scripts
- **Self-driving pipeline** — Scout → signal → report → action: autonomous loop that monitors products for patterns and drafts fixes

## Key stances

- Agent business logic should be mostly markdown (a few hundred lines of English anyone can read and improve), not if/else branches and helper functions
- The skill is the main interface everyone works through, human or agent
- A scout's harness (loop, sandbox, scheduler, memory) should be deliberately thin plumbing around the skill
- Distinguishing signal from noise is the core skill of a good scout writer

## Sources

- [[misc/web-posthog-com-blog-what-is-a-scout]] — What is a Scout? PostHog blog post (2026-06-23)
