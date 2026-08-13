---
title: Session Portability
category: concepts
tags: [session-portability, agent-transcripts, provider-sealed-state, context-ownership]
aliases: [portable session, transcript ownership]
relationships:
  - target: '[[references/earendil-session-portability]]'
    type: extends
  - target: '[[references/harness-lecture-12-clean-state]]'
    type: extends
  - target: '[[entities/pi]]'
    type: related_to
  - target: '[[concepts/context-management-for-agents]]'
    type: relates_to
sources:
  - https://earendil.com/posts/session-portability/
  - https://earendil.com/posts/compaction-in-pi/
  - https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-12-why-every-session-must-leave-a-clean-state/
summary: "An agent session's transcript must be self-contained enough for another model/provider to continue the work; tested: inspection, export, replay, audit, deletion; threatened by provider-sealed state."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:30:00Z
updated: 2026-08-13T18:30:00Z
---

# Session Portability

**Session portability** is the property that an agent session's transcript contains enough intelligible information for another model — possibly at another provider — to continue the work, without the original provider dereferencing an ID, decrypting a blob, recalling a search result, or reconstructing a summary. It is the framing essay's answer to the erosion of transcript ownership as inference APIs return provider-bound state. ^[extracted]

## The Five Tests

A portable session satisfies: ^[extracted]

1. **Inspection** — the user sees what the model saw, what tool calls it made, what agents told each other
2. **Export** — the session is self-contained (beyond ordinary downloadable artifacts)
3. **Replay** — another implementation can reconstruct a semantically equivalent context
4. **Audit** — a human can explain any action after the fact
5. **Deletion** — every server-side copy the session depends on can be found and removed

## Threats: Provider-Sealed State

Features that break portability, each with a user-friendly justification: encrypted reasoning tokens (`encrypted_content`, Anthropic `signature` thinking), hosted-search evidence the client never sees, opaque compaction items (OpenAI's `/responses/compact` "canonical next context window"), encrypted subagent messages (Responses Multi-agent, Codex "Encrypt multi-agent v2 message payloads"), unresolvable resource references, and response-ID-keyed state (Responses API ~30-day retention default; Gemini Interactions 55 days paid / 1 day free). ^[extracted]

## Why It Matters

Even if users rarely switch models mid-session, portability preserves: the ability to leave (model retirement, outages, price/policy changes, confidential local phases), auditability, and provider discipline — a provider that cannot hold your context hostage must compete on quality, price, reliability, and trust. ^[extracted]

## In Practice: Compaction Is a Portability Decision

Compaction is where portability is won or lost: a **plain-text summary** ([[entities/pi|Pi]]'s approach) is lossy but inspectable and transferable — the user can review it, edit it, or have another model regenerate it; an **encrypted compaction item** is a one-provider continuation. Pi stores compaction summaries as plain text explicitly so sessions remain portable across model switches. ^[extracted]

## 2026-08 — Learn Harness Engineering (Walking Labs): clean session state

[[references/harness-lecture-12-clean-state|Lecture 12 of the Learn Harness Engineering course]] adds the operational-discipline lens: portability is not only a property of the transcript — the session itself must hand off a state a successor can pick up without re-derivation. Its claims:

- **End-of-session state is the next session's starting point**: both OpenAI and Anthropic state that long-term reliability depends on operational discipline, not single-run success; the quality of state at session end directly determines the next session's efficiency. ^[extracted]
- **Clean state = five non-negotiable conditions**: build passes, all tests pass (including pre-existing tests, verified in CI), progress recorded in machine-readable artifacts, no stale temporary artifacts, standard startup path functional. Missing any one means the session isn't "done." ^[extracted]
- **Progress records are the portability artifact**: completed subtasks with passing criteria, in-progress subtasks with current state, not-yet-started subtasks — good records cut session-startup diagnostic time by 60–80%. ^[extracted]
- **Session integrity is transaction-like**: either fully commit and leave a clean state, or roll back to the last consistent state — no middle ground. ^[extracted]
- **Entropy is the default**: without exit cleanup, technical debt compounds (12-week data: startup 5 min → 60+ min and build pass 100% → 68% without cleanup vs 9 min / 97% with it); "clean up later" means never — the next session will build on the mess, not clean it. ^[extracted]
- **Mechanisms**: session-exit checklist declared in CLAUDE.md, dual-mode cleanup (immediate per-session "reference counting" + weekly "tracing" cleanup loop), a quality document scoring each module over time, idempotent cleanup operations, and periodic harness simplification. ^[extracted]

The dirty-session failure the lecture describes — the next session spending 30 minutes "figuring out what the last session actually did," with intentional vs temporary code indistinguishable — is the cross-session analogue of provider-sealed state: both make the session opaque to its successor. Clean-state discipline is the harness-side guarantee that sessions remain inspectable and continuable, complementing the provider-side guarantees the five tests demand. ^[inferred]

## Related

- [[references/earendil-session-portability|The Session You Cannot Take With You]] — the source essay's deep-dive
- [[references/harness-lecture-12-clean-state|Lecture 12 — Why Every Session Must Leave a Clean State]] — the harness-side clean-handoff lens on session continuity
- [[misc/web-earendil-com-posts-compaction-in-pi|How Compaction Works in Pi]] — plain-text summaries as the implementation choice
- [[concepts/context-management-for-agents|Context Management for Agents]] — session design as a management lever
- [[references/openai-server-side-compaction|OpenAI Server-Side Compaction]] — the sealed counter-example
