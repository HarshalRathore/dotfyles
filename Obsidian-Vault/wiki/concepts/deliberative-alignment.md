---
title: Deliberative Alignment
tags:
- ai
- alignment
- specification
- training
- evaluation
- openai
aliases:
- spec-as-training-material
- specification-based alignment
- specification-guided alignment
relationships:
- target: '[[concepts/specifications-as-code]]'
  type: extends
- target: '[[concepts/evaluation-first-development]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=8rabwkrsec4'
summary: Technique for automatically aligning AI models to a written specification by using the specification as both training material and evaluation criteria — scoring model responses against the spec and...
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Deliberative Alignment

A technique developed at [[entities/openai|OpenAI]] for automatically aligning AI models to a written specification by using the specification document as both training material and evaluation criteria. ^[extracted] The method moves the specification from inference-time context (a system message) into the model's weights. ^[extracted]

## The Process

1. Take the specification (e.g., the OpenAI Model Spec) and a set of challenging input prompts
2. Sample responses from the model under test or training
3. Give the response, original prompt, and policy/specification to a grader model
4. Ask the grader to score the response for alignment with the specification
5. Based on the score, reinforce the model's weights — pushing the policy into the model's parameters ^[extracted]

## Key Properties

- **From context to weights** — rather than including the specification in the system prompt for every inference call (which uses compute budget that could go toward solving the actual problem), deliberative alignment embeds the policy so the model "feels your policy and is able to sort of muscle memory style apply it to the problem at hand." ^[extracted]
- **General-purpose** — the specification can cover code style, testing requirements, safety requirements, or any other behavioral guidelines. ^[extracted]
- **Composable** — different specifications from different departments can be combined and checked for consistency.
- **Self-testing** — each clause in the specification can have associated challenge prompts, making the spec itself testable.

## Relationship to Specifications as Code

Deliberative alignment is the technical mechanism that makes [[concepts/specifications-as-code|specifications executable]]. Without this technique, a specification is just a human document — useful for aligning humans but not models. Deliberative alignment closes the loop by making the specification a training and evaluation artifact. ^[inferred]

## Relationship to Evaluation-First Development

[[concepts/evaluation-first-development|Evaluation-first development]] focuses on application-level evals — prompts, RAG, logic — using an iterative loop of measure, inspect, fix, repeat. Deliberative alignment extends this to the model training level: rather than evaluating the application, it evaluates the model's behavioral alignment against a specification and reinforces compliance during training. ^[inferred]

## The Trust Anchor Function

When a model's behavior deviates from what the specification requires (as in OpenAI's GPT-4o sycophancy incident), the specification serves as the ground truth: if behavior does not match the spec, it is a bug. ^[extracted] This makes deliberative alignment not just a training technique but a governance mechanism — a spec that stakeholders have agreed on becomes the authoritative reference for evaluating model behavior.

## Related

- [[concepts/specifications-as-code|Specifications as Code]] — Specifications as the primary development artifact; deliberative alignment is the mechanism for making them machine-executable
- [[concepts/evaluation-first-development|Evaluation-First Development]] — Broader methodology for evaluation-driven AI quality; deliberative alignment extends this to the model training level
- [[entities/sean-grove|Sean Grove]] — Presented this technique at AI Engineer World's Fair 2025
- [[entities/openai|OpenAI]] — Where this technique was developed

## Open Questions

- How do you calibrate the grader model to avoid it sharing the same blind spots as the model under test?
- Can deliberative alignment handle specifications that evolve rapidly, or does retraining create a lag?
- What guarantees exist that embedding a spec into weights is faithful across all inputs?
- How do you handle conflicting specifications (e.g., safety and helpfulness) at the weights level?

## Sources

- [[references/the-new-code-sean-grove-openai|The New Code — Sean Grove, OpenAI (AI Engineer World's Fair 2025)]]
