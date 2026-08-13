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
- 'https://spectrum.ieee.org/ai-science-research-flattens-discovery'
- 'https://x.com/posthog/status/2075645235724767739'
- 'https://posthog.com/self-driving'
- 'https://x.com/zhengyaojiang/status/2077079778793042425'
- 'https://x.com/anshuc/status/2077173469293535723'
- 'https://x.com/i/status/2083231950744244360'
- 'https://x.com/i/status/2083430232405733819'
- 'https://posthog.com/blog/10k-prs-a-month'
- 'https://x.com/i/status/2083486328172273795'
- 'https://claude.com/blog/product-management-on-the-ai-exponential'
summary: An AI-driven iteration pattern that repeatedly works, evaluates, and adapts; at scale it coordinates sub-agents, artifacts, review, and verification.
- 'https://www.deeplearning.ai/courses/agentic-ai'
- 'https://nitter.tiekoetter.com/i/article/2080296261576687751'
- 'https://video.twimg.com/amplify_video/2083930623962406912/vid/avc1/1922x1080/Z6F8963hpN2se-3A.mp4'
provenance:
  extracted: 0.73
  inferred: 0.22
  ambiguous: 0.05
base_confidence: 0.81
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-08-03T00:00:00Z
relationships:
- target: '[[concepts/vibe-coding-as-agentic-ai|Vibe Coding as Agentic AI]]'
  type: implements
- target: '[[concepts/agent-guardrails|Agent Guardrails]]'
  type: related_to
- target: '[[entities/donald-hruska|Donald Hruska]]'
  type: related_to
- target: '[[references/google-agents-to-autonomous-systems-course]]'
  type: derived_from
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

- **RSI research loop (AIDE²):** Two nested loops — inner loop optimizes code against eval, outer loop optimizes the inner agent's harness. After 100 iterations the outer loop discovered 7 improvements including a new search policy, 16x prompt compression, and layered reward hacking defense. Beat a 2-year hand-tuned baseline on held-out benchmarks, including a physics weather model. ^[extracted]
- **AI research loop (Anshu):** GPT-5.6 Sol autonomously drove fine-tuning a custom autocorrect model that outperformed Sol itself — scanning benchmarks, building a keyboard simulator via Gaussian per-key presses, solving tokenization bottlenecks with a custom byte-aligned edit-weighted loss, and deploying beam search with live prefix display. 3 days of Codex iteration, $0 spend, runs entirely on a MacBook with ~40ms TTFT. ^[extracted]
## At Scale: Developer Experience as the Outer Loop

PostHog's 10,000-PR north star shows an engineering loop operating at organizational scale. Agent-opened monorepo PRs rose from about 20% to 70% in four months, while self-driving accounted for about 4% of PRs. The loop therefore expands beyond “edit and test” into keeping branches current, selecting CI work, applying review feedback, and preparing evidence for human attention. ^[extracted]

The source's concrete loop components include:

- **Context:** diffs, trunk state, CI history, review comments, GitHub analytics, cloud dev environments, and browser-visible application behavior.
- **Evaluation:** CI status, selective-test results, PR quality signals, deterministic review checks, LLM showstopper review, and UI evidence.
- **Control flow:** flaky-test quarantine, AST-based test selection, merge queues, human escalation, and a human merge gate.

This is [[concepts/ai-native-toolchain]] in operational form: higher code-generation throughput only helps when the surrounding loop makes validation and review cheaper than asking humans to do every repetitive step. ^[inferred] See [[misc/web-x-com-posthog-status-2083231950744244360]].
## Variants

- **Karpathy's Autoresearch:** Optimization-focused loop — run against a benchmark, propose changes, measure, keep/discard. Used by PostHog to optimize ClickHouse queries.
- **Ralph coding technique:** Build-focused loop — read specs and a TODO list, implement one item per iteration, update the plan, commit. Used for greenfield software development.
- **ReAct (Reasoning + Acting):** Agent loop where the LLM generates verbal reasoning traces alongside tool actions, observes tool outcomes, and iterates until the final answer is determined. Used for multimodal agents that search over mixed-modality documents and analyze figures. Common in tool-calling agent architectures.

- **IDE agent mode:** Interactive loop where the user iterates on a spec (README-based prompt drafting) with the AI, then hands a well-scoped document to the agent for implementation. During execution, the agent pauses for user approval before terminal access, sending progress updates. The operator can redirect mid-execution or revert all changes and restart. Articulated by [[entities/jon-peck|Jon Peck]] at AIEF2025 for both brownfield and greenfield development. ^[extracted]

- **Validation error feedback (Pydantic AI):** [[entities/samuel-colvin|Samuel Colvin]] demonstrated at AIEF2025 a pattern where schema validation errors are returned to the LLM as feedback, enabling self-correction. A `Person` schema required date of birth before 1900; the LLM returned `1987`, validation failed, the error was returned to Gemini Flash, and the model self-corrected to `1887` on the second attempt. This turns schema validators into deterministic, human-seeded evals — faster and more precise than LLM-as-judge scoring. ^[extracted]

- **Self-driving product loop:** PostHog's bounded product improvement loop — Signals (error tracking, session replay dead clicks/quick backs/long stalls, scheduled Scouts, external tools) → Scouts → Inbox → PR → Measure. Distinguished from research loops by a human merge gate and product-domain scope: the loop improves the product within safety constraints rather than driving unrestricted scientific discovery. ^[extracted]

## From Prompts to Graphs

The linked graph-engineering article frames a progression from manual prompts to scheduled loops, parallel swarms, and graphs with explicit node ownership and data hand-offs. This extends the loop's work/evaluate/adapt cycle from one task to a coordinated system; it also makes fan-out, synchronization, and independent verification visible. ^[extracted]

The article's runtime and scale claims are self-reported, but the underlying design lesson is consistent with the loop invariant: every autonomous step needs an observable result and a condition for continuing, adapting, or stopping. ^[ambiguous]

## The Runner: Loop as Framework

Google's [[entities/google-agent-development-kit|ADK]] makes the loop an explicit framework object. The **runner** is "the engine for your agent": it manages lifecycle and events — whether the LM is deciding, calling a tool, or responding, everything is processed as an event in an event loop. The runner connects to a **session service** (conversation history and state: in-memory for low latency, database-backed for durability, or a managed agent-platform service) and to a **live request queue** for real-time agents: the browser pushes audio/video frames every ~16 ms while the runner consumes them asynchronously, so upstream never blocks on downstream. This is the [[concepts/agent-loop|agent loop]] in framework form, with state externalized (matching the stateless-iteration discipline of [[concepts/loop-engineering|loop engineering]]). ^[extracted] See [[references/google-agents-to-autonomous-systems-course]].

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

### Google Antigravity's Parallel Coding Loop

The Google Antigravity demonstration extends the coding-agent loop from one interactive process to an asynchronous team: 93 sub-agents decompose an operating-system build, generate and run tests, iterate for more than 12 hours, and return a reviewable artifact. The keynote reports more than 15,000 requests and 2.6 billion tokens. ^[extracted]

The live demo still finds missing video and keyboard drivers when Doom fails to launch, then feeds that failure back into the agent for repair. This preserves the core loop invariant — action, observation, evaluation, and another action — while moving execution across parallel workers. ^[inferred] See [[entities/google-antigravity|Google Antigravity]].

The [[misc/web-x-com-i-status-2083486328172273795|Claude Code product video]] shows the coding-agent loop at repository scale: a feature request supplies the goal, the codebase supplies context, the agent edits and integrates the implementation, and the resulting commit gives the human a reviewable artifact. In the Excalidraw table demo, the requested behavior includes custom dimensions, drag-to-resize interaction, and existing styling options. ^[extracted]

The loop is not presented as fully autonomous. The presenter inspects the commit after the agent works, preserving a human evaluation and approval point. ^[extracted]

## Relationship to Signal Loop

While the [[concepts/agent-loop|agent loop]] describes how an individual agent iterates on a single task (self-improving via evaluation), the [[concepts/signal-loop-ai|signal loop]] describes how the model *behind* the agent improves over time across many users and interactions. The agent loop runs per-task in milliseconds to hours; the signal loop runs across the fleet in days to weeks. They are complementary — agent loop outputs (success/failure logs, user corrections) become input to the signal loop's fine-tuning pipeline. ^[inferred]


## Self-Driving Products Vision

The ultimate application of loops: rather than an engineer prompting an agent to progress a project, the agent prompts itself. The product improves itself without direct human instruction. PostHog is betting on this via their self-driving mode — a concrete pipeline implementation available in open beta. ^[extracted]

Loops target the "1% gains" — bugs, UX issues, paper cuts, conversion tweaks. Not strategic work, but the things that drain engineering hours.

The "self" in self-driving doesn't mean autonomy from the engineer — it means autonomy from user instruction as the starting point. ^[extracted]

### PostHog's Self-Driving Pipeline

PostHog's self-driving loop follows a five-stage pipeline: Signals → Scouts → Inbox → Pull Requests → Measure. ^[extracted]

1. **Signals** — Inbound triggers from error tracking, session replay (dead clicks, quick backs, long stalls), scheduled agents (Scouts), and external tools (Zendesk, Linear, GitHub issues). ^[extracted]
2. **Scouts** — Research agents investigate each signal, gather context from analytics, session replays, and the codebase, then produce a structured report. ^[extracted]
3. **Inbox** — Reports surface in a prioritized queue alongside other product feedback. The engineer triages: accept, modify, or discard. ^[extracted]
4. **Pull Requests** — The agent authors a PR that ships with its own instrumentation — adding events, feature flags, and experiments automatically. ^[extracted]
5. **Measure** — PostHog checks whether the metric actually moved after merge. If not, that generates a new signal and the change can be rolled back. ^[extracted]

### Safety and Human Merge Gate

PostHog's safety model: "autonomy from instruction, not from you" — nothing reaches production without human merge. ^[extracted] Safety guarantees include sandboxed cloud work agents (no direct repo access), human-only merge button, secrets protection, and private repos remain private. ^[extracted] Pricing is per-pull-request with unlimited reports and 3 free PRs per month. ^[extracted]

The human merge gate is the load-bearing distinction between safe autonomous loops and uncontrolled automation. PostHog's bounded approach — where the loop generates work within product constraints but a human must approve each merge — contrasts with research-oriented loops that aim for full autonomy within a defined evaluation boundary. ^[inferred]

### The Product Engineer Loop

Loops aren't just an AI phenomenon. Product engineers already complete this loop manually:
- Collect data through analytics and talking to users
- Build and ship improvements based on that data
- Evaluate performance to guide future development
- Repeat constantly

Self-driving agents automate this exact loop, removing the need for human prompting at step one. ^[extracted]

## Limits

Loops aren't about eliminating all engineering work. They automate the "1% gains" — bugs, UX issues, paper cuts, conversion tweaks — things that drain engineering hours but rarely need strategic input. The more you automate, the more time engineers spend on impactful and interesting work. ^[extracted]

A counterpoint from IEEE Spectrum ([source](https://spectrum.ieee.org/ai-science-research-flattens-discovery)): AI-using scientists publish 3x more papers but occupy a smaller footprint in "knowledge space", clustering around data-rich tractable problems. ^[extracted] The concern for autonomous agent loops — whether in product engineering or scientific research — is that optimizing for measurable signals may converge on the same tractable fixes rather than expanding into harder, less-measurable improvements. ^[inferred] The narrowing is not about algorithmic design but about incentives and reward structures. ^[extracted]

## Code Was Never the Problem

Critics deride loops as a ploy from OpenAI and Anthropic to get everyone tokenmaxxing. But the rise of product engineers already showed that writing code is only a small portion of the work. Direction, taste, and empathy remain critical — even in a loop-driven future. ^[extracted]

The opposition to loops is an understandable reaction to another shift in how software is built. Engineers feel threatened when told they should be "designing loops" rather than writing code. The work is increasingly abstracted away from writing code. ^[extracted]

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
- [[concepts/claude-code-loop-types]] — Claude Code team's classification of four loop types (turn-based, goal-based, time-based, proactive) with specific primitives for each.
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
- [[concepts/loop-engineering|Loop Engineering]] — Technical roadmap for building safe autonomous loops; complements PostHog's product-loop approach with engineering mechanics (statelessness, isolation, reward-hacking defense)
- [[concepts/continuous-eval-loops|Continuous Eval Loops]] — The operational cycle for eval-driven improvement; AIDE²'s inner/outer loop architecture is a concrete implementation
