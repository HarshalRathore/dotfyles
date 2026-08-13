---
title: Claude Doctor
category: concepts
tags: [claude-code, context-engineering, claude-md, skills, agent-tools]
aliases: [/doctor, claude doctor]
relationships:
  - target: "[[entities/claude-code]]"
    type: implements
  - target: "[[concepts/context-engineering]]"
    type: uses
sources:
  - "https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models"
summary: "Claude Code's /doctor command that inspects skills and CLAUDE.md files and automatically rightsizes them for newer models — the operationalized form of Anthropic's new context-engineering rules."
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.0
base_confidence: 0.62
lifecycle: draft
lifecycle_changed: "2026-08-04"
tier: supporting
created: "2026-08-04T00:00:00Z"
updated: "2026-08-04T00:00:00Z"
---

# Claude Doctor

**Claude Doctor** is a Claude Code command (`/doctor`) that automatically **rightsizes skills and CLAUDE.md files** for newer models, operationalizing Anthropic's new rules of [[concepts/context-engineering|context engineering]]. ^[extracted]

## What It Does

Anthropic packaged the lessons from cutting 80% of Claude Code's system prompt into the command: it inspects your skills and CLAUDE.md files and helps simplify them for the Claude 5 generation. ^[extracted]

The implicit diagnosis: defensive prompt cruft accumulated over previous model generations — rules, examples, and repetitions added to constrain weaker models — becomes a tax on newer models. Conflicting rules make the model burn reasoning tokens deciding which instruction wins. ^[inferred]

## The Doctor's Agenda

Following the six shifts from the context-engineering article, a /doctor session targets: ^[inferred]

- Rules that should become judgment (e.g. blanket "no comments" directives)
- Examples that constrain exploration and should become interface design
- Upfront context that should become progressive disclosure
- Duplicated instructions that belong in tool descriptions only
- Manual memory instructions superseded by auto-memory
- Simple markdown specs that should become rich references (code, test suites, rubrics)

## Related

- [[concepts/context-engineering]] — the rules the doctor applies
- [[concepts/system-prompt-curve]] — why the cleanup matters as models get smarter
- [[concepts/claude-code-session-management]] — Thariq's related guidance on context hygiene at scale
- [[entities/claude-code]] — the product it ships in
- [[references/new-rules-of-context-engineering]] — source article

## Sources

- "The new rules of context engineering for Claude 5 generation models" — https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models
