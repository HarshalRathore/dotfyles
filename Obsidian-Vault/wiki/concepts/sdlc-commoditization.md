---
title: "SDLC Commoditization in AI"
tags:
  - sdlc
  - commoditization
  - ai-engineering
  - production
  - evals
  - security
sources:
  - "[[sources/watchv=ihkyfhu6jey]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# SDLC Commoditization in AI

The observation that the **early stages of the Software Development Lifecycle (SDLC)** are increasingly becoming commodity/free-tier in AI engineering, while the **later stages** (evals, security, production) represent the real engineering value.

## The Insight

Proposed by [[entities/swyx|swyx]] at AIEF2025, building on insights from [[entities/ankur|Ankur]] (CEO of [[entities/braintrust|Braintrust]), this framework divides the AI SDLC into two zones:

### Commodity Zone (Early Stages)
- **LLMs** — becoming free-tier, commoditized
- **Monitoring** — becoming free-tier, commoditized
- **RAG** — becoming free-tier, commoditized

These are the "free" parts. You only start paying real costs when you move past demos into production.

### Real Engineering Zone (Later Stages)
- **Evals** — the hard engineering work of measuring quality
- **Security orchestration** — securing AI systems in production
- **Production-grade work** — making real money from customers

This is where the value is created and where the real difficulty lies.

## The Shift from Demos to Production

swyx framed AIEF2025 as pushing AI engineering "from demos into production." The conference added tracks specifically focused on evals, security, and production engineering — the areas where the real work happens once the commodity tools are in place.

## Relationship to Standard Models

The SDLC commoditization thesis is one of the candidate **standard models** for AI engineering. It describes a structural shift in where value is created in AI application development — moving from the easy parts (getting an LLM to work) to the hard parts (making it reliable, secure, and valuable in production).

## Related

- [[concepts/standard-models-ai-engineering]] — SDLC commoditization as a candidate standard model
- [[concepts/evaluation-first-development]] — Evals as the real engineering work
- [[concepts/agent-evaluation-pipeline]] — Production evals as the hard engineering
- [[references/aief2025-designing-ai-intensive-applications-swyx]] — Full keynote introducing the insight
