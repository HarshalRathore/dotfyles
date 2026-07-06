---
title: "Leonard Tang"
category: entities
tags: [person, founder, haize, ai-reliability, fuzz-testing, qa, evaluation, speaker, aief2025]
summary: "Founder of Haize Labs, a property-based testing and fuzz testing company for AI reliability. Speaker at AI Engineer World's Fair 2025 on fuzzing in the GenAI era."
sources:
  - "https://www.youtube.com/watch?v=omgpvw8tbhc"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/haize-labs]]"
    type: founded
---

# Leonard Tang

Leonard Tang is the founder of [[entities/haize-labs|Haize Labs]], a company focused on AI reliability through property-based testing and fuzz testing. ^[extracted]

## Background

Tang describes Haize as "more of a QA company, an eval company" rather than an AI security company, though he acknowledges significant technical overlap. ^[extracted] He positions the company as specializing in property-based testing and fuzz testing (which he informally calls "hazing"). ^[extracted]

## AIEF2025 Talk

At AI Engineer World's Fair 2025, Tang delivered a talk titled "Fuzzing in the GenAI Era" covering: ^[extracted]

- The brittleness/Lipschitz discontinuity of GenAI systems
- Why standard evals fail to capture this brittleness
- Haize's approach to fuzz testing AI applications
- The challenges of LLM-as-judge scoring
- The philosophy of scaling judge time compute

## Key Ideas

Tang's central thesis: the core problem in building with GenAI is not non-determinism (which is manageable) but **brittleness** — the property that tiny input perturbations cause wildly different outputs. ^[extracted] This is the actual core property that makes building with AI difficult. ^[extracted]

## Related

- [[entities/haize-labs|Haize Labs]] — company founded by Tang
- [[concepts/fuzz-testing-ai|Fuzz Testing in AI]] — core methodology
- [[concepts/brittleness-lipschitz-discontinuity|Brittleness and Lipschitz Discontinuity]] — central thesis

## Sources

- AIEF2025 - Fuzzing in the GenAI Era — Leonard Tang, Haize Labs. https://www.youtube.com/watch?v=OMGPvW8TBHc
