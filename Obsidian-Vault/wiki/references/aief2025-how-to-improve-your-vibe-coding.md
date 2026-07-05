---
title: "AIEF2025 - How to Improve your Vibe Coding — Ian Butler"
category: references
tags: [aief2025, vibe-coding, agent-evaluation, bug-detection, false-positives, context-management, thinking-models, bismuth]
summary: Ian Butler (CEO, Bismuth) presents benchmark results on AI agent bug-finding capabilities, practical tips for improving vibe coding through bug-focused rules, context management, and thinking models.
sources:
  - "AIEF2025 - How to Improve your Vibe Coding — Ian Butler - https://www.youtube.com/watch?v=g03m-WFEu1U"
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/ian-butler]]"
    type: about
  - target: "[[entities/bismuth]]"
    type: by
  - target: "[[concepts/vibe-coding]]"
    type: relates_to
  - target: "[[concepts/agent-evaluation-pipeline]]"
    type: relates_to
---

# How to Improve your Vibe Coding — Ian Butler

**Speaker:** Ian Butler, CEO of Bismuth
**Event:** AI Engineer World's Fair 2025 (AIEF2025)
**Video:** https://www.youtube.com/watch?v=g03m-WFEu1U

## TL;DR

Ian Butler presents findings from months of benchmarking AI agents on bug-finding capabilities. The core thesis: current agents have unacceptably low true positive rates for bug detection, creating alert fatigue and eroding trust. Three practical levers for improving vibe coding: bug-focused rules, context management, and thinking models. ^[extracted]

## Problem Statement

- Agents have a low overall find rate for bugs with significant false positive rates
- Cursor and Devon have less than 10% true positive rate for finding bugs
- 3 out of 6 agents on the SM100 benchmark had 10% or less true positive rate out of 900+ reports
- One agent gave 70 issues for a single task, all false positives
- Agents struggle with needle-in-a-haystack navigation across larger codebases
- Cursor had a 97% false positive rate across 100+ repos and 1,200+ issues ^[extracted]

## Three Levers for Improvement

### 1. Bug-Focused Rules

- Provide scoped instructions via rules files with additional detail on security issues, logical bugs
- Feed OWASP Top 10 to bias the model toward security considerations
- Be explicit about bug classes (SQL injection, prototype pollution, off-by-one errors) rather than vague "find bugs" requests
- Require fixed validations: tests must pass before changes enter the codebase
- Structured rules eliminate vague bug-check requests and reduce alert fatigue ^[extracted]

### 2. Context Management

- Agents lose logical links to code they've already read over time
- Their ability to reason across a codebase degrades significantly
- When agents reach context limits, they summarize or compact files, reducing bug detection ability
- Practical strategies: feed diffs of changed code, protect key files from summarization, ask agents to build component inventories (classes, variables, usage patterns) ^[extracted]

### 3. Thinking Models

- Thinking models are significantly better at finding bugs than non-thinking models
- Thought traces show agents expanding across multiple considerations before diving deeper
- They find deeper bugs that non-thinking models miss
- However, even thinking models have limitations: high run-to-run variability, not holistically analyzing files ^[extracted]

## Benchmark: SM100

Bismuth's SM100 benchmark evaluated AI agent bug-finding capabilities across 100+ repositories. Full methodology, results, and data exploration available at bismuth.sh. ^[extracted]

## Key Entities

- [[entities/ian-butler|Ian Butler]] — Speaker, CEO of Bismuth
- [[entities/bismuth|Bismuth]] — Agent debugging solution, SM100 benchmark publisher
- OWASP — World's most popular security authority for bugs
- Cursor, Devon — Agents evaluated in the benchmark
