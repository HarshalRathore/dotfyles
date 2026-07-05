---
title: "Bug-Focused Rules"
category: concepts
tags: [agent-rules, bug-detection, security, owasp, vibe-coding, aief2025]
summary: Structured rules files that prime AI agents to find specific classes of bugs — using OWASP Top 10, explicit bug class naming, and required test validation — to reduce false positives and alert fatigue.
sources:
  - "AIEF2025 - How to Improve your Vibe Coding — Ian Butler - https://www.youtube.com/watch?v=g03m-WFEu1U"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vibe-coding]]"
    type: improves
  - target: "[[concepts/alert-fatigue-ai-agents]]"
    type: reduces
  - target: "[[concepts/agent-evaluation-pipeline]]"
    type: complements
---

# Bug-Focused Rules

Bug-focused rules are structured instruction files that prime AI coding agents to find and fix specific classes of bugs in codebases, rather than issuing vague "find bugs" requests. ^[extracted]

## Why Rules Matter

Without structured rules, agents produce excessive false positives and suffer from alert fatigue. In Bismuth's SM100 benchmark, Cursor generated 1,200+ issues across 100+ repos with a 97% false positive rate — no developer would review all of them. ^[extracted] Structured rules eliminate vague bug-check requests and prime agents for higher quality output. ^[extracted]

## Three Components

### 1. Security Context (OWASP Top 10)

Feed the OWASP Top 10 security risks into the agent's rules file. This biases the model to consider security issues when examining code. Without security or bug-related context, agent performance drops significantly. ^[extracted]

### 2. Explicit Bug Class Naming

Specify exact classes of bugs to look for: SQL injection, prototype pollution, off-by-one errors, protocol pollution. This primes the model to focus on specific patterns rather than searching broadly. ^[extracted]

### 3. Required Test Validation

Require that the agent writes and passes tests before changes enter the codebase. This ensures reported bugs are actually fixed, not just flagged. ^[extracted]

## Relationship to Other Concepts

Bug-focused rules are a form of structured guidance for agents, complementary to [[concepts/agent-rails|Agent Rails]] (which constrains agents to project context and coding style) and [[concepts/agent-evaluation-pipeline|Agent Evaluation Pipeline]] (which provides automated quality gates). ^[inferred]
