---
title: "The New Rules of Context Engineering for Claude 5 Generation Models"
category: references
tags: [context-engineering, claude-code, system-prompt, skills, claude-md, anthropic]
aliases: [New Rules of Context Engineering, Context Engineering Claude 5]
relationships:
  - target: "[[entities/thariq-al-samarrai]]"
    type: related_to
  - target: "[[concepts/context-engineering]]"
    type: extends
  - target: "[[concepts/system-prompt-curve]]"
    type: related_to
sources:
  - "https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models"
source_url: "https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models"
created: "2026-08-04T00:00:00Z"
updated: "2026-08-04T00:00:00Z"
summary: "Anthropic's official guide: they removed over 80% of Claude Code's system prompt for Opus 5 and Fable 5 with no measurable eval loss — six shifts from rules to judgment, shipped as claude doctor."
stub: false
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.62
lifecycle: draft
lifecycle_changed: "2026-08-04"
---

# The New Rules of Context Engineering for Claude 5 Generation Models

> [!tldr] Anthropic removed over 80% of Claude Code's system prompt for Claude Opus 5 and Claude Fable 5 with no measurable loss on coding evaluations. The old prompt was overconstraining newer models; the new rules replace rules with judgment, examples with interface design, and upfront context with progressive disclosure.

**Author:** Thariq Shihipar, member of technical staff, Anthropic — published July 24, 2026 on the Claude Blog. ^[extracted]

## Problem & Motivation

A prompt is only a small part of what Claude sees — most context is assembled from the system prompt, Skills, CLAUDE.md files, memory, and other sources, which Anthropic calls **context engineering** (distinct from prompting). Unlike a prompt, context is reused across many requests and cannot be as specific. ^[extracted]

Reading transcripts of internal Claude Code usage, the team found **conflicting messages in single requests** — e.g. "leave documentation as appropriate" (skills/user) clashing with "DO NOT add comments" (system prompt). Claude can still interpret intent, but it must burn reasoning tokens deciding which instruction wins. Constraints that were once needed to avoid worst-case scenarios (deleting files, bad comments) could be deleted for newer models and replaced with surrounding context and judgment. ^[extracted]

## The Six Shifts ("Then and Now")

| Then | Now |
|---|---|
| Give Claude rules | Let Claude use judgment |
| Give Claude examples | Design interfaces |
| Put it all upfront | Use progressive disclosure |
| Repeat yourself | Simple tool descriptions |
| Memory in CLAUDE.md files | Auto-memory |
| Simple specs | Rich references |

### 1. Rules → Judgment

Old system prompt: *"In code: default to writing no comments. Never write multi-paragraph docstrings or multi-line comment blocks — one short line max. Don't create planning, decision, or analysis documents unless the user asks for them."* ^[extracted]

New system prompt: *"Write code that reads like the surrounding code: match its comment density, naming, and idiom."* ^[extracted]

The old guardrails were needed because older models wrote incorrect comments without them; for a subset of prompts the rules were simply wrong (users with documentation preferences, complex code needing multi-line comments). Newer models handle these decisions without explicit rules. ^[extracted]

### 2. Examples → Interface Design

The old "number one rule" was to give tool-usage examples — but examples now **constrain the model's exploration space**. Instead, design tools, scripts, and files so their shape is self-explanatory: expressive parameters, enumerations. The Todo tool's status enum (`pending`, `in_progress`, `completed`) hints at usage; the "keep one item in_progress" instruction defines behavior. ^[extracted]

### 3. Upfront Context → Progressive Disclosure

Detailed code-review and verification guidance was moved out of the system prompt into **skills Claude selectively calls**. Tools use **deferred loading** — the agent searches for full definitions with `ToolSearch` before using them (e.g. Task tools), allowing more tools without context cost. The same applies to CLAUDE.md/Skill.md: a common myth is that these should be a central repository of every practice you might run into; instead use a **tree of files loaded at the right time** (see dynamic workflows). ^[extracted]

### 4. Repetition → Simple Tool Descriptions

Earlier models sometimes needed repeated instructions and were more likely to follow instructions at the end of the context window. The team deleted the duplicated examples and put tool-usage instructions **in the tool descriptions only**, not the system prompt. ^[extracted]

### 5. CLAUDE.md Memory → Auto-memory

Users used to be encouraged to save memories with the `#` hotkey into CLAUDE.md. Claude now **automatically saves memories** relevant to the work and to you. ^[extracted]

### 6. Simple Specs → Rich References

Plan mode used to rely on markdown plan files; specs were stored in the codebase. Claude now handles richer references: **HTML artifacts** created by the artifacts feature, **code as spec** (a detailed test suite, or a function in another codebase to port), and **rubrics** — which let Claude verify your taste (e.g. "what does a good API design look like") via dynamic workflows spinning up verifier agents. ^[extracted]

## Applying This to Your Context

- **System prompt** — tied to product context; for Claude Code you will likely never modify it, but if you build your own agent harness, this is where to spend time. ^[extracted]
- **CLAUDE.md** — keep lightweight: briefly describe what the repo is for, spend most tokens on **gotchas** (e.g. "types live in one monolithic file"), avoid stating the obvious. Use progressive disclosure — e.g. a verification skill referenced from CLAUDE.md. ^[extracted]
- **Skills** — lightweight guides for Claude to find information when needed; avoid overconstraining except in highly important areas; long skills should be split into many files; best when they encode opinions, knowledge, or best practices particular to you, your team, or product. ^[extracted]
- **References** — `@`-mention files (specs, mockups, entire codebases). Prefer files that are in code — an HTML mockup of a design produces better results than a description or screenshot. ^[extracted]

## Claude Doctor

The best practices ship as `claude doctor` — run `/doctor` in Claude Code to automatically **rightsize your skills and CLAUDE.md files** for the newer models. ^[extracted]

## Caveats

- The 80% figure is Anthropic's own number, measured on Anthropic's own coding evaluations; the article does not break down which task categories held up. ^[ambiguous]
- "Trust the model's judgment" lands differently in a hobby project than a regulated codebase, where judgment is exactly what a reviewer does not want. ^[inferred]

## Related

- [[concepts/context-engineering]] — the discipline this article rewrites
- [[concepts/system-prompt-curve]] — the U-shaped prompt-size curve the 80% cut demonstrates
- [[concepts/claude-doctor]] — the /doctor command
- [[concepts/progressive-disclosure-forms]] — the on-demand-loading pattern
- [[concepts/claude-code-dynamic-workflows]] — the tree-of-files / verifier-agents mechanism referenced
- [[concepts/claude-code-session-management]] — Thariq's earlier session-management guide
- [[entities/thariq-al-samarrai]] — author
- [[entities/claude-code]] — product
- [[misc/web-x-com-i-status-2080710971228918066]] — announcing tweet

## Sources

- https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models
- Announcing tweet: https://x.com/i/status/2080710971228918066
