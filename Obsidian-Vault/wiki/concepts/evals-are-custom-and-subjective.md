---
title: "Evals Are Custom and Subjective"
category: concepts
tags:
  - evals
  - evaluation
  - custom-evals
  - subjective-evaluation
  - ai-evaluation
aliases:
  - custom-evaluation
  - eval-subjectivity
sources:
  - "AIEF2025 - [Full Workshop] Building Metrics that actually work — David Karam, Pi Labs (fmr Google Search) - https://www.youtube.com/watch?v=jxrGodnopHo"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/eval-driven-development|Eval-Driven Development]]"
    type: motivates
  - target: "[[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]]"
    type: extends
  - target: "[[concepts/domain-specific-evals|Domain-Specific Evals]]"
    type: relates_to
---

# Evals Are Custom and Subjective

Unlike traditional software testing, which has established frameworks and reusable patterns, AI evaluation is custom and subjective for each specific use case. There are no copy-paste evals — every team must build their evaluation infrastructure from scratch. ^[extracted]

## The Contrast with Testing

In traditional software development:
- Testing frameworks (JUnit, pytest, etc.) provide reusable patterns
- Test code can be shared across projects
- Best practices for test design exist and are well-established

In AI evaluation:
- Each application has unique quality criteria
- Evals cannot be copy-pasted between projects
- No established best practices or reusable frameworks
- Every eval must be designed for the specific use case

## Why Evals Can't Be Reused

1. **Different quality dimensions** — Each AI application has different success criteria
2. **Different output formats** — Text, code, images, actions — each requires different evaluation approaches
3. **Different user expectations** — Quality thresholds vary by domain and use case
4. **Different stochastic behavior** — Each model/system has different failure modes

## Implications

This custom, subjective nature of evals is the root cause of the evals labor problem: since nothing can be reused, every team faces the same setup cost from day one. ^[extracted]

## Related

- [[concepts/evals-labor-problem|Evals Labor Problem]] — The cost consequence of custom evals
- [[concepts/evals-are-not-unit-tests|Evals Are Not Unit Tests]] — Why evals resist standardization
- [[concepts/domain-specific-evals|Domain-Specific Evals]] — Specialized eval approaches for regulated fields
- [[concepts/eval-driven-development|Eval-Driven Development]] — Methodology for building custom evals early
