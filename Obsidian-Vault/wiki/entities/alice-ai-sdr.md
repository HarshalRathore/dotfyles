---
title: "Alice"
category: entities
tags:
  - ai-sdr
  - sales
  - email
  - digital-worker
  - 11x
  - agent
summary: Alice is 11x's AI Sales Development Representative — an AI agent that writes personalized outreach emails, sources leads, and books meetings. Sends ~50,000 emails/day across ~300 organizations.
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/11x]]"
    type: implements
  - target: "[[entities/julian-voice-agent]]"
    type: related_to
  - target: "[[concepts/ai-sdr]]"
    type: implements
  - target: "[[concepts/knowledge-base-pattern]]"
    type: uses
---

# Alice

Alice is an AI Sales Development Representative (SDR) built by [[entities/11x|11x]] as part of their digital worker platform for go-to-market organizations.

## Capabilities

Alice performs the three core functions of a human SDR:

1. **Lead sourcing** — Identifying potential customers to sell to
2. **Lead engagement** — Contacting and engaging leads across channels, primarily email
3. **Meeting booking** — Scheduling meetings with interested leads

Her two key performance metrics are positive replies and meetings booked.

## Scale

- Sends approximately **50,000 personalized emails per day** (compared to 20–50 for a human SDR)
- Runs campaigns for approximately **300 different business organizations**

## Knowledge Base

Alice's knowledge base is her "brain" — a RAG pipeline that lets her proactively pull seller context (products, case studies, pain points, value propositions, ICP) from uploaded documents, websites, and media. This replaced a manual "library" onboarding experience where sellers had to manually enter product details into a dashboard.

## Relationship to Other 11x Products

Alice works alongside **Julian**, 11x's voice agent, as part of the same digital worker platform. More workers are planned.

## Sources

- AIEF2025 talk: "Building Alice's Brain: an AI Sales Rep that Learns Like a Human" by Sherwood & Satwik, 11x
