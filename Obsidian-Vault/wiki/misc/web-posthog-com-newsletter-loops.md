---
title: Why we're bullish on loops
category: misc
tags:
- ai
- loops
- agent-loop
- engineering
- product-engineering
sources:
- '[[sources/loops]]'
source_url: https://posthog.com/newsletter/loops
created: 2026-06-30 23:45:00+00:00
updated: 2026-06-30 23:45:00+00:00
summary: PostHog's newsletter on engineering loops with AI agents — the four requirements (goal, context, evaluation, agent), concrete examples, industry momentum, and the vision of self-driving products.
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-06-30
tier: supporting
---

# Why we're bullish on loops

> Author: Ian Vanagas (PostHog). Jun 17, 2026.

## Overview

PostHog's newsletter argues that the future of AI-assisted engineering is not prompting agents to write code, but building **loops** that prompt themselves. Instead of one-shot prompts, you design iterative loops with a goal, context, evaluation criteria, and an agent. The article traces the "why now" to better models, real success stories, maturing infrastructure (compaction, skills, MCP, cloud execution), and built-in tooling like Claude Code's `/loop` and automations.

## Key Points

!
*Peter Steinberger on the importance of loops for engineering teams.*

- **Four requirements for an engineering loop:** (1) A goal — scope the loop so it doesn't become a "slop cannon." (2) Context — curated, fed throughout, not dumped upfront; includes tools, skills, analytics, errors, memories. (3) Evaluation — tests, evals, metrics, LLM-as-judge, playgrounds; the agent verifies itself. (4) An agent — from Claude Code with a `while true` to purpose-built harnesses.
- **Concrete loop examples:** PR babysitter (goal: get CI green), bug fixer (fix the bug from a report), flaky test hunter (kill flaky tests via CI history), performance autoresearcher (beat a benchmark — the Karpathy pattern).
- **Why now:** METR finds Opus 4.6 completes 50% of 12-hour tasks, up from 1h40m for Opus 4 a year ago (6x improvement). ^[inferred: 50% figure is extracted, the 6x comparison is the article's framing] Stripe completed a codebase-wide migration in a day that would take a team two months. Long-running agent capacity has crossed a threshold.
- **Built-in loops:** Claude Code shipped a `/loop` command, both Claude Code and Codex have automations, and a Ralph plugin exists for Claude Code.
- **Subagents:** Separating the loop from work lets subagents report back, saving tokens and preventing degradation. ^[inferred: the article mentions this as a key advantage; the degradation-prevention mechanism is implied]
- **Maturing harnesses:** Compaction keeps context windows from filling. Skills and MCP enable more tools. Cloud execution lets you kick off a loop and walk away.
- **Self-driving products vision:** Rather than an engineer prompting an agent to progress a project, the agent prompts itself. The product improves itself without direct human instruction. PostHog is betting on this via their Slack app, PostHog Code, and Replay Vision.
- **What loops target:** The 1% gains — bugs, UX issues, paper cuts, conversion tweaks. Not strategic work, but the things that drain engineering hours.
- **Code was never the problem:** Direction, taste, and empathy remain critical for building successful products in a loop-driven future.

## Concepts

- [[concepts/agent-loop]] — This article is a comprehensive validation of the agent-loop pattern with concrete requirements, examples, and industry context
- [[concepts/ralph-coding-technique]] — The Ralph pattern is one specific implementation of the loop idea; this article generalizes it to any engineering task with the four requirements

## Entities

- [[entities/posthog]] — The company and author of this newsletter
- [[entities/andrej-karpathy]] — Popularized the autoresearch loop pattern referenced in the performance autoresearcher example
- [[entities/peter-steinberger]] — Creator of OpenClaw, mentioned as one of the voices driving the loops conversation
- [[entities/boris-cherny]] — Creator of Claude Code, mentioned alongside Steinberger as championing loops

## Open Questions

- How well do self-driving products work in practice at scale? PostHog's vision is compelling but unproven at the product level (the article notes they're "AI-pilled" on this)
- Does the subagent pattern (separating loop from work) generalize to all loop types, or is it specific to complex/long-running tasks?
- Will loops truly eliminate the "1% gains" category of engineering work, or will new categories of bugs emerge as loops become more common?

## Related

- [[misc/web-github-com-karpathy-autoresearch]] — PostHog's prior article about using the Karpathy autoresearcher loop to find a ClickHouse bug; referenced in this newsletter as a concrete example of performance autoresearch
