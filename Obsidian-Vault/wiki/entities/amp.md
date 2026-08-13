---
title: Amp
category: entities
tags: [tool, coding-agents, harness, ampcode]
aliases: [ampcode, Amp CLI, Amp Neo]
relationships:
  - target: '[[concepts/context-management-for-agents]]'
    type: implements
sources:
  - https://ampcode.com/
  - https://ampcode.com/news/neo
summary: Amp — coding agent from Ampcode (ampcode.com). Its rebuilt "Neo" CLI is compaction-first: auto-compaction at 90% context, handoff removed, remote control, plugin API, queuing/steering, permissions as a plugin.
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:00:00Z
updated: 2026-08-13T15:00:00Z
---

# Amp

**Amp** is the coding agent from **Ampcode** (ampcode.com). In 2026 it shipped a rebuilt CLI, codename **Neo**, on a new architecture: remote-controllable, **compaction-first**, plugin-powered. ^[extracted]

## The Neo Rebuild

- **No more manual context management** — "build for what the frontier models can do now"; Amp compacts the thread automatically when the context window is 90% full: summarizes, starts a fresh window with the summary, keeps going. ^[extracted]
- **Handoff is out, compaction is in** — handoff was removed; a beta user: "I love having auto-compaction. NOT missing handoff..." ^[extracted]
- **Remote control** from ampcode.com — live updates, message send/queue/dequeue/cancel; passkey auth optional. ^[extracted]
- **Plugin API** — `amp.on(...)`, `amp.registerTool(...)`, `amp.registerCommand(...)`, UI elements (`ctx.ui.notify/confirm/input/select`), `amp.ai.ask(...)`; permissions moved into the plugin system (static tool-call checking deemed near-impossible with models writing throwaway scripts). ^[extracted]
- **Queuing & steering** — messages queue by default; steering fast-tracks a queued message at the next tool result; Esc Esc interrupts. ^[extracted]
- **Performance** — 79% less CPU, 70% less memory on a ~5000-message thread. ^[extracted]
- Removed: file-change rollback, skill management commands, user-invokable skills, themes, manual bash invocation (`$`/`$$`). ^[extracted]

## Related

- [[concepts/context-management-for-agents|Context Management for Agents]] — Amp's compaction replaces manual handoff
- [[misc/web-yingchao-dev-blog-compaction|Compaction — Yingchao Dai]] — documents the handoff→compaction shift Amp exemplifies
- [[references/openai-server-side-compaction|OpenAI Server-Side Compaction]] — possible under-the-hood mechanism (unverified)
