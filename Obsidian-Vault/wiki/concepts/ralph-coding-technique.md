---
title: Ralph Coding Technique
sources:
- '[[sources/ralph-ai-coding-technique_ghuntley]]'
tags:
- ai-assisted-development
- agent-loop
- vibe-coding
aliases:
- Ralph technique
- Ralph Wiggum coding
- AI recursive coding loop
- monolithic AI agent
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-04T15:08:34.914077+00:00'
updated: '2026-07-04T15:08:34.914077+00:00'
summary: Ralph Coding Technique
---
# Ralph Coding Technique

## Definition

Ralph is an AI-assisted software development technique built around a simple Bash while-loop:

```bash
while :; do cat PROMPT.md | claude-code ; done
```

The idea — named after Ralph Wiggum from The Simpsons — is that an AI coding agent runs continuously in a loop, each iteration performing one task from a prioritized plan. The agent decides for itself what to implement next based on specifications and a plan file (`fix_plan.md`), making it a monolithic (single-process) alternative to multi-agent systems.


## Core Philosophy

### Deterministically bad in a nondeterministic world

Ralph embraces its own unreliability as a feature, not a bug. The technique is "deterministically bad in a nondeterministic world" — its failure modes are predictable and can be tuned away with better prompts, unlike the chaotic failures of multi-agent systems where non-deterministic agents talk to other non-deterministic agents.

### LLMs are mirrors of operator skill

When Ralph goes wrong, the author looks inward, not at the tools. Every bad outcome reveals a tuning opportunity — a prompt to add, a spec to clarify, a technical standard to establish. Tuning Ralph is likened to tuning a guitar: each wrong direction leads to adjustment, not blame.

### Signs, not rewrites (the playground metaphor)

Ralph is given instructions to construct a playground. He comes home bruised from falling off the slide. The operator doesn't rebuild the playground — they add a sign: "SLIDE DOWN, DON'T JUMP, LOOK AROUND." Eventually Ralph sees the sign and stops falling. The art of Ralph is knowing what signs to put up and when. Over-signposted Ralph becomes rigid; under-signposted Ralph hurts itself.

### Any problem created by AI can be resolved through a different series of prompts

All bugs, misdirections, and failures Ralph produces are solvable through better prompts and more loops. The repository may fill with garbage, temporary files, and binaries — those are acceptable costs. When things go too far off track, delete `fix_plan.md` and regenerate it.

### "All you need are tokens" (post-AGI stance)

The author claims "if models and tools remain as they are now, we are in post-AGI territory." The argument: these models yearn for tokens, so throw tokens at them. With the right approaches, tokens become primitives to automate software development end-to-end. ^[inferred]

### Ralph's three states

Ralph operates in three states: underbaked, baked, or baked with unspecified latent behaviours (which are sometimes quite nice). There is no clean state — Ralph is always either insufficiently tuned, functioning well, or functioning well with unknown emergent properties.


### "I don't plan" — trusting the model

The author states: "I don't [plan]. The models know what a compiler is better than I do. I just ask it." This is a deliberate stance: for greenfield projects, the LLM's training data already contains enough knowledge of the domain (compilers, databases, etc.) that the model can self-direct. Planning is replaced by an initial conversation and specification generation, then the loop handles the rest. ^[inferred]

### Run more Ralphs

## Core Design

### Monolithic vs multi-agent

Ralph is the opposite of microservices. Multi-agent, agent-to-agent communication and multiplexing adds enormous complexity — especially when the agents themselves are non-deterministic. Ralph works as a single process in a single repository, performing one task per loop iteration.

### One item per loop

The cardinal rule: one thing per loop. The agent trusts the LLM to decide what's most important to implement next. The context window (~170k effective) is limited, so keeping each iteration narrow is essential.

**Planning vs building modes.** During the planning phase, Ralph picks the *single most important* thing to study and plan next ("choose the most important thing"). During building, Ralph picks the *10 most important* items ("choose the most important 10 things"). This distinction lets planning be narrow and focused while building batches work for efficiency. If the project goes off the rails, narrow back to one item per loop.

### Deterministic allocation

The items allocated to the context window every loop are deterministic: always `fix_plan.md` and the specs. This ensures the agent has the same grounding every iteration, even though its output is non-deterministic.

### Persistent context files

Each loop re-reads the same files from disk, making them persistent context:
- **Specs** (`specs/`) — written upfront after a planning conversation with the agent. These define requirements as individual files.
- **fix_plan.md** — a prioritized TODO list of items to implement. The agent updates this continuously.
- **AGENT.md** — build/run instructions. The agent self-improves this file as it learns.

### Subagents for parallelism

The primary loop keeps its context window lean. Expensive allocation work (searching the codebase, summarizing test results) is delegated to subagents. Only one subagent should run build/tests for validation — fanning out validation causes backpressure problems.

## How It Works

### Planning phase

1. Have a conversation with the LLM about requirements
2. Ask the LLM to write specifications as individual files in `specs/`
3. The LLM studies existing code and creates `fix_plan.md` as a prioritized TODO list

### Building phase (the loop)

1. Each iteration reads `specs/`, `fix_plan.md`, and the codebase
2. The agent picks the most important unimplemented item
3. Implements it, then tests it
4. Updates `fix_plan.md` and `AGENT.md` with findings
5. Commits and pushes when tests pass
6. The loop continues to the next item

### Backpressure

- Run tests only for the unit of code that was improved
- Use static analyzers/type checkers (Dialyzer for Erlang, Pyrefly for Python)
- Type systems like Rust provide strong backpressure but compile slowly
- For dynamically typed languages, static analysis is critical

**Language choice tradeoff.** Rust offers the strongest type-system backpressure but compiles slowly — LLMs struggle to generate perfect Rust in one attempt, requiring more iterations. This means the wheel turns slower. For dynamically typed languages, static analysers like Dialyzer (Erlang) or Pyrefly (Python) are critical to avoid a "bonfire of outcomes." The speed of the wheel turning must be balanced against the axis of correctness.

**Capturing test intent for future context windows.** Because each loop has a fresh context window, the agent in one iteration cannot see the reasoning of a prior iteration. The solution is to document *why* each test matters directly in the test code using `@moduledoc` or equivalent (observed in the Anole project's Elixir test suite). This helps future LLM iterations decide whether a test is still relevant, should be modified, or can be deleted — without needing the original reasoning in their context window.

## Common Failure Modes

### Non-deterministic search

Ripgrep-based search can incorrectly conclude code is not implemented, leading to duplicate implementations. Mitigated by instructing the agent to always search before assuming.

### Placeholder implementations

LLMs have a bias toward minimal implementations that compile. Countered with explicit prompts forbidding placeholders.

### Broken codebase on wakeup

The agent may leave the codebase in an unbuildable state. Options include:
- Manually fixing it with targeted prompts
- `git reset --hard` and letting the loop rebuild
- Feeding compilation errors to another model for planning

## Strengths

- Effective for bootstrapping greenfield projects (~90% complete)
- One engineer with Ralph can displace a large majority of SWEs for greenfield work
- Deterministic workflow pattern in an undeterministic system
- Self-improving: the agent updates its own build instructions
- Post-AGI claim: with the right approaches, tokens + loops can automate software development end-to-end ^[inferred]

## Limitations

- Not suited for existing codebases (author states: "no way in heck would I use Ralph in an existing code base")
- Requires senior engineering expertise to guide and tune
- The agent goes off-track periodically; the TODO list may need manual reset
- Produces a messy repo with temporary files, binaries, and garbage

## Provenance

> Ralph has been used to build CURSED, a new programming language including compiler, stdlib, and tree-sitter grammar — with the LLM never having seen the language in its training set.

## Pages consulted
ralph-ai-coding-technique_ghuntley

## Related

- [[concepts/microservices-architecture]] — Ralph is the opposite: monolithic single-loop instead of multi-agent
- [[misc/web-youtube-com-watch-v-flutukqyhnq]] — Factory's Missions multi-agent system: the structured multi-agent alternative to Ralph's monolithic approach. Uses three specialized roles (orchestrator, workers, validators) instead of one agent per loop.
- [[entities/geoffrey-huntley]] — Creator of the Ralph technique, author of Groundhog and CURSED

See also: Groundhog (conversation-first specification technique), deliberate intentional practice (operator skill development framework) — both by the same author.
