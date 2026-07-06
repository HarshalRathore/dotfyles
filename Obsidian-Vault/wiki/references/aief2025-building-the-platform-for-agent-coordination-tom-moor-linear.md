---
title: Building the platform for agent coordination — Tom Moor, Linear
tags:
- talk
- agents
- coordination
- ai-strategy
- linear
- developer-tools
- aief2025
- hybrid-search
- agent-platform
aliases:
- aief2025-agent-coordination-tom-moor
- tom-moor-agent-coordination
summary: Tom Moor, engineering leader at Linear, describes Linear's AI journey from skunkworks to agent coordination platform — covering search infrastructure, product intelligence, and treating agents as t...
sources:
- '[[sources/aief2025-building-the-platform-for-agent-coordination-—-tom-moor]]'
- 'https://www.youtube.com/watch?v=ug9iadmi2dg'
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
tier: supporting
created: 2026-07-04 00:00:00+00:00
updated: 2026-07-04 00:00:00+00:00
relationships:
- target:
  - - concepts/agent-coordination|Agent Coordination Platform
  type: related_to
- target:
  - - entities/linear|Linear
  type: related_to
- target:
  - - entities/tom-moor|Tom Moor
  type: related_to
category: references
---

# Building the Platform for Agent Coordination — Tom Moor, Linear

**Speaker:** Tom Moor, Engineering Leader at Linear
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=UG9IAdmi2Dg

## TL;DR

Tom Moor describes Linear's evolution from a simple issue tracker to an "operating system for engineering and product teams," and their parallel journey with AI — from a no-AI-experience skunkworks team in 2023 to a full agent coordination platform in 2025. The talk covers Linear's pragmatic AI philosophy (hidden features over AI branding), their search infrastructure evolution (PG Vector → Turbo Puffer + Cohere), and their vision of agents as "infinitely scalable cloud-based teammates."

## Problem / Motivation

Modern software teams need better ways to coordinate work. As AI agents become more capable, the coordination problem shifts from "can agents do useful work" to "how do agents fit into existing team structures and workflows?" Linear's challenge was building an AI strategy that adds real value without the noise of AI hype — and creating a platform where agents can operate alongside humans in the same communication space. ^[inferred]

## Method / Architecture

### AI Journey — Two Phases

**Phase 1 (2023):** Linear's skunkworks team (no AI experience) built foundational AI features:
- Similar issues via simple cosine similarity on PG Vector
- Natural language filters (type "bugs assigned to me in the last two weeks" → gets working filters)
- Slack-to-issue conversion that analyzes thread context

**Phase 2 (2024+):** After models improved (reasoning, multimodal, million-token context), Linear rebuilt infrastructure:
- Migrated from PG Vector to Turbo Puffer + Cohere embeddings
- Built Product Intelligence pipeline (query rewriting → hybrid search → re-ranking → deterministic rules)
- Launched customer feedback analysis, daily pulse with audio, issue-from-video

### Search Infrastructure

Linear's search evolved from a simple PG Vector deployment on GCP to a hybrid search system using Turbo Puffer as the index and Cohere embeddings (deemed better for their domain than OpenAI's). The backfill of "hundreds of millions of rows of embeddings" took significant time. ^[extracted]

### Agent Platform

Linear launched an agent coordination platform treating agents as "infinitely scalable cloud-based teammates." The platform makes Linear "pluggable" — enabling teams to integrate custom agents (like CodeGen) alongside human workflows. ^[extracted]

## Key Insights

1. **Pragmatic over hype:** "Small, pragmatic value adds" that users don't even realize are AI-powered beats obvious AI branding. ^[extracted]
2. **Quality bar matters:** Linear deliberately didn't ship a Copilot because "the quality wasn't there" — demonstrating restraint in AI feature shipping. ^[extracted]
3. **Foundation first:** Search infrastructure was the critical foundation that enabled all subsequent AI features. ^[extracted]
4. **Agents as teammates:** The framing of agents as team members (not tools) drives platform design toward coordination and communication. ^[extracted]
5. **Pluggability over pre-baked:** Every team is different; a pluggable platform serves more teams than a one-size-fits-all feature set. ^[extracted]

## Results / Impact

- Linear's customer feedback analysis reportedly "beat 90% of the candidates" in interview-level analysis quality
- Product Intelligence provides relationship maps (how and why issues are related) powering suggested labels, assignees, duplicates, and project recommendations
- Daily pulse with audio podcast enables async team members to stay informed passively
- Agent platform launched publicly, enabling integrations with coding agents like CodeGen ^[extracted]

## Limitations

- The transcript is incomplete (cuts off during the CodeGen demo)
- No quantitative metrics on feature adoption or user satisfaction
- No details on the agent platform's technical architecture beyond the high-level concept ^[inferred]

## Related

- [[concepts/agent-coordination|Agent Coordination Platform]]
- [[concepts/seamless-ai|Seamless AI]]
- [[concepts/product-intelligence|Product Intelligence]]
- [[concepts/customer-feedback-analysis|Customer Feedback Analysis]]
- [[concepts/daily-pulse|Daily Pulse]]
- [[concepts/issue-from-video|Issue from Video]]
- [[concepts/pluggable-ai-platform|Pluggable AI Platform]]
- [[concepts/vector-database-migration|Vector Database Migration]]
- [[concepts/ai-skunkworks|AI Skunkworks]]
- [[entities/linear|Linear]]
- [[entities/tom-moor|Tom Moor]]
