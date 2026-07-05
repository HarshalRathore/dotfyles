---
title: "AI SDR"
category: concepts
tags:
  - ai-sdr
  - sales
  - automation
  - email
  - agents
  - go-to-market
summary: An AI Sales Development Representative — an autonomous agent that performs SDR functions (lead sourcing, outreach, meeting booking) at scale, using RAG to personalize communications.
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/alice-ai-sdr]]"
    type: implements
  - target: "[[concepts/agentic-rag]]"
    type: uses
  - target: "[[concepts/knowledge-base-pattern]]"
    type: uses
---

# AI SDR

An AI Sales Development Representative (AI SDR) is an autonomous agent that performs the core functions of a human sales development representative: lead sourcing, multi-channel outreach, and meeting booking.

## Core Functions

A traditional SDR has three responsibilities:

1. **Lead sourcing** — Identifying potential customers
2. **Lead engagement** — Contacting and engaging leads across channels (primarily email)
3. **Meeting booking** — Scheduling meetings with interested leads

The two key metrics for SDR success are positive reply rate and meetings booked.

## AI SDR Scale

Human SDRs typically send 20–50 emails per day. AI SDRs can send orders of magnitude more — [[entities/alice-ai-sdr|Alice]] sends approximately 50,000 emails per day across hundreds of organizations, while maintaining personalization through RAG-based context retrieval.

## Knowledge-Driven Personalization

AI SDRs use a knowledge base (RAG pipeline) to personalize outreach. Instead of manually configured product catalogs, the AI agent proactively pulls seller context — products, case studies, pain points, value propositions, ideal customer profiles — from uploaded documents, websites, and media.

## Relationship to Human SDRs

The knowledge base approach is designed to emulate how human SDRs ramp up: you "dump" a bunch of documents on them, they learn the business over weeks or months, and you check in on their progress. The AI SDR accelerates this ramp time while maintaining the same fundamental knowledge requirements.

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
