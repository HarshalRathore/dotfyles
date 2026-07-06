---
title: Rushabh
category: entities
tags: [person, Machine-Craft, ERA, multi-agent, GTM]
aliases: [rushabh, machine craft founder, era creator]
relationships:
  - target: '[[concepts/multi-agent-architecture]]'
    type: discussed
  - target: '[[concepts/agent-memory]]'
    type: discussed
  - target: '[[concepts/Karpathy-AutoResearch]]'
    type: discussed
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Founder of Machine Craft, built ERA -- a 36-agent system that runs the entire go-to-market for a 100-person manufacturing factory in India.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Rushabh

**Rushabh** runs **Machine Craft**, a 100-person manufacturing factory in India. With no data science team, no ML budget, and no GPUs, he built **ERA** -- a system of 36 AI agents that runs the company's entire go-to-market. He presented the story of how and why he built ERA at the AI Engineer World's Fair 2026. ^[extracted]

## Overview

Machine Craft makes thermoforming machines that heat up plastic sheets and shape them. The same core machine ends up making hydroponic farm trays, spa bathtubs, EV car panels, medical casings, and packaging -- seven totally different worlds with seven totally different buyers. For three generations, the company's knowledge lived in exactly three brains (his grandfather's, his father's, and his), making knowledge retention a genuinely existential risk. ^[extracted]

Rushabh's insight was to build a "brain" that held the company's knowledge -- not a chatbot, but a twin of the company. He fed it years of quotes, drawings, payment schedules, timelines, email threads: hundreds of gigabytes of their own private history. He never trained a model; he chopped the data into chunks, stored meaning as vectors and relationships, and let off-the-shelf models read and extract facts. ^[extracted]

## WF2026 Talk: The Factory That Taught Itself How to Remember

Rushabh presented ERA's architecture, which he modeled on biology: senses to figure out who it's talking to, a gut to digest documents into facts, a memory, a dream cycle, and an immune system to fight off bad information. He argued evolution already spent a billion years solving the problem of staying coherent over time. ^[extracted]

### Why 36 agents

Instead of one "genius mega prompt" that does everything badly, ERA is a pantheon of specialists each with exactly one job: ^[extracted]

- **Athena** -- runs the room
- **Prometheus** -- owns the sale
- **Plutus** -- does pricing
- **Hepastus** -- knows every machine spec cold
- **Vera** -- fact-checks everything
- **Memon** -- guards corrections (when a human fixes something, it stays fixed forever)

These agents hold meetings, pull in specialists, and argue with each other. A single answer emerges from the other side -- like a boardroom that never sleeps, never gets tired, and has no ego. ^[extracted]

### What ERA runs

ERA runs the entire front of the business: outbound emails that reference real context, account briefs built from cross-checked truths before a call, quotations with a swipe-left/swipe-right mode for outreach, reviving dead leads ("blast from the blast"), inbound replies, and determining whether a company is even a fit before wasting an hour. All from one Cursor tab. ^[extracted]

## Key Claims

- **"We weren't scared of the competitors, we were scared of forgetting"** -- the existential risk for a knowledge-intensive manufacturing company is losing institutional memory as people leave. ^[extracted]
- **"We never trained a model. No GPUs humming in the basement, no fine tuning."** The entire system works by chunking data and using off-the-shelf models with vector storage and graph relationships. ^[extracted]
- **One prompt that's supposed to do everything ends up doing everything badly** -- hence 36 agents instead of one. ^[extracted]
- ERA uses databases for vectors, a relationship graph, and CRM; three different model providers each picked for the job it's best at; tools for Google, document ingestion, and every communication channel. ^[extracted]

## Related

- [[concepts/multi-agent-architecture|Multi-Agent Architecture]] — the architectural pattern ERA embodies
- [[concepts/agent-memory|Agent Memory]] — the memory systems ERA uses
- [[concepts/Karpathy-AutoResearch|Karpathy AutoResearch]] — the self-improvement paradigm Rushabh discussed

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
