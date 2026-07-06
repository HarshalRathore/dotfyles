---
title: Agent Loop
tags:
- agent
- automation
- engineering
- control-flow
- state-management
sources:
- '[[sources/loops]]'
- '[[sources/stop-ai-slop]]'
- '[[sources/ai-evals]]'
- 'https://www.youtube.com/watch?v=8kmatybvduw'
- 'https://www.youtube.com/watch?v=c1nivhys1si'
- 'https://www.youtube.com/watch?v=lqq_lcbajcc'
- 'https://www.youtube.com/watch?v=lue8k2jqfkk'
- 'https://www.youtube.com/watch?v=pbhm2qknu10'
- 'https://www.youtube.com/watch?v=q3nreeadkmc'
summary: An AI-driven iterative pattern where an autonomous agent repeatedly performs a cycle of work, evaluates the result, and decides whether to continue, adapt, or stop. Covers agent loops in developmen...
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-05
relationships:
- target: '[[concepts/vibe-coding-as-agentic-ai|Vibe Coding as Agentic AI]]'
  type: implements
- target: '[[concepts/agent-guardrails|Agent Guardrails]]'
  type: related_to
- target: '[[entities/donald-hruska|Donald Hruska]]'
  type: related_to
category: concepts
---

# Agent Loop

An agent loop is an AI-driven iterative pattern where an autonomous agent repeatedly performs a cycle of work, evaluates the result against a target metric or criterion, and decides whether to continue, adapt, or stop.

## Requirements

A well-engineered loop needs four things:
1. **A goal** — scope the loop so the agent knows what to achieve. Without a goal, the loop is a "slop cannon."
2. **Context** — fuel for the loop. Tools, skills, analytics data, errors, memories. Best curated and fed throughout, not dumped upfront. The agent needs to fetch and react to new inputs.
3. **Evaluation** — how the agent checks itself. Tests, evals, metrics, LLM-as-judge, playgrounds. A key distinction from prompting: the agent does the verification, not the engineer. PostHog AI Evals implements three evaluation types: LLM-as-judge (LLM scores generations against a prompt — pass/fail with reasoning; best for subjective checks like tone, helpfulness, hallucination), code-based Hog evals (deterministic checks via HogVM — millisecond-speed, zero LLM cost; best for format validation, keyword detection, length limits), and sentiment analysis (local ML model classifies user messages as positive/neutral/negative with confidence scores — runs entirely within PostHog, no third-party data sharing). All three share sampling rate (0.1–100%) and property…
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

- **Validation error feedback (Pydantic AI):** [[entities/samuel-colvin|Samuel Colvin]] demonstrated at AIEF2025 a pattern where schema validation errors are returned to the LLM as feedback, enabling self-correction. A `Person` schema required date of birth before 1900; the LLM returned `1987`, validation failed, the error was returned to Gemini Flash, and the model self-corrected to `1887` on the second attempt. This turns schema validators into deterministic, human-seeded evals — faster and more precise than LLM-as-judge scoring. ^[extracted]

## Claude Code's Loop Design

[[entities/boris-cherny|Boris Cherny]]'s work on Claude Code provides a complementary perspective on agent loops: the tooling around loops must be **unopinionated** to survive rapid model evolution. Claude Code's `/loop` command, automations, and the Ralph plugin all share a design principle — provide raw model access without imposing workflow opinions. This is especially important because:

- The model improves exponentially while product development moves at human speed
- The right UX for agentic loops is still unknown
- Staying unopinionated (terminal-first, no scaffolding) lets the loop adapt as models evolve

Boris's thesis: "The more general model always wins" — which extends to loop infrastructure: general-purpose, adaptable tools outlast opinionated, polished ones during periods of rapid model change. ^[extracted]

### Strands: Minimal Scaffolding in Practice

[[entities/strands-agents|Strands Agents]] demonstrates the minimal scaffolding extreme of the agent loop spectrum. With only a model and tools as inputs — no orchestration framework, no state machine, no scaffolding layer — the agent relies entirely on the model's reasoning capability to handle the loop internally. ^[extracted] Suman Debnath (AWS) explicitly encouraged removing system prompts to test whether the model can reason about tasks autonomously, and the demos showed the model successfully sequencing multi-step operations (read → summarize → write → speak) and generating Manim visualizations without scaffolding. ^[extracted] This contrasts with scaffolded approaches like [[concepts/scaffold-over-framework|Scaffold-Over-Framework]] that generate custom loop code — Strands takes the opposite approach, trusting the model entirely. ^[inferred]

## RL Training Loops

A deeper perspective from [[entities/will-brown|Will Brown]] ([[entities/prime-intellect|Prime Intellect]]) at AIEF2025 reframes agent loops as canonical reinforcement learning. Building an agent — with its harness, environment, tools, and iteration — maps directly onto RL concepts: policies, actions, states, rewards, and transition probabilities. ^[extracted]

Under this framing, agents are not just static chains of API calls but **interaction loops with evaluations**. This is exactly how RL is conceptualized: a system interacts with an environment, there is a way of evaluating how well it's doing, and RL is the algorithm to improve based on evaluation scores. ^[extracted]

When engineers tune prompts, fiddle with harnesses, and iterate based on eval results, they are doing RL by hand: ^[extracted]

1. Evals show the current state
2. Look at the data to see if it matches eval scores
3. Try a new prompt, a new tool, or a different model
4. Observe which change improved outcomes

RL algorithms (PPO, GRPO) automate and formalize this process. The key mechanism is **advantage estimation** — identifying which specific decision points in a multi-step interaction caused the difference between success and failure. ^[extracted]

This explains why models like Claude Code and OpenAI O3 are naturally agentic: they were RL-trained in essentially the same setting they are used in — a while loop with tools. ^[extracted]

## Why Now

The loop pattern has crossed into practical use due to:
- Models are 6x better at long-running tasks year-over-year (METR: Opus 4.6 completes 50% of 12-hour tasks).
- Real success stories: Stripe did a codebase-wide migration in a day that would take a team two months.
- Built-in tooling: Claude Code's `/loop` command, Codex automations, Ralph plugin.
- Subagents separate the loop from the work, saving tokens and preventing degradation.
 - Maturing harnesses: compaction, skills, MCP, cloud execution.

 ## Coding Agent Loop

 [[entities/robert-brennan|Robert Brennan]] (OpenHands) at AIEF2025 provides a complementary framing of the agent loop specifically for coding agents. At its core, an agent is "this loop between a large language model and the external world" — the LLM serves as the brain, and the agent repeatedly takes actions in the external world, gets feedback, and passes it back to the LLM. ^[extracted]

 At each step of the loop, the LLM is asked: **what's the next thing you want to do in order to get one step closer to your goal?** The answer might be: read this file, make this edit, run this command, or look at this web page. The action is executed in the real world, the output is captured, and it is fed back into the LLM for the next turn. ^[extracted]

 This coding agent loop is distinguished from [[concepts/assistive-vs-automation-agents|assistive agents]] by its autonomy window — coding agents work for 5–15 minutes independently, while tactical code generation tools (like [[entities/github-copilot|GitHub Copilot]] autocomplete) require continuous human direction at the line level. ^[inferred]

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
- [[misc/web-github-com-karpathy-autoresearch]] — An optimization-focused agent loop applied to ClickHouse query performance
- [[misc/web-posthog-com-newsletter-loops]] — PostHog's comprehensive take on why engineering loops are the next paradigm
- [[entities/peter-steinberger]] — Creator of OpenClaw, drove the loops conversation
- [[entities/boris-cherny]] — Creator of Claude Code, drove the loops conversation
- [[misc/web-posthog-com-docs-ai-evals]] — PostHog AI Evals official documentation: three evaluation types, MCP management, reports, error handling
- [[misc/web-youtube-com-watch-v-unzcg3lw6o0]] — Matt Pocock's full AI coding workflow workshop: PRDs → tracer bullets → TDD → AFK runs
- [[misc/web-posthog-com-blog-what-if-your-product-built-itself]] — PostHog's self-driving product improvement pipeline: a concrete production deployment of the agent loop. Signals as goal, grouped reports as context, research agent and PR author as agent, CI green as evaluation.
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
- [[concepts/agent-history-in-production|Agent History in Production]] — The dual role of history (conversational + execution) emphasized by [[entities/mike-chambers|Mike Chambers]] as essential for multi-step agentic reasoning
- [[concepts/cloud-scale-agent-architecture|Cloud-Scale Agent Architecture]] — The managed-service pattern for deploying agents at cloud scale
- [[concepts/natural-language-tool-schemas]] — Natural language tool descriptions as a schema paradigm
- [[concepts/action-groups]] — Action groups as tool collections within managed agent services
- [[concepts/advantage-estimation|Advantage Estimation]] — The RL mechanism that formalizes what engineers do manually when tuning prompts and harnesses
- [[concepts/ppo-vs-grpo-vs-dpo|PPO vs GRPO vs DPO]] — RL algorithms that automate the agent loop's implicit learning
- [[references/aief2025-ship-it-building-production-ready-agents-mike-chambers-aws]] — Mike Chambers' AIEF2025 talk on building production-ready agents
- [[references/aief2025-claude-code-evolution-of-agentic-coding-boris-cherny]] — Boris Cherny's AIEF2025 talk on evolution of agentic coding and Claude Code's design philosophy
- [[references/aief2025-training-agentic-reasoners-will-brown-prime-intellect]] — Will Brown's AIEF2025 talk on training agentic reasoners via RL
- [[references/aief2025-human-seeded-evals-samuel-colvin-pydantic]] — Samuel Colvin's AIEF2025 talk demonstrating validation error feedback in the agent loop
- [[references/aief2025-introducing-strands-agents-open-source-ai-agents-sdk-suman-debnath-aws]] — Suman Debnath's AIEF2025 talk on Strands, demonstrating minimal scaffolding agent loops
