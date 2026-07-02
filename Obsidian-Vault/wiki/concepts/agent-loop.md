---
title: "Agent Loop"
tags:
  - agent
  - automation
  - engineering
sources:
  - "loops"
  - "stop-ai-slop"
  - "ai-evals"
---
# Agent Loop

An agent loop is an AI-driven iterative pattern where an autonomous agent repeatedly performs a cycle of work, evaluates the result against a target metric or criterion, and decides whether to continue, adapt, or stop.

## Requirements

A well-engineered loop needs four things:
1. **A goal** — scope the loop so the agent knows what to achieve. Without a goal, the loop is a "slop cannon."
2. **Context** — fuel for the loop. Tools, skills, analytics data, errors, memories. Best curated and fed throughout, not dumped upfront. The agent needs to fetch and react to new inputs.
3. **Evaluation** — how the agent checks itself. Tests, evals, metrics, LLM-as-judge, playgrounds. A key distinction from prompting: the agent does the verification, not the engineer. PostHog AI Evals implements three evaluation types: LLM-as-judge (LLM scores generations against a prompt — pass/fail with reasoning; best for subjective checks like tone, helpfulness, hallucination), code-based Hog evals (deterministic checks via HogVM — millisecond-speed, zero LLM cost; best for format validation, keyword detection, length limits), and sentiment analysis (local ML model classifies user messages as positive/neutral/negative with confidence scores — runs entirely within PostHog, no third-party data sharing). All three share sampling rate (0.1–100%) and property filter support. The five concrete eval criteria (relevance, helpfulness, jailbreak, hallucination, toxicity) map to LLM-as-judge templates. Eval template pattern: set domain expertise, define strict binary pass/fail, include examples of good/bad/edge cases, evaluate one behavior per prompt. Matt Pocock's practical feedback loop techniques for when code builds but doesn't work: static types (e.g. TypeScript), browser access for front-end (let the LLM see what it rendered), and automated tests — iterate with execution feedback, not spec changes. Evaluations can be managed programmatically via PostHog's six MCP tools (list, get, create, update, delete, run). Default evaluation reports are auto-provisioned with count-based triggers and optional Slack/email delivery.
4. **An agent** — from Claude Code with a `while true` (Ralph) to purpose-built harnesses with cron triggers and subagent dispatchers.
## Examples

- **PR babysitter:** Goal: get CI green. Context: diff + test suite. Eval: CI pass/fail.
- **Bug fixer:** Goal: fix the bug. Context: bug report + error trace. Eval: test suite, snapshots, logs.
- **Flaky test hunter:** Goal: kill flaky tests. Context: CI history + retry logs. Eval: consecutive green runs.
- **Performance autoresearcher:** Goal: beat a benchmark. Context: system, metrics, budget. Eval: speed/quality improvement. PostHog used this to fix a 3-year-old ClickHouse bug.

## Variants

- **Karpathy's Autoresearch:** Optimization-focused loop — run against a benchmark, propose changes, measure, keep/discard. Used by PostHog to optimize ClickHouse queries.
- **Ralph coding technique:** Build-focused loop — read specs and a TODO list, implement one item per iteration, update the plan, commit. Used for greenfield software development.

## Why Now

The loop pattern has crossed into practical use due to:
- Models are 6x better at long-running tasks year-over-year (METR: Opus 4.6 completes 50% of 12-hour tasks).
- Real success stories: Stripe did a codebase-wide migration in a day that would take a team two months.
- Built-in tooling: Claude Code's `/loop` command, Codex automations, Ralph plugin.
- Subagents separate the loop from the work, saving tokens and preventing degradation.
- Maturing harnesses: compaction, skills, MCP, cloud execution.

## Self-Driving Products Vision

The ultimate application of loops: rather than an engineer prompting an agent to progress a project, the agent prompts itself. The product improves itself without direct human instruction. PostHog is betting on this via their Slack app, PostHog Code, and Replay Vision.

Loops target the "1% gains" — bugs, UX issues, paper cuts, conversion tweaks. Not strategic work, but the things that drain engineering hours.

## Related

- [[concepts/ralph-coding-technique]] — A build-focused agent loop for greenfield development
- [[web-github-com-karpathy-autoresearch]] — An optimization-focused agent loop applied to ClickHouse query performance
- [[web-posthog-com-newsletter-loops]] — PostHog's comprehensive take on why engineering loops are the next paradigm
- [[entities/peter-steinberger]] — Creator of OpenClaw, drove the loops conversation
- [[entities/boris-cherny]] — Creator of Claude Code, drove the loops conversation
- [[misc/web-posthog-com-docs-ai-evals]] — PostHog AI Evals official documentation: three evaluation types, MCP management, reports, error handling
- [[web-youtube-com-watch-v-unzcg3lw6o0]] — Matt Pocock's full AI coding workflow workshop: PRDs → tracer bullets → TDD → AFK runs
- [[web-posthog-com-blog-what-if-your-product-built-itself]] — PostHog's self-driving product improvement pipeline: a concrete production deployment of the agent loop. Signals as goal, grouped reports as context, research agent and PR author as agent, CI green as evaluation.
- [[concepts/skills-checklist-framework]] — Matt Pocock's framework for building high-quality agent skills; skills are the mechanism by which agents execute loop steps
- [[concepts/leading-words]] — Steering technique for agent skills that complements the agent loop pattern
