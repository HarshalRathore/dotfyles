---
title: "Create-Refine Loop"
tags:
  - ai-engineering
  - workflow
  - prompt-engineering
  - methodology
aliases:
  - plan-create-refine loop
  - Kelly loop
relationships:
  - target: "[[concepts/context-engineering]]"
    type: related_to
  - target: "[[concepts/code-review-primary-skill]]"
    type: related_to
  - target: "[[concepts/agent-loop]]"
    type: related_to
  - target: "[[concepts/evaluation-first-development]]"
    type: extends
sources:
  - "[[sources/watchv=dc3qoa9wone]]"
summary: "A three-phase iterative workflow for productive AI coding — Create a plan document, have the AI execute against the plan, then refine the output — repeated as a loop."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Create-Refine Loop

A workflow methodology for AI-assisted coding described by [[entities/chris-kelly|Chris Kelly]] at AIEF2025. The loop separates planning from generation, using a written document as the persistent interface between human intent and AI execution. ^[extracted]

## The Three Phases

1. **Create** — Write a specification document (markdown file) that lays out the plan. Have the LLM help generate this document. The document is saved as a persistent artifact. ^[extracted]
2. **Refine** — Edit the plan document. Make tweaks, adjust scope, clarify intent. The document captures the refined understanding before any code is generated. ^[extracted]
3. **Create (Exec)** — Have the agent run against the plan document to generate the actual code. The document becomes context for the generation step. ^[extracted]
4. **Refine (Tweak)** — Use code completions or manual edits to adjust the generated output. ^[extracted]
5. Loop — Repeat the plan-create-refine cycle. ^[extracted]

## Why It Works

- Separates specification from generation — the plan document is the spec, code is the compiled output
- The document becomes reusable context for subsequent AI interactions
- Lets engineers "get comfortable with how to prompt the LLM to get the code you want" through structured iteration
- Creates an artifact (the plan) that can be version controlled and refined independently of code

## Related

- [[concepts/context-engineering|Context Engineering]] — The plan document is a context engineering tool
- [[concepts/specifications-as-code|Specifications as Code]] — Related philosophy: the prompt/spec is the source, code is compiled output
- [[concepts/agent-loop|Agent Loop]] — The execution phase of the loop is an agent-driven loop
- [[concepts/evaluation-first-development|Evaluation-First Development]] — Refinement phase can include evaluation against criteria
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — The refinement phase relies on code review judgment
- [[entities/chris-kelly|Chris Kelly]] — Primary articulator
- [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment]] — Source talk
