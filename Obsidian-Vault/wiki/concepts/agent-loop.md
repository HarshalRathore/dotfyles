---
title: "Agent Loop"
tags:
  - agent
  - automation
  - engineering
  - control-flow
  - state-management
sources:
  - "loops"
  - "stop-ai-slop"
  - "ai-evals"
  - "AIEF2025 - 12-Factor Agents: Patterns of Reliable LLM applications — Dex Horthy, HumanLayer - https://www.youtube.com/watch?v=8kMaTybvDUw"
  - "AIEF2025 - Unlocking AI Powered DevOps Within Your Organization — Jon Peck, GitHub - https://www.youtube.com/watch?v=C1NivhYS1sI"
summary: "An AI-driven iterative pattern where an autonomous agent repeatedly performs a cycle of work, evaluates the result, and decides whether to continue, adapt, or stop. Covers agent loops in development, research, and IDEs."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
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
- **ReAct (Reasoning + Acting):** Agent loop where the LLM generates verbal reasoning traces alongside tool actions, observes tool outcomes, and iterates until the final answer is determined. Used for multimodal agents that search over mixed-modality documents and analyze figures. Common in tool-calling agent architectures.
- **IDE agent mode:** Interactive loop where the user iterates on a spec (README-based prompt drafting) with the AI, then hands a well-scoped document to the agent for implementation. During execution, the agent pauses for user approval before terminal access, sending progress updates. The operator can redirect mid-execution or revert all changes and restart. Articulated by [[entities/jon-peck|Jon Peck]] at AIEF2025 for both brownfield and greenfield development. ^[extracted]

## Why Now

The loop pattern has crossed into practical use due to:
- Models are 6x better at long-running tasks year-over-year (METR: Opus 4.6 completes 50% of 12-hour tasks).
- Real success stories: Stripe did a codebase-wide migration in a day that would take a team two months.
- Built-in tooling: Claude Code's `/loop` command, Codex automations, Ralph plugin.
- Subagents separate the loop from the work, saving tokens and preventing degradation.
- Maturing harnesses: compaction, skills, MCP, cloud execution.

## Relationship to Signal Loop

While the [[concepts/agent-loop|agent loop]] describes how an individual agent iterates on a single task (self-improving via evaluation), the [[concepts/signal-loop-ai|signal loop]] describes how the model *behind* the agent improves over time across many users and interactions. The agent loop runs per-task in milliseconds to hours; the signal loop runs across the fleet in days to weeks. They are complementary — agent loop outputs (success/failure logs, user corrections) become input to the signal loop's fine-tuning pipeline. ^[inferred]


## Self-Driving Products Vision

The ultimate application of loops: rather than an engineer prompting an agent to progress a project, the agent prompts itself. The product improves itself without direct human instruction. PostHog is betting on this via their Slack app, PostHog Code, and Replay Vision.

Loops target the "1% gains" — bugs, UX issues, paper cuts, conversion tweaks. Not strategic work, but the things that drain engineering hours.

## Owning the Loop: Control Flow and State Management

[[entities/dex-horthy|Dex Horthy]] ([[entities/humanlayer|HumanLayer]]) argues that the naive agent loop (event → LLM picks step → execute → append → repeat) breaks down with longer contexts. The solution: own your control flow (Factor 8 of [[concepts/12-factor-agents]]). ^[extracted]

Key capabilities when you own the loop:
- **Break and branch** — conditionally exit, switch to subroutines, parallelize across multiple agent instances
- **Summarize** — don't blindly append everything; summarize intermediate states and clear resolved errors
- **LLM-as-judge** — insert evaluation checkpoints within the loop, not just at the end
- **Pause and resume** — serialize the context window to a database, let long-running tools call back with a state ID, then reload and resume. "The agent doesn't even know things happened in the background." ^[extracted]

### State Management Pattern

Agents should be stateless — the state (current step, next step, retry counts, messages, approval data) should be managed externally, not inside the agent code. Put your agent behind a REST API or MCP server; when a request comes in, load the context from the database, send it to the LLM, serialize the updated state back. This enables pause/resume, long-running tool calls, and reliable async patterns. "Agents are just software. So let's build software." ^[extracted]

### Error Recovery Pattern

When a tool call fails:
1. Take the error and the failed tool call output
2. Append both to the context window
3. Let the LLM retry with full context
4. When a valid tool call succeeds, clear all pending errors — don't let them accumulate

"Don't just blindly put things on. If you have errors and then you get a valid tool call, clear all the pending errors out. Summarize them. Don't put the whole stack trace on your context. Figure out what you want to tell the model so you get better results." ^[extracted]

### Scaffold-Over-Framework Approach

Rather than wrapping the loop in a framework, scaffold it out as generated code you own (following the shad-cn model). This lets you modify every aspect of the loop — how context is built, how errors are handled, how state is serialized — without fighting framework abstractions. "The tools we get should take away the other hard parts, so that we can spend all our time focusing on the hard AI parts." ^[extracted]

### Relationship to Micro-Agents

The owning-your-control-flow pattern pairs naturally with [[concepts/micro-agents|micro-agents]]: each micro-agent's loop (3-10 steps) is small enough to manage manually, with clear entry/exit points and database-backed state. The surrounding deterministic DAG handles the rest. ^[extracted]


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
- [[concepts/stateful-environments|Stateful Environments]] — Complementary architecture: the agent loop drives iterative work, while the stateful environment provides the resettable workspace within which the loop operates. Agent tree search extends the loop with branching exploration.
- [[concepts/agent-tree-search|Agent Tree Search]] — Extends the agent loop with branching: rather than a single trajectory, the agent forks the environment at decision points and converges on the best path.
- [[concepts/multimodal-agent-architecture|Multimodal Agent Architecture]] — Agent loop applied to multimodal retrieval and reasoning
- [[concepts/signal-loop-ai|Signal Loop (AI)]] — Cross-fleet model improvement via real interaction data, complementary to per-task agent loops
- [[concepts/12-factor-agents]] — The framework that includes control flow ownership as Factor 8
- [[concepts/agent-development-lifecycle|Agent Development Lifecycle (ADLC)]] — The full lifecycle for building and operating production agents; agent loops operate within ADLC's simulation testing and closed-loop improvement phases
- [[concepts/micro-agents]] — Small loops within deterministic DAGs, enabled by owning the loop
- [[concepts/context-engineering]] — The thesis that everything in agent quality is getting the right tokens into the model
- [[entities/dex-horthy]] — Originator of the control flow ownership and error recovery patterns
- [[entities/humanlayer]] — Company building infrastructure for agent state management
