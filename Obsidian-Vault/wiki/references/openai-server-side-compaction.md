---
title: OpenAI — Server-Side Compaction (Official Docs)
category: references
tags: [compaction, openai, responses-api, context-management, server-side]
aliases: [openai compaction, responses compact, server-side compaction]
relationships:
  - target: '[[entities/codex]]'
    type: related_to
  - target: '[[concepts/context-management-for-agents]]'
    type: implements
  - target: '[[concepts/prompt-caching]]'
    type: related_to
sources:
  - https://developers.openai.com/api/docs/guides/compaction
summary: "Guide to Responses API compaction — context_management.compact_threshold streaming compaction, stateless /responses/compact endpoint, encrypted item, chaining (arrays vs previous_response_id)."
provenance:
  extracted: 0.93
  inferred: 0.05
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:00:00Z
updated: 2026-08-13T15:00:00Z
---

# OpenAI — Server-Side Compaction

> **TL;DR:** OpenAI moves compaction into the inference provider. Two modes: (1) `context_management: [{type: "compaction", compact_threshold: N}]` on `POST /responses` — the server compacts mid-stream when the rendered token count crosses the threshold; (2) a standalone stateless `/responses/compact` endpoint that takes a full context window and returns a compacted one. Both return an **encrypted compaction item** that carries forward key prior state and reasoning with fewer tokens — opaque and not human-interpretable.

## Server-Side Compaction (in-stream)

Enable by setting `context_management` with `compact_threshold` on a Responses create request. When the rendered token count crosses the threshold, the server runs a compaction pass and emits a **compaction output item in the same stream**, then prunes context before continuing inference. No separate `/responses/compact` call needed. ^[extracted]

- **Chaining:** two supported patterns — stateless input-array chaining (append output items, including compaction items, to the next input array) or `previous_response_id` chaining (pass only the new user message each turn, carry the ID forward). ^[extracted]
- **Latency tip:** after appending output items, drop items before the most recent compaction item to keep requests smaller — the latest compaction item carries the needed context. Do not manually prune with `previous_response_id` chaining. ^[extracted]
- **ZDR note:** server-side compaction is Zero Data Retention-friendly when `store=false` is set on Responses create requests. ^[extracted]

## Standalone Compact Endpoint

`/responses/compact` is fully stateless and ZDR-friendly: send a full context window (messages, tools, other items — must fit the model's context window), receive a new compacted context window to pass to the next `/responses` call. The returned window generally contains **more than the compaction item** — retained items from the previous window too. **Do not prune the output**; it is the canonical next context window. ^[extracted]

## The Encrypted Compaction Item

The returned compacted window includes an **encrypted compaction item** that carries forward key prior state and reasoning using fewer tokens. It is **opaque and not intended to be human-interpretable**. ^[extracted] This is the provider-side counterpart to client-side summaries ([[references/pi-compaction-and-branch-summarization|Pi's structured summaries]]): hidden server-side prompts, model reasoning states, and other invisible machinery do the work — everything invisible to the client. ^[inferred]

## Example (Python)

```python
conversation = [{"type": "message", "role": "user", "content": "Let's begin a long coding task."}]
while keep_going:
    response = client.responses.create(
        model="gpt-5.3-codex",
        input=conversation,
        store=False,
        context_management=[{"type": "compaction", "compact_threshold": 200000}],
    )
    conversation.extend(response.output)
    conversation.append({"type": "message", "role": "user", "content": get_next_user_input()})
```

## Concepts

- [[concepts/context-management-for-agents|Context Management for Agents]] — the provider now owns part of the context-management stack
- [[concepts/context-engineering|Context Engineering]] — "everything invisible to users is used for the compaction requests" — the prompt side moves server-side ^[inferred]
- [[concepts/long-horizon-agency|Long-Horizon Agency]] — server-side compaction is a harness-independent enabler for long sessions

## Entities

- [[entities/codex|Codex]] — OpenAI's agent; its server compaction V1/V2 wrap these APIs (see [[misc/web-yingchao-dev-blog-compaction|Yingchao Dai's analysis]])
- [[entities/openai|OpenAI]]

## Open Questions

- Does the encrypted compaction item improve quality over client-side summaries — or just hide the lossiness? ^[ambiguous]
- How do providers price the hidden compaction passes (server-side prompts, reasoning states)? ^[ambiguous]

## Related

- [[misc/web-yingchao-dev-blog-compaction|Compaction — Yingchao Dai's cross-harness comparison]]
- [[references/pi-compaction-and-branch-summarization|Pi: Compaction & Branch Summarization]] — the client-side alternative
- [[references/prompt-caching-in-agents|Earendil: Prompt Caching In Agents]] — why compaction resets (not fails) the cache
