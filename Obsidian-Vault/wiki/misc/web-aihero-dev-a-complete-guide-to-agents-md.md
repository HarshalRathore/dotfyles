---
title: "A Complete Guide To AGENTS.md — Matt Pocock (AI Hero)"
category: misc
tags: [agents-md, context-engineering, progressive-disclosure, claude-code, coding-agents]
sources:
  - "https://www.aihero.dev/a-complete-guide-to-agents-md"
source_url: "https://www.aihero.dev/a-complete-guide-to-agents-md"
created: "2026-08-07T00:00:00Z"
updated: "2026-08-07T00:00:00Z"
summary: "Matt Pocock's guide to optimizing AGENTS.md for AI coding agents: the instruction budget, a minimal root file, progressive disclosure via separate files and nested doc trees, and monorepo patterns."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.88
  inferred: 0.09
  ambiguous: 0.03
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-07"
tier: supporting
---

# A Complete Guide To AGENTS.md — Matt Pocock (AI Hero)

**Author:** Matt Pocock (AI Hero, aihero.dev) — TypeScript educator and agent-skills author ^[extracted]
**Date:** January 18, 2026 (page updated)
**URL:** https://www.aihero.dev/a-complete-guide-to-agents-md

## Overview

A practical guide to writing an `AGENTS.md` file that improves AI coding agent performance instead of degrading it. The core thesis: an `AGENTS.md` is a configuration layer between the agent's base instructions and the codebase, every token in it is loaded on every request, and it therefore should be as small as possible — with everything else moved behind [[concepts/progressive-disclosure-forms|progressive disclosure]]. The guide covers the instruction budget, stale-doc poisoning, monorepo file merging, and a copy-paste refactor prompt. ^[extracted]

## Key Points

- **What AGENTS.md is** — a markdown file checked into Git that customizes coding-agent behavior, sitting at the top of conversation history right below the system prompt. It's an open standard supported by many (not all) tools; it carries personal scope (commit style, coding preferences) and project scope (what the project does, package manager, architecture decisions). ^[extracted]
- **CLAUDE.md compat** — Claude Code doesn't read AGENTS.md; a symlink (`ln -s AGENTS.md CLAUDE.md`) keeps all tools working the same way. ^[extracted]
- **Instruction budget** — frontier thinking LLMs follow roughly 150–200 instructions with reasonable consistency; smaller and non-thinking models attend to fewer. Every token in AGENTS.md is loaded on every single request regardless of relevance, so the ideal file is as small as possible. ^[extracted]
- **Stale docs poison context** — file paths change constantly; documenting structure ("auth lives in `src/auth/handlers.ts`") makes agents confidently look in the wrong place. Document capabilities and overall shape instead, and let the agent generate just-in-time documentation during planning. Domain concepts are safer to document than paths, but keep a light touch. ^[extracted]
- **The absolute minimum root file** — one-sentence project description (acts as a role-based prompt), package manager if not npm (or corepack), and non-standard build/typecheck commands. Everything else goes elsewhere. ^[extracted]
- **Progressive disclosure** — move language-specific rules to separate files (`docs/TYPESCRIPT.md`) referenced conversationally from the root; nest further (`docs/TYPESCRIPT.md` → `docs/TESTING.md` → specific test runners); link external docs (Prisma, Next.js); use agent skills as another on-demand mechanism. No "always," no all-caps forcing — a light touch. ^[extracted]
- **Monorepos** — subdirectory AGENTS.md files merge with the root. Root holds monorepo purpose, package navigation, shared tools; each package holds its own purpose, tech stack, conventions. Don't overload any level — the agent sees all merged files. ^[extracted]
- **Never auto-generate** — initialization scripts flood the file with "useful for most scenarios" guidance that belongs behind progressive disclosure; generated files prioritize comprehensiveness over restraint. ^[extracted]
- **Ball of mud feedback loop** — agent does something you dislike → add a rule → repeat for months → contradictory, unmaintainable instruction bloat that hurts performance. The guide ships a copy-paste refactor prompt: find contradictions, extract essentials, group the rest into separate files, flag redundant/vague/obvious instructions for deletion. ^[extracted]

## Concepts

- [[concepts/agents-md]] — the file and the discipline of keeping it minimal
- [[concepts/instruction-budget]] — why size matters: the 150–200 instruction budget and per-request token cost
- [[concepts/progressive-disclosure-forms]] — the pattern the guide applies to repo docs
- [[concepts/context-engineering]] — the discipline AGENTS.md is a configuration layer of
- [[concepts/system-prompt-curve]] — the capability-relative cost of over-instructing ^[inferred]
- [[concepts/instruction-rot]] — the same growth-disease described as "ball of mud" ^[inferred]
- [[concepts/claude-doctor]] — the /doctor command that rightsizes CLAUDE.md files, complementary tooling

## Entities

- [[entities/matt-pocock]] — author (AI Hero)
- [[entities/claude-code]] — the tool that uses CLAUDE.md instead of AGENTS.md

## Open Questions

- The 150–200 instruction figure is secondhand (attributed to Kyle at HumanLayer) and model-generation-specific — where the budget lands for current frontier models is not quantified in the article. ^[ambiguous]
- The article defers agent skills to a follow-up piece; the boundary between "AGENTS.md + doc tree" and "skills" as progressive-disclosure mechanisms is left open. ^[ambiguous]

## Related

- [[misc/web-youtube-com-watch-v-unzcg3lw6o0|Building Great Agent Skills — Matt Pocock]] — the companion skill-building talk
- [[references/new-rules-of-context-engineering]] — Anthropic's official rules, independently converging on progressive disclosure and minimal CLAUDE.md guidance
- [[concepts/agents-should-use-a-filesystem]] — related take on filesystem state and agent-readable docs
