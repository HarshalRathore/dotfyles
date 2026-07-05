---
title: "AI Powered Entomology: Lessons from Millions of AI Code Reviews — Tomas Reimers, Graphite (AIEF2025)"
category: references
tags: [ai-engineering, code-review, bug-taxonomy, llm-evaluation, aief2025]
aliases: [AI powered entomology, Graphite bug taxonomy, AI code review bug types]
relationships:
  - target: "[[concepts/bug-taxonomy]]"
    type: articulates
  - target: "[[concepts/tribal-knowledge]]"
    type: discusses
  - target: "[[concepts/code-cleanliness]]"
    type: discusses
  - target: "[[concepts/code-review-feedback-quality]]"
    type: articulates
  - target: "[[entities/graphite]]"
    type: describes
  - target: "[[entities/tomas-reimers]]"
    type: describes
sources:
  - "[[sources/watchv=tswqekftnaw]]"
summary: "Tomas Reimers presents a 2D taxonomy of code review comments based on what LLMs can catch and what humans want to receive, revealing that tribal knowledge and codebase conventions are the hardest categories for AI to handle."
provenance:
  extracted: 0.70
  inferred: 0.20
  ambiguous: 0.10
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AI Powered Entomology: Lessons from Millions of AI Code Reviews — Tomas Reimers, Graphite

> "Entomology is the study of bugs. It's something that is very near and dear to our heart and part of what our product does." — Tomas Reimers

## Overview

At AIEF2025, Tomas Reimers (co-founder of [[entities/graphite|Graphite]]) presented findings from analyzing 10,000 code review comments across their own codebase and open-source projects, classified by LLMs across a 2D framework. The core insight: code review comments fall into distinct categories based on two axes — what LLMs can catch and what humans want to receive — and the hardest categories for AI are those requiring tribal knowledge and codebase-specific conventions.

## Key Findings

### The Bug Taxonomy

Six categories of code review comments were identified, mapped on a 2D chart:

| Category | LLMs can catch? | Humans want to receive? |
|---|---|---|
| **Bugs** (logical inconsistencies) | Yes | Yes |
| **Accidentally committed code** | Yes | Yes |
| **Performance and security concerns** | Yes | Yes |
| **Documentation mismatches** (code says one thing, does another) | Yes | Yes |
| **Stylistic changes** (pattern deviations) | Yes | Yes |
| **Tribal knowledge** (we used to do it this way because...) | No | Yes |
| **Code cleanliness and best practices** (add tests, extract functions) | Yes | No |

### The Human-LLM Reception Gap

A critical discovery came from comparing developer and designer responses to past review comments. Developers were on the same page about which comments were acceptable from an LLM and which were not, but designers were baffled by the distinction. The pattern: a comment that feels pedantic and frustrating from an LLM is welcomed from a human reviewer. This is a fundamental asymmetry in how code review feedback is perceived.

### Measuring LLM Performance in Code Review

Graphite implemented a two-signal measurement system:

- **Upvote/downvote reactions** — Detect when LLMs are hallucinating or extending beyond their capabilities. A spike in downvotes signals the LLM is overreaching.
- **Acceptance rate** — ~52% for Diamond's AI comments vs ~45-50% for human comments, with a <4% downvote rate.

The harder signal to measure was "humans want to receive" — Graphite's approach uses the reaction system combined with prompt engineering to constrain LLM output to only what's within its capacity and what humans want.

### Design Principles

The talk emphasized that LLMs mimic what they're asked to do. When prompted to generate code review comments, LLMs produce everything within their capability AND everything outside it. The solution is to update prompts to only trigger comments that are both within the LLM's capacity AND that humans want to receive — the "top right quadrant" of the taxonomy.

## People

- [[entities/tomas-reimers|Tomas Reimers]] — Speaker (co-founder of [[entities/graphite|Graphite]])

## Related

- [[concepts/bug-taxonomy|Bug Taxonomy]] — The 2D classification framework from this talk
- [[concepts/tribal-knowledge|Tribal Knowledge]] — Knowledge in senior developers' heads that LLMs cannot access
- [[concepts/code-cleanliness|Code Cleanliness]] — Best-practice comments humans don't want from LLMs
- [[concepts/code-review-feedback-quality|Code Review Feedback Quality]] — The 2D framework for evaluating review comments
- [[concepts/high-signal-low-noise|High Signal, Low Noise]] — Related quality principle for AI review systems
- [[concepts/self-driving-code-review|Self-Driving Code Review]] — Graphite's Diamond achieves 52% acceptance rate
- [[entities/graphite|Graphite]] — Company building Diamond AI code reviewer
- [[references/aief2025-dont-get-one-shotted-tomas-reimers-graphite|Don't Get One-Shotted]] — Reimers' other AIEF2025 talk on the outer loop bottleneck
