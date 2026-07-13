---
title: Using Claude Code — The Unreasonable Effectiveness of HTML
category: references
tags:
  - claude-code
  - html
  - agent-output
  - prompt-formatting
  - anthropic
aliases: [claude-code-html, html-agent-output, unreasonable-effectiveness-html]
relationships:
  - target: '[[concepts/agents-should-use-a-filesystem]]'
    type: related_to
  - target: '[[entities/claude-code]]'
    type: related_to
  - target: '[[entities/thariq-al-samarrai]]'
    type: related_to
sources:
  - https://x.com/trq212/status/2052809885763747935
  - https://x.com/trq212/status/2053632475294040084
summary: Thariq Al-Samarrai argues HTML is more effective than Markdown for agent outputs — planning, speccing, code review, and reports benefit from HTML's visual formatting capabilities.
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Using Claude Code — The Unreasonable Effectiveness of HTML

A Twitter thread by [[entities/thariq-al-samarrai|Thariq Al-Samarrai]] (@trq212, Anthropic) covering his blog article "Using Claude Code: The Unreasonable Effectiveness of HTML," cross-posted to the Claude Blog. The core thesis: **HTML is more effective than Markdown for agent outputs** in structured use cases. ^[extracted]

## Key Premise

Markdown has become the dominant file format used by AI agents (like Claude Code) to communicate with humans. It is simple, portable, has some rich text capability, and is easy for models to generate. However, Thariq argues HTML is a **more powerful and effective format for agent outputs** because of its superior visual formatting capabilities. ^[extracted]

> The article description notes: "Markdown has become the dominant file format used by agents to communicate with us. It's simple, portable, has some rich text capability and is easy for you to..." ^[extracted]

## Use Cases for HTML with Claude Code

From the thread, Thariq uses HTML for these practical agent workflows: ^[extracted]

- **Planning** — Rich, structured plans with proper formatting that Markdown cannot easily achieve
- **Speccing** — Detailed technical specifications with precise layout control
- **Exploration** — Formatted research findings with better visual hierarchy
- **Code review** — Structured code review output with inline annotations
- **Reports** — Formatted report generation with tables, sections, and visual structure
- **And a lot more** — General-purpose structured agent output ^[inferred]

## Markdown vs HTML for Agent Output

The thread implies a comparison between the two formats: ^[inferred]

- **Markdown** is easy for models to generate and simple for humans to read, but limited in visual expressiveness
- **HTML** provides far richer formatting capabilities (nested layouts, precise typography, styling) while still being machine-readable and parseable

The article likely covers: ^[inferred]
- Why HTML is superior to Markdown for certain agent output patterns
- How to structure HTML prompts for Claude Code
- Practical patterns for using HTML in agent workflows
- Why visual formatting capabilities matter for readability and comprehension

## Engagement

The original article thread received significant traction:

- **Tweet 1** (May 8, 2026): 14.4M views, ~1.1K replies — shared the article link
- **Tweet 2** (May 11, 2026): 51.1K views, 21 replies, 19 reposts, 147 likes, 191 bookmarks — "I've been using HTML for planning, speccing, exploration, code review, reports and a lot more." ^[extracted]

## Relationship to Other Concepts

This thread extends Thariq's earlier thesis that [[concepts/agents-should-use-a-filesystem|agents should use a file system]]. If the file system is the agent's state representation, then **the format of files the agent produces matters** — HTML is one such format choice that trades simplicity for expressive power, much like how the file system trades context-window simplicity for persistent state. ^[inferred]

## Open Questions

- When does HTML's richness become overkill vs. genuinely improve agent output quality?
- Are there performance costs (token usage) to generating HTML vs. Markdown? ^[ambiguous]
- Does Claude Code have built-in HTML formatting tools, or does the agent generate raw HTML? ^[ambiguous]

## Sources

- Original tweet thread: https://x.com/trq212/status/2052809885763747935
- Thread continuation: https://x.com/trq212/status/2053632475294040084
- Claude Blog (cross-post): https://claude.com/blog/using-claude-code-html
