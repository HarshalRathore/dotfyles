---
title: "Why We're Bullish on Loops — PostHog"
category: references
tags:
  - loops
  - agent-architecture
  - posthog
  - self-driving
  - engineering-paradigm
sources:
  - 'https://newsletter.posthog.com/p/why-were-bullish-on-loops'
summary: PostHog's Ian Vanagas on why engineering loops are an expression of real industry-wide progress: models are 6× better at long-running tasks, loops are built into tools, and subagents separate loops from work.
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13
updated: 2026-07-13
relationships:
  - target: "[[concepts/agent-loop]]"
    type: extends
  - target: "[[concepts/self-driving-products]]"
    type: relates_to
  - target: "[[entities/posthog]]"
    type: authored_by
  - target: "[[entities/ian-vanagas]]"
    type: authored_by
---

# Why We're Bullish on Loops — PostHog

Article by [[entities/ian-vanagas|Ian Vanagas]], published in the PostHog newsletter "Product for Engineers" on June 17, 2026. Cross-posted as a tweet from [[entities/posthog|PostHog]] on June 23, 2026, which garnered 930 likes, 2.9K bookmarks, and 450K views.

## Core Thesis

Loops didn't emerge from a couple of viral tweets — they are an expression of real industry-wide progress. [[entities/peter-steinberger|Peter Steinberger]] (OpenClaw) and [[entities/boris-cherny|Boris Cherny]] (Claude Code) both independently championed the same concept because the underlying capabilities matured enough to make loops practical.

## Engineering a Loop

Four ingredients are needed:

1. **A goal** — scope the loop so the agent knows what to achieve. Without one, it's a "slop cannon." ^[extracted]
2. **Context** — tools, skills, analytics data, errors, memories. Best curated and fed throughout, not dumped upfront. The agent needs to fetch and react to new inputs. ^[extracted]
3. **Evaluation** — tests, evals, metrics, LLM-as-judge, playgrounds. Key distinction from prompting: the agent does the verification, not the engineer. ^[extracted]
4. **An agent** — from Claude Code with a `while true` (Ralph) to purpose-built harnesses with cron triggers and subagent dispatchers. ^[extracted]

Examples include PR babysitter, bug fixer, flaky test hunter, and performance autoresearcher. PostHog used a Karpathy-style autoresearcher loop to fix a 3-year-old query engine bug and improve performance by 11%. ^[extracted]

## Why Now

Five converging capabilities make loops practical today:

1. **Models are better at long-running tasks** — METR finds Opus 4.6 completes 50% of 12-hour tasks, over 6× Opus 4's 1h 40m from a year ago. Fable (RIP) pushed this further. ^[extracted]
2. **Huge success stories** — Stripe did a codebase-wide migration in a day; Lovable one-shots apps that previously needed hundreds of prompts. ^[extracted]
3. **Built-in tooling** — Claude Code shipped `/loop`, both Claude Code and Codex have automations, and the Ralph plugin exists. ^[extracted]
4. **Subagents separate loop from work** — the main loop spins up subagents that do the work and report back, saving tokens and preventing degradation. ^[extracted]
5. **Harnesses are maturing** — compaction keeps context windows from filling; skills and MCP enable more tools; cloud execution lets you kick off a loop and walk away. ^[extracted]

## The Product Engineer Loop

Loops aren't just an AI phenomenon. Product engineers already complete this loop manually:

1. Collect data through analytics and talking to users
2. Build and ship improvements based on that data
3. Evaluate performance to guide future development
4. Repeat constantly

The "self-driving" product is what happens when agents automate this loop: no human prompt needed at step one — the agent prompts itself. ^[extracted] PostHog bets on this via their Slack app, PostHog Code, and Replay Vision. ^[extracted]

## Limits

Loops aren't about eliminating all engineering work. They automate the "1% gains" — bugs, UX issues, paper cuts, conversion tweaks — things that drain engineering hours but rarely need strategic input. The more you automate, the more time engineers spend on impactful and interesting work. ^[extracted]

The "self" in self-driving doesn't mean autonomy from the engineer — it means autonomy from user instruction as the starting point. ^[extracted]

## Code Was Never the Problem

Critics deride loops as a ploy from OpenAI and Anthropic to get everyone tokenmaxxing. But the rise of product engineers already showed that writing code is only a small portion of the work. Direction, taste, and empathy remain critical — even in a loop-driven future. ^[extracted]

The opposition to loops is an understandable reaction to another shift in how software is built. Engineers feel threatened when told they should be "designing loops" rather than writing code. ^[extracted]

## Sources

- https://newsletter.posthog.com/p/why-were-bullish-on-loops — Full article by Ian Vanagas, PostHog newsletter
- https://x.com/posthog/status/2069472232712389112 — Original tweet (2.9K bookmarks, 450K views)
