---
title: What is a Scout? — PostHog's Self-driving Agent Pattern
category: misc
tags:
- posthog
- agent
- self-driving
- agent-skill
- signals
sources:
- '[[sources/what-is-a-scout]]'
source_url: https://posthog.com/blog/what-is-a-scout
created: '2026-07-01'
updated: '2026-07-01'
summary: Deep dive into PostHog Scouts — small scheduled agents that watch PostHog data, learn what's worth knowing, and emit signals for the self-driving pipeline. By Andy Maguire (Jun 2026).
affinity:
  posthog: 3
promotion_status: misc
stub: false
provenance:
  extracted: 0.88
  inferred: 0.1
  ambiguous: 0.02
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-01
tier: supporting
---

# What is a Scout? — PostHog's Self-driving Agent Pattern

By [[entities/andy-maguire]], posted 2026-06-23. Explains the scout pattern at the core of PostHog's Self-driving product (open beta).

## Overview

A scout is a small scheduled agent that watches your PostHog data, learns what is worth knowing, and emits useful signals you (or your agents) can act on. It's the detection layer of PostHog's self-driving pipeline: scout → signal → report → action.

## Key Points

### The self-driving pipeline

1. **Scout** runs on a schedule, looks at PostHog data, decides if anything is worth surfacing
2. **Signal** — a semi-structured finding with evidence and suggested action
3. **Report** — grouped signals landing in the PostHog Inbox
4. **Action** — by the user or automatically by a PostHog Code task

A single report (e.g. "this MCP tool keeps blowing the token budget") may be assembled from multiple sources: a scout finding, error tracking, raw events, and health checks — all grouped because they describe the same underlying problem.

### Architecture: skill + harness

A scout has two parts:

- **Skill** — the business logic, written mostly in markdown. Encodes domain knowledge: what's normal, what's noise, what's worth waking a human for. A few hundred lines of English anyone can read and improve. Replaces traditional if/else branches and helper functions with declarative descriptions.
- **Harness** — thin loop around the skill: sandbox, scheduler, memory, tool access. The harness prompt is ~200 lines (author wants to shrink it). Everything else — the loop, sandbox, scheduler, memory — is deliberately thin plumbing.

The skill is the main interface everyone works through, human or agent. What used to be `if response_rate < 0.3 and sample_size > 30` becomes "a flagship NPS survey needs ≥30 responses/week and a ≥10% score drop before it's worth acting on."

### Agent Skill pattern

A scout is a full Agent Skill: `SKILL.md` as the entry point, with optional `references/` files the agent loads on demand and runnable example scripts. Scales from a single markdown file to complex multi-file skills. The business logic that used to be a sprawl of if/else branches and helper functions starts life as a few hundred lines of English.

### "Special" tools

Scouts have tools beyond a basic one-shot loop: scratchpad memory, scheduler integration, signal emission API. These make the scout more than a prompt loop — it's a persistent, stateful agent that builds understanding over time.

### Dogfooding

The scouts described in the post run on PostHog's own project — MCP feedback scout watches agent-driven feedback; brand mentions scout watches what the internet says about PostHog.

### Signal vs noise

What makes a scout good: distinguishing genuine signals from noise. The skill encodes this judgment. A bad scout emits too many trivial signals (noise); a good scout only emits when something is genuinely worth acting on.

### The scratchpad

How a scout remembers: a persistent memory/scratchpad that accumulates findings across runs. Not a fresh context window each time — the scout builds an understanding of its domain over successive executions.

## Concepts

- [[concepts/agent-loop]] — Scouts are a specialized variant of the agent loop: scheduled execution with persistence, signals as evaluation output, and the Agent Skill pattern for context/behavior.

## Entities

- [[entities/andy-maguire]] — Author of this post, PostHog engineer building the self-driving pipeline
- [[entities/posthog]] — The company behind Scouts and Self-driving

## Related

- [[entities/posthog]] — PostHog entity page
- [[entities/andy-maguire]] — Author entity page
- [[misc/web-posthog-com-newsletter-loops]] — PostHog newsletter on engineering loops, introduced the "self-driving" concept
- [[concepts/agent-loop]] — The agent loop concept that scouts specialize with scheduled execution and signal emission
