---
title: Progressive Disclosure Forms
category: concepts
tags: [context-engineering, skills, claude-code, agent-design, tool-design]
aliases: [Progressive Disclosure, progressive disclosure]
relationships:
  - target: "[[concepts/context-engineering]]"
    type: extends
  - target: "[[entities/claude-code]]"
    type: uses
sources:
  - "https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models"
  - "https://claude.com/blog/a-harness-for-every-task-dynamic-workflows-in-claude-code"
  - "https://www.aihero.dev/a-complete-guide-to-agents-md"
summary: "Loading guidance only when needed: skills called selectively, deferred-loading tools with ToolSearch, and CLAUDE.md/Skill.md file trees instead of central repositories."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
lifecycle_changed: '2026-08-04'
tier: supporting
created: '2026-07-06'
updated: '2026-08-07'
---
# Progressive Disclosure Forms

**Progressive disclosure** in context engineering means loading the right context at the right time instead of putting it all upfront. Anthropic names it one of the six new rules of context engineering for Claude 5 models — the shift from "put it all upfront" to on-demand loading. ^[extracted]

## Forms

- **Skills** — Claude Code moved code-review and verification guidance out of the system prompt into skills Claude selectively calls when needed. ^[extracted]
- **Deferred-loading tools** — some tools' full definitions are not in the prompt; the agent must search for them with `ToolSearch` before using them (e.g. the Task tools). This allows many more tools without paying context cost for all of them. ^[extracted]
- **File trees** — a common myth is that CLAUDE.md/Skill.md should be a central repository of every practice you might run into. Instead, use a **tree of files loaded at the right time** — e.g. a CLAUDE.md that references a separate verification skill. ^[extracted]
- **Long skills** — split into many files so only the relevant slice is loaded. ^[extracted]
- **Repo doc trees (AGENTS.md practice)** — the same pattern applied to repository guidance: language rules live in separate files (`docs/TYPESCRIPT.md`) referenced conversationally from the root `AGENTS.md`; trees nest further (`TYPESCRIPT.md` → `TESTING.md` → specific test runners) and may link external docs (Prisma, Next.js); monorepo package-level `AGENTS.md` files merge with the root, each level focused on its own scope. ^[extracted]

## Why It Works

Constraints and guidance that are always present consume tokens, can conflict with each other (burning reasoning tokens on conflict resolution), and can constrain exploration when not needed. Deferring them preserves their value precisely when they apply. ^[inferred]

## Related

- [[concepts/context-engineering]] — the discipline this pattern belongs to
- [[concepts/agents-md]] — the AGENTS.md application: minimal root file + doc trees
- [[concepts/instruction-budget]] — the budget progressive disclosure protects
- [[concepts/claude-code-dynamic-workflows]] — the tree-of-files / verifier-agents mechanism
- [[concepts/claude-doctor]] — the command that rightsizes skills for progressive disclosure
- [[concepts/claude-code-session-management]] — related context hygiene at scale
- [[entities/thariq-al-samarrai]] — author of the source rules
- [[references/new-rules-of-context-engineering]] — source article

## Sources

- "The new rules of context engineering for Claude 5 generation models" — https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models
- "A harness for every task: dynamic workflows in Claude Code" — https://claude.com/blog/a-harness-for-every-task-dynamic-workflows-in-claude-code
- "A Complete Guide To AGENTS.md" — Matt Pocock, AI Hero, https://www.aihero.dev/a-complete-guide-to-agents-md
