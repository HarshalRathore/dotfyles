---
title: Your Agent Should Use a File System — Tweet Thread by @trq212
category: references
tags:
  - twitter-thread
  - agent-design
  - claude-code
  - anthropic
  - agent-tools
  - file-system
sources:
  - https://x.com/trq212/status/2035372725921882119
summary: Thariq Al-Samarrai's pinned tweet thread (187.9K views) arguing that AI agents should use the filesystem as their state representation, demonstrated via Claude Code.
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Your Agent Should Use a File System — Tweet Thread by @trq212

**Author:** Thariq Al-Samarrai (@trq212) — Anthropic engineer, verified ^[extracted]
**Date:** September 23, 2025 at 3:16 AM
**Views:** 187.9K | **Likes:** 1K | **Bookmarks:** 1.1K | **Reposts:** 99
**Thread length:** 6 tweets

## Thread Summary

Thariq argues that every AI agent should have filesystem access. Claude Code proved the concept: before CC, people assumed context windows would grow large enough to fit entire codebases. That turned out to be wrong — you don't need to remember everything, just know how to find it. ^[extracted]

## Tweet-by-Tweet Breakdown

### Tweet 1 — The Thesis

> "Your Agent should use a File System. This is a hill I will die on. Every agent can use a file system."

The file system is an elegant way of representing state that your agent could read into context and allowing it to verify its work. ^[extracted]

### Tweet 2 — Claude Code as Proof

> "Claude Code was what proved this to me."

Before Claude Code, the prevailing assumption was that context windows would get long enough that you could just fit a codebase into context. But that is not how programming works. You don't need to remember everything, you just need to know how to find it. ^[extracted]

### Tweet 3 — Email Agent Example

Thariq shares an example from his open source [[entities/claude-code|email agent]] — instead of dumping a ton of emails into context, he writes them to a file and lets the agent grep across those files. Fundamentally this works because it lets your agent have multiple passes at a problem. ^[extracted]

### Tweet 4 — Use Cases

The thread references multiple use cases for agent file system usage:
- **Memory:** Search previous conversation as markdown or JSON files to find context and link to exact architecture
- **React Artifacts:** Agents make mistakes writing code; the filesystem lets them display and iterate
 - **Data processing:** Excel and spreadsheet operations through file I/O ^[extracted]

### Tweet 5 — Human Parallels

> "I know this is inconvenient! It would be easier if your agent could run in a lambda function. But agents are trained like humans and so we need to give them the resources & the tools that we use — like the file system."

The Claude Code SDK enables this pattern. ^[extracted]

### Tweet 6 — Permissions

> "Of course file systems are a big responsibility. As agents become more general, the problem shifts to permissions."

Anthropic's approach: Claude Code in a sandbox, with extensive permission controls. ^[extracted]

## Notable Replies

### On Persistence Across Sessions

**@Tekniam:** "should the filesystem be persistent across sessions though"

> "it depends on your use case, but I think that when I think of an agent I think of an entity that works with me specifically, and so the file system is a way of persisting that easily" ^[extracted]

### On Cross-Platform Access

**@erd0xbc:** "what are your thoughts on having that state accessible in different platforms?"

> "Depends on your case but I suggest APIs into the platform but using the file system to store the results, especially when searching." ^[extracted]

### On Virtualized File Systems

**@yzx396:** "What if your agent use a FS in memory?"

> "the ability to use bash to access is important, if you can virtualize it fully that totally works (e.g. http://webcontainers.new is kind of goated for this)" ^[extracted]

## External Links

- **Claude Agent SDK Demos** — https://github.com/anthropics/claude-agent-sdk-demos (2,633 stars, TypeScript, MIT license)
  - Email Agent, Excel Demo, Research Agent, Resume Generator, Simple Chat App
- **Claude Code SDK Permissions Docs** — https://code.claude.com/docs/en/agent-sdk/permissions
  - Covers permission evaluation order, modes, allow/deny rules, subagent inheritance
- **Stackblitz WebContainers** — https://webcontainers.new
  - Referenced as a way to virtualize file systems for agents without direct filesystem access

## Cross-References

This thread is the primary source for the [[concepts/agents-should-use-a-filesystem|Agents Should Use a File System]] concept. It also provides evidence for [[entities/thariq-al-samarrai|Thariq's]] broader thesis on agent design patterns, including that "bash is all you need."
