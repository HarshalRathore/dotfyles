---
title: "Alert Fatigue in AI Agents"
category: concepts
tags: [alert-fatigue, false-positives, agent-trust, vibe-coding, aief2025]
summary: The phenomenon where AI coding agents generate excessive false positive bug reports, causing developer fatigue and eroding trust in agent outputs — leading to bugs going to production.
sources:
  - "AIEF2025 - How to Improve your Vibe Coding — Ian Butler - https://www.youtube.com/watch?v=g03m-WFEu1U"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vibe-coding]]"
    type: undermines
  - target: "[[concepts/bug-focused-rules]]"
    type: reduced_by
  - target: "[[concepts/agent-reliability-challenge]]"
    type: relates_to
---

# Alert Fatigue in AI Agents

Alert fatigue occurs when AI coding agents generate excessive false positive bug reports, causing developers to lose trust in agent outputs and ultimately ignore legitimate findings. ^[extracted]

## The Mechanism

1. Agent reports bugs with low true positive rate (Cursor: 97% false positive rate)
2. Developer cannot practically review all reports (1,200+ issues across 100+ repos)
3. Developer loses trust in agent's reliability
4. Real bugs go to production because the developer no longer trusts the agent

## Empirical Data

In Bismuth's SM100 benchmark:
- Cursor had a 97% false positive rate across 100+ repos and 1,200+ issues ^[extracted]
- One agent reported 70 issues for a single task, all false positives ^[extracted]
- 3 out of 6 agents had 10% or less true positive rate out of 900+ reports ^[extracted]

## Mitigation

[[concepts/bug-focused-rules|Bug-focused rules]] — structured rules files with explicit bug class naming, OWASP context, and required test validation — eliminate vague bug-check requests and reduce alert fatigue by priming agents for higher quality output. ^[extracted]
