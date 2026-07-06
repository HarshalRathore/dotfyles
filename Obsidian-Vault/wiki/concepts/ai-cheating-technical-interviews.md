---
title: AI Cheating in Technical Interviews
category: concepts
tags:
- hiring
- ai-cheating
- technical-interviews
- ai-assistants
- recruitment
aliases:
- AI interview cheating
- cheating with AI interviews
- AI assistants in interviews
sources:
- AIEF2025 - How to Hire AI Engineers when EVERYONE is cheating with AI — Beth Glenfield, DevDay - https://www.youtube.com/watch?v=Zqu0VaJw3vo
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/simulation-based-hiring|Simulation-Based Hiring]]'
  type: addresses
- target: '[[concepts/ai-hiring-trade-offs|AI Hiring Trade-offs]]'
  type: related_to
- target: '[[entities/cluey|Cluey]]'
  type: relates_to
summary: AI Cheating in Technical Interviews
---

# AI Cheating in Technical Interviews

AI cheating in technical interviews refers to the widespread use of AI coding assistants by candidates during hiring assessments, rendering traditional coding puzzles unreliable as signals of engineering capability. ^[extracted]

## Scale of the Problem

The phenomenon is now mainstream:

- **Cluey** — a dedicated AI cheating service founded by an ex-Columbia student, raised $5.3M, heading toward $1M ARR ^[extracted]
- **LeeCo Wizard** — reports 93% success rates for Google and Meta interviews ^[extracted]
- **One in three interviews** now involve AI assistants ^[extracted]

As Beth Glenfield put it: "Whenever you're interviewing candidates, you're just interviewing for who has the best AI coding assistant." ^[extracted]

## Implications for Hiring

When everyone can use AI during a coding interview, the interview no longer measures coding ability — it measures tool access and prompt engineering skill. This creates two problems:

1. **False negatives** — talented candidates who don't use AI or use it poorly get filtered out
2. **False positives** — candidates who ace the interview via AI may not actually be able to ship AI products ^[extracted]

Sam Altman's tactical response was straightforward: "the tactical thing to do is to learn the best AI tools." ^[extracted] But this doesn't solve the hiring signal problem — it just acknowledges that the old signal is broken.

## Related

- [[concepts/simulation-based-hiring|Simulation-Based Hiring]] — Alternative approach that observes real AI collaboration
- [[concepts/ai-hiring-trade-offs|AI Hiring Trade-offs]] — Framework for evaluating AI hiring decisions
- [[entities/cluey|Cluey]] — Company that commercializes AI cheating services
- [[entities/sam-altman|Sam Altman]] — Advocated learning AI tools as the tactical response
