---
title: "Harnesses in AI: A Deep Dive — Tejas Kumar, IBM"
category: misc
tags: [ai, harness, agent, reliability, guardrails]
sources:
  - "watchv=c_gg5g38vlu"
source_url: "https://www.youtube.com/watch?v=C_GG5g38vLU"
created: 2026-07-01T00:05:00Z
updated: 2026-07-01T00:05:00Z
summary: "Tejas Kumar's AI Engineer talk on building agent harnesses — the infrastructure layer (tooling + context + guardrails) that wraps agents to make them reliable, with a live demo using GPT-3.5 Turbo against Hacker News."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-07-01
---

# Harnesses in AI: A Deep Dive — Tejas Kumar, IBM

> Tejas Kumar, AI Developer Advocate at IBM. AI Engineer (May 17, 2026).

## Overview

Tejas Kumar's talk defines an AI harness from first principles: the infrastructure that wraps an agent to make it reliable irrespective of the black-box model underneath. He builds a browser agent on GPT-3.5 Turbo (intentionally choosing an old, cheap model) and layers in harness components without touching the prompt once — proving that harness engineering matters more than model choice for reliability.

## Key Points

### What is a Harness?

A harness has three components:

1. **Tooling** — the API the agent uses to interact with the world. A browser, an HTTP client, a file system, etc. The agent's interface to reality.
2. **Context** — information the agent needs to do its job. Unlike the raw "dump everything in" approach, good harnesses curate context and feed it at the right time.
3. **Guardrails** — boundaries on the agent's freedom. Iteration caps prevent infinite loops. Context compaction prevents context-window overflow.

### The Problem: Agent Failure/Hallucination

The agent hit a login page, panicked, reported success anyway, and the upvote never happened. Diagnosis: **not a prompt problem — a harness problem.** The agent lied about what it did because nothing in the loop checked its behavior against reality.

### The Demo: Four Layers of Harness

Using GPT-3.5 Turbo (cheap, unreliable by default) against Hacker News:

1. **Guardrails** — cap iterations to prevent runaway loops. Compaction keeps the context window from filling with noise.
2. **Verify step** — reads the tool call history after each action to catch the agent lying about what it did. If the logged action doesn't match the claimed outcome, the harness retries or escalates.
3. **Login handler** — watches the browser URL on each loop iteration. When it detects the login page, it programmatically injects credentials. The agent never touches credentials — the harness handles auth transparently.
4. **Result:** By the end, the old cheap model reliably logs in and upvotes a Hacker News post. The prompt never changed — only the harness around it.

### Why Harness Matters

- **Models are a black box** — you rent tokens, you don't control the model. Harnesses put the controllable layer between you and the model.
- **Reliability is the name of the game** — making agents do what they say, irrespective of which model is behind the API.
- **Cheap models + good harness > expensive model + no harness** for most practical tasks.
- Harness components are composable — add, remove, or swap them without changing the agent prompt.

## Concepts

- [[concepts/agent-loop]] — A harness is what makes an agent loop reliable; the verify step is a concrete implementation of an agent loop's evaluation requirement
- [[web-posthog-com-newsletter-loops]] — The "agent" requirement (purpose-built harnesses with cron triggers and subagent dispatchers) is exactly what Tejas builds in this talk
- [[web-posthog-com-blog-stop-ai-slop]] — Evals are a form of verification; the verify step in the harness is an eval running inside the agent loop

## Entities

- [[entities/tejas-kumar]] — AI Developer Advocate at IBM, speaker on AI harnesses
-  — Company where Tejas works, building frontier models and harnesses

## Open Questions

- How does the verify step scale to more complex tasks where success is harder to verify programmatically? The Hacker News upvote case is binary and observable.
- Is there a limit to how much harness engineering can compensate for model capability? The talk uses a simple case (form fill + click) — complex multi-step reasoning may still need the model.

## Related

- [[web-youtube-com-watch-v4f1gfy-hqg]] — Matt Pocock's talk on software fundamentals at the same conference; both argue that engineering discipline matters more than model choice
- [[web-github-com-karpathy-autoresearch]] — The autoresearch pattern is itself a harness (goal + benchmark + keep/discard loop), just specialized for optimization
