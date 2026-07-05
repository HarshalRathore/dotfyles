---
title: "Haize Labs"
category: entities
tags: [company, ai-reliability, fuzz-testing, qa, evaluation, property-based-testing, haize]
summary: "Company founded by Leonard Tang focused on AI reliability through property-based testing and fuzz testing. Positions itself as a QA/eval company that pressure-tests AI systems before production deployment."
sources:
  - "[[sources/watchv=omgpvw8tbhc]]"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.90
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/fuzz-testing-ai]]"
    type: implements
  - target: "[[entities/leonard-tang]]"
    type: founded_by
---

# Haize Labs

Haize Labs is a company founded by [[entities/leonard-tang|Leonard Tang]] focused on AI reliability through property-based testing and fuzz testing. ^[extracted]

## Positioning

Tang describes Haize as "essentially a property-based testing company, or fuzz testing company" — though he notes they share technical similarities with AI security companies. He considers them "more of a QA company, an eval company in some sense." ^[extracted]

## Mission

Haize's approach to AI reliability: ^[extracted]

> "AI systems are extremely unreliable, they're hard to trust in practice, and you sort of need to pressure test them before you put them out into the wild."

Their solution: run large-scale optimization, simulation, and search before deployment to determine whether a system will behave as expected through a battery of tests.

## The Last Mile Problem

Haize addresses what Tang calls the "last mile problem in AI" — the gap between demo-ready/POC-ready systems and production-grade, enterprise-grade, reliable systems. ^[extracted] This gap has persisted for 2+ years since ChatGPT's launch, despite promises of autonomy, agency, and enterprise transformation.

## Core Technology

Haize's core technology is a fuzz testing loop: ^[extracted]

1. Simulate large-scale stimuli to send to AI applications
2. Collect responses
3. Judge, analyze, and score outputs
4. Use scores to guide the next round of search
5. Iterate until bugs are found or search budget is exhausted

## Name Etymology

Tang calls fuzz testing "hazing" — a play on the company name. "Haze" in this context means the process of pressure-testing AI systems through adversarial input generation. ^[extracted]

## Related Entities

- [[entities/leonard-tang|Leonard Tang]] — founder
- [[concepts/fuzz-testing-ai|Fuzz Testing in AI]] — core methodology
- [[concepts/ai-red-teaming|AI Red Teaming]] — related adversarial testing approach

## Sources

- AIEF2025 - Fuzzing in the GenAI Era — Leonard Tang, Haize Labs. https://www.youtube.com/watch?v=OMGPvW8TBHc
