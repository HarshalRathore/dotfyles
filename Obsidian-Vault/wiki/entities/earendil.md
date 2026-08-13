---
title: Earendil
category: entities
tags: [company, coding-agents, pi, engineering-blog]
aliases: [Earendil Inc, Earendil Engineering, earendil-works]
relationships:
  - target: '[[entities/pi]]'
    type: related_to
sources:
  - https://earendil.com/
  - https://github.com/earendil-works/
  - https://pi.dev
summary: Earendil Inc. — the company behind the Pi coding agent (pi.dev), the Lefos platform, and the earendil-works GitHub org; publishes first-party engineering essays (prompt caching, session portability, compaction) under "Earendil Engineering".
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:30:00Z
updated: 2026-08-13T15:30:00Z
---

# Earendil

**Earendil** (Earendil Inc.) is the company behind the [[entities/pi|Pi]] coding agent (pi.dev), the Lefos platform (lefos.com), and the open-source `earendil-works` GitHub organization. Its engineering blog (earendil.com/posts, bylined "Earendil Engineering", rfc@earendil.com) publishes first-party essays on harness design: ^[extracted]

- **Prompt Caching In Agents** (2026-07-22) — KV-cache mechanics and cache-aware agent design → [[references/prompt-caching-in-agents|Prompt Caching In Agents]]
- **The Session You Cannot Take With You** (2026-07-30) — session ownership, provider-sealed state, portability tests → [[references/earendil-session-portability|Session Portability]]
- **How Compaction Works in Pi** (2026-08-13) — the official account of Pi's compaction design → [[misc/web-earendil-com-posts-compaction-in-pi|How Compaction Works in Pi]]

## Positions (from its posts)

- **Compaction summaries must be plain text** — readable and portable across models; Pi never forwards opaque compaction state to another provider. ^[extracted]
- **The local event log should be canonical**; server storage is an accelerator, not the source of truth. ^[extracted]
- **Prompt caching is fragile and load-bearing** for coding agents; harnesses should design for prefix stability (Pi appends rather than prunes). ^[extracted]

## Related

- [[entities/pi|Pi]] — flagship product
- [[references/prompt-caching-in-agents|Prompt Caching In Agents]] — first essay in the series
- [[concepts/session-portability|Session Portability]] — concept from the second essay
