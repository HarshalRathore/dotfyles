---
title: Context Engineering
tags:
- prompt-engineering
- ai
- agents
- architecture
- llm
- quality
sources:
- 'https://www.youtube.com/watch?v=8kmatybvduw'
- 'https://www.youtube.com/watch?v=g1hhmz6mxt0'
- 'https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models'
- 'https://x.com/i/status/2080710971228918066'
- 'https://commandcode.ai/docs/harness-engineering/read-tool'
- 'https://manus.im/blog/Context-Engineering-for-AI-Agents-Lessons-from-Building-Manus'
- 'https://earendil.com/posts/prompt-caching/'
- 'https://www.humanlayer.dev/blog/context-efficient-backpressure'
provenance:
  extracted: 0.72
  inferred: 0.22
  ambiguous: 0.06
base_confidence: 0.65
lifecycle: draft
tier: core
updated: 2026-08-13
category: concepts
created: '2026-07-04T15:08:38.589107+00:00'
summary: "The thesis that everything in agent quality reduces to getting the right tokens into the model — from Dex Horthy's 'LLMs are pure functions' framing through Anthropic's 2026 new rules for Claude 5."
---

# Context Engineering

The thesis that LLMs are pure functions — token in, tokens out — and therefore everything that determines agent output quality is a matter of context engineering: how you select, structure, and optimize the tokens you feed into the model. ^[extracted]

## Origin

This framing was articulated by [[entities/dex-horthy|Dex Horthy]] ([[entities/humanlayer|HumanLayer]]) in the [[concepts/12-factor-agents|12-Factor Agents]] framework: ^[extracted]

> "LLMs are pure functions, token in, tokens out, and everything, everything in making agents good is context engineering. So you have your prompt, you have your memory, you have your RAG, you have your history structure, it's all just how do we get the right tokens into the model so it gives us a really good answer and solves the user's problem."

## What Context Engineering Encompasses

| Domain | Engineering Question |
|---|---|
| **Prompt** | What instructions does the model need? How are they phrased? What priority? |
| **Memory** | What past interactions are relevant? What can be summarized vs kept verbatim? |
| **RAG results** | Which retrieved documents are included? How are they ranked and formatted? |
| **History structure** | How is the conversation history organized? What's the event model? |
| **Error traces** | Which errors are surfaced? Summarized or raw? Cleared on success? |
| **Tool definitions** | How are tool schemas described? Which tools are included or excluded per step? |
| **State representation** | How is the agent's current state (current step, retry count, pending approvals) serialized into the context? |


| **Code quality** | How readable is the code the model sees? Are names, structure, and comments optimized for AI understanding? |

### Broader Framing: Code Quality Is Context

[[entities/christopher-harrison|Christopher Harrison]] offers a complementary framing — context is not just what you feed the model, but the codebase itself: ^[extracted]

> "Co-pilot again behaves like an AI pair programmer. It's going to be reading your code. Just as if I brought somebody else new onto the team."

This means readable code is context: ^[extracted]

- **Good names** — Clear function and variable names let Copilot navigate as well as a human pair programmer would. Single-letter variables and abbreviations cause it to struggle. ^[extracted]
- **Comments** — Even if "good code doesn't need comments," a line or two helps the AI read faster. ^[extracted]
- **Project structure** — A well-organized project helps the model reason about the codebase. ^[extracted]
- **Clear intent** — Specific instructions beat terse commands. "Don't be passive-aggressive with Copilot." ^[extracted]

This expands context engineering beyond prompt construction to encompass the entire developer workflow — how you write, structure, and document code is itself a form of context engineering. ^[inferred]
All of these are "just how do we get the right tokens into the model" — there is no separate discipline for each. ^[inferred]

## Key Implications

### Optimize Token Density and Clarity

"Some of the traces that we use in some of the agents we build internally might look like this. But if you're not looking at every single token, and if you're not optimizing the density and the clarity of the way that you're passing information to an LLM, you might be missing out on upside on quality." ^[extracted]

### Don't Blindly Append

A concrete practice from the talk: when a tool call succeeds after previous failures, clear all pending errors. "Don't just blindly put things on. If you have errors and then you get a valid tool call, clear all the pending errors out. Summarize them. Don't put the whole stack trace on your context. Figure out what you want to tell the model so you get better results." ^[extracted]

### Model Your Context However You Want

"You can model your event state, your thread model however you want and stringify it however you want." The standard OpenAI messages format is one option, but you can also put all context into a single user message or craft the system message however you like. What matters is the quality of the tokens, not compliance with a standard format. ^[extracted]

### Owning the Context Enables Advanced Patterns

When you own the context window (rather than a framework owning it), you can: ^[extracted]
- Serialize it to a database for pause/resume
- Branch and switch between different context constructions
- Summarize aggressively at transition points
- Inject exactly the right error context

These are not possible when the framework constructs the context for you. ^[inferred]

## Related to Prompt Engineering

Context engineering is broader than [[concepts/domain-expert-prompt-engineering|prompt engineering]]. Prompt engineering focuses on the instructions given to the model. Context engineering encompasses everything in the input — instructions, data, history, state, tools, errors — and how they're structured and prioritized. Prompt engineering is a sub-discipline of context engineering. ^[inferred]

## The New Rules (Claude 5 Generation)

In July 2026 Anthropic published its own context-engineering rules after removing **over 80% of Claude Code's system prompt** for Claude Opus 5 and Claude Fable 5 with no measurable loss on coding evaluations. The finding: the team was **overconstraining** Claude — internal transcripts showed conflicting instructions in single requests ("leave documentation as appropriate" vs "DO NOT add comments"), forcing the model to spend reasoning tokens deciding which instruction wins. ^[extracted]

Six shifts replaced prior best practices: ^[extracted]

| Then | Now |
|---|---|
| Give Claude rules | Let Claude use judgment |
| Give Claude examples | Design interfaces |
| Put it all upfront | Use progressive disclosure |
| Repeat yourself | Simple tool descriptions |
| Memory in CLAUDE.md files | Auto-memory |
| Simple specs | Rich references |

Concrete guidance from the article for assembling context:

- **System prompt** — tied to product context; the place to spend time when building your own agent harness (for Claude Code itself, you rarely modify it). ^[extracted]
- **CLAUDE.md** — keep lightweight: describe what the repo is for, spend most tokens on **gotchas**, avoid stating the obvious. ^[extracted]
- **Skills** — lightweight guides loaded on demand; avoid overconstraining except in highly important areas; split long skills into file trees. ^[extracted]
- **References** — `@`-mention files (specs, mockups, entire codebases); prefer code as reference — an HTML mockup beats a description or screenshot. ^[extracted]

This is a direct inversion of earlier context-engineering advice (more detailed rules, more examples, everything upfront) for a specific model generation — evidence that context engineering is capability-relative, not absolute. ^[inferred] The best practices ship as the [[concepts/claude-doctor|claude doctor]] command. See the deep dive in [[references/new-rules-of-context-engineering|The new rules of context engineering for Claude 5 generation models]].

## The Read Path: Where the Context Bill Is Actually Spent

The read tool is the largest single context-builder in a coding session: "count the reads in any agent session — every edit starts with a read, every grep hit becomes a read, a plan step opens 3 files." [[entities/commandcode|Command Code]] estimates a few hundred reads per session, ~50M/month across its user base, and argues **"that's why coding agents feel expensive: the bill is mostly reads building context."** ^[extracted]

The cost math (Command Code's napkin version):

```
500 junk tokens × 50M reads/month = 25B junk tokens
— × every turn they stay in context
```

Context engineering therefore extends *down into the tool layer*: the read tool decides what bytes become tokens. Command Code's v1 `read_file` treats this as a compiler problem — three ceilings (2,000-line window / 128 KB byte budget / 2,000 ch-per-line clamp), recovery notices that name the next offset so the model never burns reasoning tokens on pagination arithmetic, a partial-view ledger so the write tool never destroys unseen content, and a self-expiring dedup cache so repeated reads don't re-enter context. Full lesson set: [[skills/read-tool-engineering|Read Tool Engineering]]. ^[extracted]

The same "cost per successful read" logic applies to any harness: **claude code's read tool has no window, no byte cap, no clamp** — it succeeds by spending more tokens per call and relying on a model smart enough to fish signal from noise; Command Code had to succeed by spending less because open models can't. ^[extracted]

## Relationship to Other Concepts

- [[concepts/12-factor-agents]] — The framework where context engineering is the foundational insight
- [[concepts/agent-loop]] — The loop where context is continuously built and managed
- [[concepts/agent-reliability-challenge]] — Context engineering as a key lever for reliability
- [[concepts/domain-expert-prompt-engineering]] — Related but narrower (prompts are a subset of context)
- [[concepts/llm-as-computation-engine]] — Another framing of LLMs as a computational primitive
- [[concepts/system-prompt-curve]] — The U-shaped curve of optimal prompt size vs model capability
- [[concepts/progressive-disclosure-forms]] — Upfront context becomes on-demand loading
- [[concepts/agents-md]] — The repo-level configuration layer; AGENTS.md quality is a context-engineering problem
- [[concepts/instruction-budget]] — The ~150-200 instruction ceiling that bounds how much guidance files may carry
- [[entities/dex-horthy]] — Originator of the term in this context

## Sources

- [[references/12-factor-agents-patterns-dex-horthy-humanlayer|12-Factor Agents: Patterns of Reliable LLM Applications — AI Engineer World's Fair 2025]]
- AIEF2025 — Collaborating with Agents in your Software Dev Workflow, Jon Peck & Christopher Harrison, Microsoft. https://www.youtube.com/watch?v=G1hhmz6mXT0
- "The new rules of context engineering for Claude 5 generation models" — https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models
- Announcing tweet — https://x.com/i/status/2080710971228918066
- "A Complete Guide To AGENTS.md" — Matt Pocock, AI Hero, https://www.aihero.dev/a-complete-guide-to-agents-md

## 2026-08-13: Practitioner Rules from Manus, Earendil, and HumanLayer

[[references/manus-context-engineering-lessons|Manus's engineering post]] (2025-07) adds six production rules: (1) design around the KV-cache — hit rate is the single most important production metric (~100:1 input:output ratio in agent loops); (2) keep the prompt prefix stable and context append-only — a second-precision timestamp kills the cache; (3) **mask, don't remove** — constrain tool choice via logit masking instead of dynamically loading/unloading tool definitions; (4) use the file system as restorable context (keep the URL/path, drop the content); (5) recite goals via a step-by-step todo.md to bias attention against lost-in-the-middle; (6) keep failed turns in context as evidence, and don't let few-shot patterns become ruts (inject structured variation). ^[extracted]

[[references/prompt-caching-in-agents|Earendil's essay]] (2026-07) frames cache stability as a context-engineering constraint: tool definitions sit near the front, so loadout changes invalidate everything after; additive tool loading (message-anchored) preserves prefixes; rewriting history mid-context is usually more expensive than the tokens saved. ^[extracted] [[references/humanlayer-context-backpressure|HumanLayer]] contributes the deterministic-output side: swallow test/build/lint output to a `✓` on pass (full output on failure), failFast, filter noise — stay in the ~75k-token "smart zone" and don't let context-anxious models burn more tokens than they save. ^[extracted]
