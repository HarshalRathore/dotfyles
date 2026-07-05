---
title: "Code is an Artifact, Not the Job"
tags:
  - software-engineering
  - philosophy
  - ai-engineering
  - production
aliases:
  - code artifact not job
  - code generation vs software engineering
relationships:
  - target: "[[concepts/burden-of-generated-code]]"
    type: related_to
  - target: "[[concepts/code-review-primary-skill]]"
    type: related_to
  - target: "[[concepts/vibe-coding-origins]]"
    type: contradicts
  - target: "[[concepts/specifications-as-code]]"
    type: related_to
sources:
  - "[[sources/watchv=dc3qoa9wone]]"
summary: "The thesis that generating code is not the same as software engineering — code is the output artifact, while the real work is making thousands of design decisions about architecture, trade-offs, and system behavior."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Code is an Artifact, Not the Job

A framing articulated by [[entities/chris-kelly|Chris Kelly]] at AIEF2025: drawing an analogy to architecture, where blueprints are an artifact of being an architect but not the job itself. Software engineering is likewise about more than code — it involves thousands of decisions per project about architecture, packages, trade-offs, and system behavior that code generation alone cannot address. ^[extracted]

## The Analogy

- **Architects** produce blueprints, but their real job is designing buildings — making structural, aesthetic, and practical decisions.
- **Software engineers** produce code, but their real job is designing systems — making architectural, performance, security, and maintainability decisions.
- **LLMs generate code** but do not make these decisions — they generate text that reflects patterns in training data, not deliberate engineering judgment. ^[extracted]

## Implications for AI Coding

- Evaluating AI tools by lines of code generated misses the point — the value is in correct decisions, not output volume. ^[inferred]
- Code review becomes more important, not less, because the generated code must be evaluated for decision quality, not just syntactic correctness. ^[inferred]
- AI-generated code that looks right but makes wrong architectural decisions is worse than no code at all — it introduces maintenance burden without engineering judgment. ^[inferred]

## Related

- [[concepts/burden-of-generated-code|Burden of Generated Code]] — Every line of code carries maintenance cost, regardless of how it was generated
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — The skill that evaluates the decisions embedded in code
- [[concepts/vibe-coding-origins|Vibe Coding Origins]] — The "not examining code" practice this thesis directly contradicts
- [[concepts/specifications-as-code|Specifications as Code]] — Related framing: prompts are the real specification, code is compiled output
- [[entities/chris-kelly|Chris Kelly]] — Primary articulator
- [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment]] — Source talk
