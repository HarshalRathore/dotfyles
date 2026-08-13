---
title: "Effective Harnesses for Long-Running Agents — Anthropic Engineering"
category: references
type: reference
tags: [harness-engineering, anthropic, long-running-agents, context-management, verification]
sources:
  - "https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents"
source_url: "https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Anthropic's two-part harness for multi-session agents: an initializer agent scaffolds init.sh, a feature list, and progress notes; each session makes an incremental, tested, committed step."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: "2026-08-13"
tier: supporting
---

# Effective Harnesses for Long-Running Agents

> [!tldr] Anthropic's engineering answer to multi-session agent work: **compaction alone is not enough** — even a frontier coding model (Opus 4.5) running on the Claude Agent SDK in a loop across context windows fails at a single high-level prompt like "build a clone of claude.ai." The fix is a two-part harness: an **initializer agent** scaffolds the environment once (init.sh, a JSON feature list, claude-progress.txt, an initial git commit), and a **coding agent** then makes incremental progress in every session — one feature at a time, self-verified end-to-end, committed with descriptive messages. The repository becomes the system of record that bridges context windows.

**Author:** Justin Young (Anthropic). **Published:** 2026, on anthropic.com/engineering. **URL:** https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents ^[extracted]

## Overview

As agents become more capable, developers ask them to take on tasks spanning hours or days, but getting agents to make consistent progress **across multiple context windows** remains an open problem. Agents work in discrete sessions, and each new session begins with no memory of what came before — "a software project staffed by engineers working in shifts, where each new engineer arrives with no memory of what happened on the previous shift." The article documents a two-fold solution used to make the [[references/claude-agent-sdk|Claude Agent SDK]] work effectively across many context windows: an **initializer agent** that sets up the environment on first run, and a **coding agent** that makes incremental progress each session while leaving clear artifacts for the next session. ^[extracted]

## Key Points

### The long-running agent problem

- The Claude Agent SDK is a general-purpose agent harness with context-management capabilities such as **compaction**, which in theory lets an agent work without exhausting the context window. In practice, **compaction is insufficient**: out of the box, Opus 4.5 on the SDK in a loop still falls short of building a production-quality web app from a high-level prompt. ^[extracted]
- **Failure pattern 1 — one-shotting:** the agent tries to do too much at once, runs out of context mid-implementation, and leaves the next session with a half-implemented, undocumented feature; the next agent must guess what happened and spend time restoring the basic app. Compaction doesn't always pass perfectly clear instructions to the next agent. ^[extracted]
- **Failure pattern 2 — premature victory:** later in a project, a fresh agent instance looks around, sees progress, and declares the job done. ^[extracted]
- The problem decomposes into two parts: (1) set up an **initial environment** that lays the foundation for all features the prompt requires; (2) prompt each agent to make **incremental progress** while leaving the environment in a **clean state** — code appropriate for merging to main: no major bugs, orderly and well-documented, so a developer could start a new feature without cleaning up an unrelated mess. ^[extracted]
- The two-part solution: an **initializer agent** (first session only, specialized prompt) sets up `init.sh`, a `claude-progress.txt` log of what agents have done, and an initial git commit; every subsequent session uses a **coding agent** prompted to make incremental progress and leave structured updates. The footnote clarifies the two are "separate agents" only because they get different initial user prompts — the system prompt, tool set, and harness are otherwise identical. ^[extracted]
- The key insight: agents can quickly understand work state from `claude-progress.txt` alongside git history — inspiration drawn from what effective software engineers do every day. ^[extracted]

### Environment management

- The approach extends the multi-context-window best practices in the Claude 4 prompting guide, whose harness structure uses "a different prompt for the very first context window." ^[extracted]

### Feature list

- To stop one-shotting and premature completion, the initializer agent writes a **comprehensive JSON feature list** expanding the user's prompt — for the claude.ai clone, over 200 features, each with category, description, test steps, and a `passes` field initially `false`. ^[extracted]
- Coding agents edit the file **only by flipping `passes`**, with strongly-worded instructions ("It is unacceptable to remove or edit tests..."). JSON was chosen after experimentation because the model is less likely to inappropriately change or overwrite JSON than Markdown. ^[extracted]

### Incremental progress

- Coding agents work on **one feature at a time** — critical for the "too much at once" failure mode. ^[extracted]
- Agents must leave a clean state: commit progress to git with descriptive messages and write summaries in the progress file; git then lets the agent revert bad changes and recover working states. This also saved efficiency by eliminating guesswork about what happened. ^[extracted]

### Testing

- A final major failure mode: Claude marks features complete **without proper end-to-end testing** — it makes code changes and even runs unit tests or curl commands, yet fails to recognize the feature doesn't work end-to-end. ^[extracted]
- Explicitly prompted to use browser automation and test "as a human user would," Claude verified web features well (screenshots via the Puppeteer MCP server); the agent could then identify and fix bugs not obvious from code alone. ^[extracted]
- Remaining limits: Claude's vision and browser-automation tooling can't catch every bug class — e.g. it cannot see browser-native alert modals through the Puppeteer MCP, so modal-dependent features tended to be buggier. ^[extracted]

### Getting up to speed

- Every coding agent starts its session with a bearing routine: run `pwd` (it can only edit files in its directory), read git logs and progress files, read the feature list and pick the highest-priority unfinished feature — and, per the initializer's `init.sh`, start the dev server and run a basic end-to-end test *before* implementing anything, so a broken state is caught and fixed immediately rather than compounded. ^[extracted]
- A typical session opens with `bash - pwd`, `read - claude-progress.txt`, `read - feature_list.json`, `git log --oneline -20`, then dev-server startup and basic functionality verification. ^[extracted]

### Agent failure modes and solutions

| Problem | Initializer Agent Behavior | Coding Agent Behavior |
|---|---|---|
| Claude declares victory on the whole project too early | Set up a feature list file: structured JSON of end-to-end feature descriptions | Read the feature list at session start; choose a single feature to work on |
| Claude leaves the environment buggy or with undocumented progress | Write an initial git repo and a progress notes file | Start by reading progress notes + git commit logs and running a basic dev-server test; end with a git commit and progress update |
| Claude marks features as done prematurely | Set up a feature list file | Self-verify all features; mark "passing" only after careful testing |
| Claude wastes time figuring out how to run the app | Write an `init.sh` script that runs the development server | Start the session by reading `init.sh` |

### Future work

- Whether a single general-purpose coding agent beats a **multi-agent architecture** across contexts remains open — specialized agents (testing, QA, code cleanup) might do better on SDLC sub-tasks. ^[extracted]
- The demo is optimized for full-stack web app development; generalizing to scientific research or financial modeling is a future direction. ^[extracted]
- Written by Justin Young; the work reflects "the collective efforts of several teams across Anthropic," especially the **code RL and Claude Code teams**. ^[extracted]

## Concepts

- [[concepts/ai-harness|AI Agentic Harness]] — the harness layer this article designs: environment, state, and verification around the model
- [[concepts/context-management-for-agents|Context Management for Agents]] — compaction as context management, and why it is insufficient alone
- [[concepts/agents-should-use-a-filesystem|Agents Should Use a File System]] — the repo (feature list + progress file + git history) as the state representation bridging sessions
- [[concepts/agent-exit-strategies|Agent Exit Strategies]] — declaring victory too early as a termination failure the harness must prevent
- [[concepts/agent-web-browsing|Agent Web Browsing]] — browser automation via the Puppeteer MCP as the end-to-end verification mechanism
- [[concepts/agent-terminal|Agent Terminal]] — the pwd/git/dev-server routine that opens each session
- [[concepts/loop-engineering|Loop Engineering]] — the per-session loop: get bearings → verify baseline → one feature → test → commit

## Entities

- [[entities/anthropic|Anthropic]] — publisher; the article reflects the code RL and Claude Code teams ^[extracted]
- [[entities/claude-code|Claude Code]] — Anthropic's coding agent; the Claude Agent SDK is its SDK layer (see [[references/claude-agent-sdk|Building Agents with the Claude Agent SDK]])
- Claude Agent SDK — the harness the article optimizes; no entity page yet ^[inferred]
- Justin Young — named author; no entity page yet ^[inferred]
- Opus 4.5 — the frontier coding model used in the experiments; no entity page yet ^[inferred]
- Puppeteer MCP server — browser automation used for end-to-end testing; no entity page yet ^[inferred]

## Open Questions

- Does a single general-purpose coding agent or a multi-agent architecture (testing/QA/cleanup specialists) perform better across context windows? The article flags this as its most notable open question. ^[extracted]
- Do these harness lessons generalize beyond full-stack web apps — e.g. to scientific research or financial modeling? ^[extracted]
- How much of the result depends on the scale of the feature list (200+ features in the demo) vs. the harness mechanics themselves? Not addressed in the article. ^[inferred]
- The task brief expected "worker/checker separation" and "context anxiety" findings; neither term appears in the article — the actual split is initializer agent vs. coding agent, and the framing is session continuity, not anxiety. ^[ambiguous]

## Related

- [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering (Course Landing)]] — this article is one of the course's four core references
- [[references/claude-agent-sdk|Building Agents with the Claude Agent SDK]] — Anthropic's companion guide to the harness this article optimizes
- [[references/harness-lecture-05-long-running-tasks-continuity|Lecture 5: Long-Running Tasks Lose Continuity]] — session continuity as a harness problem
- [[references/harness-lecture-06-initialization-phase|Lecture 6: Initialization Phase]] — initialization as its own phase
- [[references/harness-lecture-08-feature-lists-primitives|Lecture 8: Feature Lists as Primitives]] — `feature_list.json` as a harness primitive
- [[references/harness-lecture-09-declare-victory-too-early|Lecture 9: Declaring Victory Too Early]] — premature "done" claims
- [[references/harness-lecture-12-clean-state|Lecture 12: Clean State]] — leaving a merge-ready environment
- [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop: The Art of Making a Loop Converge]] — verification-defined completion, the same mechanism as the `passes` field
- [[references/openai-harness-engineering|OpenAI: Harness Engineering]] — sibling core reference of the course (expected-dangling: sibling agent in flight)
- [[references/anthropic-harness-design|Anthropic: Harness Design]] — sibling core reference of the course (expected-dangling: sibling agent in flight)

### Further reading (outbound links from the article)

- Claude Agent SDK docs — https://platform.claude.com/docs/en/agent-sdk/overview
- Autonomous coding quickstart — https://github.com/anthropics/claude-quickstarts/tree/main/autonomous-coding
- claude.ai — https://claude.ai ^[inferred from redirect link]
- Claude 4 prompting guide, multi-context-window workflows — https://docs.claude.com/en/docs/build-with-claude/prompt-engineering/claude-4-best-practices#multi-context-window-workflows
- Anthropic careers — https://anthropic.com/careers
