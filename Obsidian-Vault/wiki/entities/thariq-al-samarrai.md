---
title: Thariq Al-Samarrai
tags:
- anthropic
- agent-design
- claude-code
- agent-engineering
- technical-writing
aliases: [Thariq, trq212, Thariq Al-Samarrai]
relationships:
  - target: "[[anthropic]]"
    type: related_to
  - target: "[[claude-code]]"
    type: related_to
  - target: "[[concepts/agent-tools]]"
    type: related_to
  - target: "[[concepts/agent-architecture]]"
    type: related_to
sources: [threads/agent-4-thariq-skills-thread.md, threads/agent-2-bash-for-agents.md, https://x.com/trq212/status/2052809885763747935, https://x.com/trq212/status/2053632475294040084]
summary: Anthropic engineer and technical writer known for insights on agent design patterns, skills abstractions, and building coding agents.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T20:45:00Z
---

# Thariq Al-Samarrai

Anthropic engineer (@trq212) who has published extensive technical writing on building coding agents, particularly Claude Code. Known for a practical, pattern-oriented approach to agent design that emphasizes simplicity and developer experience.

## Key Technical Themes

### Skills as the Universal Abstraction

Argues that skills are the core abstraction all AI agents will build on[^1] — modular folders of instructions, scripts, and resources that agents discover and use dynamically. At Anthropic, hundreds of internal skills cluster into nine categories: library/API reference, product verification, data fetching, business automation, code scaffolding, code quality review, CI/CD deployment, runbooks, and infrastructure operations. ^[inferred]

Key principles from his work on building skills:
- Don't state the obvious — Claude already knows how to code
- Build a **Gotchas** section capturing common failure points
- Use the file system and progressive disclosure (skills are folders, not just markdown)
- Avoid railroading — give agents flexibility to adapt
- Think through setup config for user-provided context

### Agent Design Is More Art Than Science

The insight that "building an agent is more of an art than a science" — design depends on the model, goal, and environment, and evolves iteratively through trial and error rather than first-principles reasoning. ^[inferred]

His work on tool design evolution includes:
- **AskUserQuestion Tool** — went through 3 attempts before landing on the right approach
- **Task vs TodoWrite** — replaced with Task tool as models got better at subagents
- **Search interface** — evolved from RAG to giving Claude Grep tool, then Agent Skills
- **Claude Code Guide** — subagent handling doc-searching in its own context

### Core Agent Infrastructure Principles

Several foundational opinions on agent architecture that have gained traction in the community:

- **File systems are essential** — "Every agent can use a file system. The file system is an elegant way of representing state that your agent could read into context and allowing it to verify its work." ^[extracted]
- **Bash is all you need** — his advice to companies building general agents "generally boils down to: use the bash tool more"
- **Prompt caching is everything** — considered his highest-alpha writing, most relevant for teams building agents from scratch
- **Playgrounds for visual iteration** — one of the best ways to iterate on agent ideas visually

### Agent SDK and Development Patterns

- Advocates the **Claude Agent SDK** (renamed from Claude Code SDK) as the easiest way to build agents — giving agents access to a computer via the terminal
- **Spec-based development** — start with a minimal spec, ask Claude to interview you using AskUserQuestionTool, then make a new session to execute the spec
- **HTML for planning** — uses HTML for planning, speccing, exploration, code review, and reports
- **Dynamic workflows** — allow agents to handle whole new types of tasks
- **Session management with 1M context** — requires more careful thinking about session management at scale, not less

## Notable Reception

His technical writing has received significant community attention:
- Pinned thread garnered 1.6M views, 8.2K likes, 15.3K bookmarks
- NeetCode (@neetcode1): "anything I've read of yours is extremely well written"

## References

His published articles (some cross-posted to the Claude Blog):

- "Lessons from Building Claude Code: How We Use Skills" — Jun 3, 2026 — [[https://claude.com/blog/lessons-from-building-claude-code-how-we-use-skills|source]]
- "Seeing like an agent: how we design tools in Claude Code" — Apr 10, 2026 — [[https://claude.com/blog/seeing-like-an-agent|source]]
- "Lessons from Building Claude Code: Prompt Caching Is Everything" — [[https://claude.com/blog/lessons-from-building-claude-code-prompt-caching|source]]
- "Making Playgrounds using Claude Code" — [[https://claude.com/blog/making-playgrounds|source]]
- "Building Agents with the Claude Agent SDK" — Sep 29, 2025 — [[https://claude.com/blog/building-agents-with-the-claude-agent-sdk|source]]
- "Using Claude Code: Session Management & 1M Context" — [[https://claude.com/blog/using-claude-code-session-management|source]]
- "Using Claude Code: The Unreasonable Effectiveness of HTML" — [[https://claude.com/blog/using-claude-code-html|source]]
- "A harness for every task: dynamic workflows in Claude Code" — [[https://claude.com/blog/dynamic-workflows|source]]
- "A Field Guide to Fable: Finding Your Unknowns" — Jul 9, 2026 — [[https://claude.com/blog/fable-field-guide|source]]

---

[^1]: Skills as the abstraction — the idea that agentic systems decompose into discoverable, composable skill modules rather than monolithic prompt chains or fixed workflow DAGs.
