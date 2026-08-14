---
title: The Session You Cannot Take With You — Earendil Engineering
category: references
tags: [session-portability, provider-sealed-state, reasoning-tokens, compaction, agent-transcripts]
aliases: [earendil session portability, portable session essay, provider-sealed state]
relationships:
  - target: '[[concepts/session-portability]]'
    type: implements
  - target: '[[entities/pi]]'
    type: related_to
  - target: '[[concepts/prompt-caching]]'
    type: related_to
sources:
  - https://earendil.com/posts/session-portability/
summary: "Earendil's essay on session ownership — provider-bound state erodes the transcript; portable-session tests: inspection, export, replay, audit, deletion; what a portable inference API should promise."
provenance:
  extracted: 0.9
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:30:00Z
updated: 2026-08-13T15:30:00Z
---

# The Session You Cannot Take With You

> **TL;DR:** Inference APIs increasingly return a mixture of text and provider-bound state — encrypted reasoning blobs, hosted-search results the client never sees, opaque compaction items, sealed subagent messages, server-keyed response IDs. The local transcript stops being the session and becomes a partial view of it. Earendil's practical test: a portable session is one where `session.export()` + `continueFrom(transcript)` works with a different provider, verifiable through five tests — inspection, export, replay, audit, deletion.

**Author:** Earendil Engineering · **Published:** 2026-07-30 · **URL:** https://earendil.com/posts/session-portability/

## Overview

The original inference-API promise: send input, receive output, keep both, and the conversation is yours — inspectable, archivable, replayable, portable. That was never fully true (prompt caches live on someone else's GPUs, tokenization differs between models, sampling is irreproducible), but the *semantic record* — the transcript — could still belong to the user. Providers are now moving away from even that, mixing output with state that is intentionally non-portable: ^[extracted]

- **Reasoning tokens** billed to the user but returned only as opaque, encrypted blobs with "useless summaries at best"
- **Hosted web searches** where the model sees source material the client never sees
- **Compacted context** that only the original provider can decrypt
- **Subagent instructions/messages** hidden from the host application as encrypted payloads
- **File, vector-store, container, and cache references** that cannot be resolved anywhere else
- **Conversation state keyed by provider-side IDs** stored entirely on the provider's servers

Each feature ships with a plausible user-friendly justification; together they change the ownership reality — the transcript on your machine is a partial view of a session whose operational state belongs to the inference provider. ^[extracted]

## A Practical Test for Session Ownership

Portability does not mean the same next token from another model — it means: ^[extracted]

```js
const transcript = session.export();
revokeCredentials(oldProvider);
session = newProvider.continueFrom(transcript);
```

The archive must be self-contained — no dereferencing a provider ID, decrypting a blob, recalling a search result, or reconstructing a summary. Five tests fall out:

1. **Inspection** — can the user see what the model saw, what tool calls it made, and what agents told each other?
2. **Export** — is the session self-contained apart from ordinary downloadable artifacts?
3. **Replay** — can another implementation reconstruct a semantically equivalent context?
4. **Audit** — can a human explain why the system took an action after the fact?
5. **Deletion** — can the user identify and remove every server-side copy the session depends on?

A response ID is not a transcript (data sits on the server), ciphertext is not user-controlled state (the user cannot decrypt it), and a citation list is not the evidence that was placed in context (the exact data usually cannot be refetched). ^[extracted]

## Encryption for Whom: Provider-Sealed State

`encrypted_content` is marketed as privacy but is usually a capsule the client cannot read and only the provider can open — better termed **provider-sealed state**. It can have a real privacy benefit (OpenAI's `store: false` encrypted reasoning avoids persisting intermediate state, valuable for Zero Data Retention customers), but the encryption hides the data from *you*, not from the provider. ^[extracted]

## Stored Conversations Turn a Transcript into a Pointer

- OpenAI Responses API stores responses by default ("retained for at least 30 days"); `store: false` is available and makes it behave like completions. ^[extracted]
- Gemini Interactions API defaults to `store: true` — 55 days on paid tier, 1 day on free. ^[extracted]
- The lure is real (less data sent, hidden reasoning and tool state preserved, easier cache routing) — but the local app then holds a foreign key into a database it does not control. ^[extracted]

## No Reasoning For You

- Raw chain-of-thought is not exposed on closed-weights models. With stored responses, prior reasoning is recoverable via `previous_response_id`; with `store: false` the API returns `encrypted_content` the client must preserve and replay. `reasoning.context: "all_turns"` lets a later sample use reasoning while it stays opaque. ^[extracted]
- Anthropic returns encrypted full thinking in a `signature` field; readable thinking text (when enabled) is a *summary produced by another model*, not the raw trace; thinking blocks must be passed back unchanged during tool-use turns and are tied to the producing model. ^[extracted]
- These mechanisms permit continuity inside an ecosystem, not portability between providers. ^[extracted]

## Hidden Searches

Hosted search runs a private tool loop on the provider side: the client gets citations and URLs, not the ranking, retrieved passages, or filtered-out material. A URL is not stable evidence — contents change or are reduced to snippets before the model sees them. A follow-up request to another model receives an answer and URLs but not the evidence. Earendil asks for a **full-fidelity export mode**: queries, result metadata, retrieved passages, timestamps, retained contents — citations can remain the UI, but they must not be the only record. ^[extracted]

## Opaque Compaction

- A visible, client-controlled summary is lossy but inspectable and transferable — the user can review, edit, or regenerate it with another model. ^[extracted]
- OpenAI's server-side compaction instead emits an **encrypted compaction item** — "opaque and not intended to be human-interpretable"; `/responses/compact` returns a "canonical next context window" clients must pass on as-is (see [[references/openai-server-side-compaction|OpenAI Server-Side Compaction]]). OpenAI can continue from the compressed meaning; a different provider sees an unreadable string plus a recent suffix. ^[extracted]
- This is not technically necessary: Anthropic's server-side compaction returns a readable `content` field, allows custom summarization instructions, and the result can be inspected and passed to another model. Earendil's stance: a sealed artifact may perform better on the original model, but should *accompany* a readable handoff summary, not replace one — "Pi never passes this sort of information to another provider." ^[extracted]

## Subagents Come With Hidden Instructions

Multi-agent sessions are a tree of sessions, not one transcript. OpenAI's hosted Responses Multi-agent beta adds `multi_agent_call`, `multi_agent_call_output`, and `agent_message` items with **encrypted message payloads**; server-side compaction is implicitly enabled for every agent; reasoning summaries unsupported; root and subagent instructions are injected and uneditable. The open-source Codex client followed with the June 2026 commit "Encrypt multi-agent v2 message payloads" — the parent's tool argument arrives as ciphertext, and Codex's own `InterAgentCommunication.content` is empty: the exact task is absent from the readable rollout. An open Codex issue asks for a separate readable audit copy. ^[extracted]

## "Most People Do Not Switch Models Mid-Session"

Switching is rare — but the *option* matters: model retirement, service outages, price changes, policy blocks (e.g. Fable), confidential phases that must run locally, and auditors reconstructing what happened. Agents are making sessions far longer (days of decisions; personal assistants accumulating years of transcripts). The option to leave also creates provider discipline — competing on quality, price, reliability, and trust instead of lock-in. ^[extracted]

## What a Portable Inference API Should Promise

1. **The local event log is canonical** — server storage may mirror or accelerate it, but the client can reconstruct the session without dereferencing server IDs.
2. **Storage is explicit** — `store: false` should be easy, documented, and preferably the default; features requiring retention must say so at the point of use.
3. **No opaque state** — everything the model saw and did must be representable in the portable transcript.

## Concepts

- [[concepts/session-portability|Session Portability]] — the concept page for this essay's framework
- [[concepts/prompt-caching|Prompt Caching]] — provider-side caches are the original non-portable state
- [[concepts/context-engineering|Context Engineering]] — summary quality determines what survives a move
- [[concepts/agent-memory|Agent Memory]] — who owns what the agent remembers

## Entities

- [[entities/earendil|Earendil]] — publisher; the essay states Pi's policy of never forwarding opaque compaction state
- [[entities/pi|Pi]] — the harness whose plain-text compaction summaries keep sessions portable
- [[entities/openai|OpenAI]] — Responses API storage defaults, encrypted compaction, sealed multi-agent messages
- [[entities/anthropic|Anthropic]] — signature-encrypted thinking, readable server-side compaction

## Open Questions

- Whether provider-sealed reasoning materially improves continuation quality versus readable summaries — claimed plausible, not measured. ^[ambiguous]
- The post names an "open Codex issue" asking for readable audit copies of encrypted delegation — issue number not given. ^[ambiguous]

## Related

- [[misc/web-earendil-com-posts-compaction-in-pi|How Compaction Works in Pi]] — sibling post; plain-text summaries as the portability answer
- [[references/openai-server-side-compaction|OpenAI Server-Side Compaction]] — the sealed alternative
- [[references/prompt-caching-in-agents|Prompt Caching In Agents]] — earlier essay in the same series
