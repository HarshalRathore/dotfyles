---
title: The New Code — Sean Grove, OpenAI
tags:
- reference
- talk
- ai-engineer
- specification
- alignment
- openai
sources:
- 'https://www.youtube.com/watch?v=8rabwkrsec4'
summary: Sean Grove presents the case for specifications as the new code — arguing that written specifications capturing intent and values are the most valuable artifact in AI engineering, with the OpenAI M...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.4
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# The New Code — Sean Grove, OpenAI

> **Event:** AI Engineer World's Fair 2025
> **Speaker:** [[entities/sean-grove|Sean Grove]], Alignment Research, OpenAI
> **Source:** [YouTube](https://www.youtube.com/watch?v=8rABwKRsec4)

## Overview

Sean Grove argues that written specifications — not code — are the most valuable professional artifact in AI engineering. Code is a lossy projection from the specification, capturing only 10–20% of the total value an engineer produces. The other 80–90% is structured communication: talking to users, distilling requirements, planning, sharing, testing, and verifying. As AI models advance, the scarce skill becomes writing specifications that fully capture intent and values. ^[extracted]

## Key Concepts

### Code vs Communication

Code is only 10–20% of the value an engineer brings. The rest is structured communication — talking to users, distilling stories, ideating, planning, sharing, translating, testing, and verifying. ^[extracted]

"The more advanced AI models get, the more we are all going to starkly feel this bottleneck. Because in the near future, the person who communicates most effectively is the most valuable programmer. And literally, if you can communicate effectively, you can program." ^[extracted]

### The Vibe Coding Paradox

Vibe coding feels good because it is "fundamentally about communication first" — the code is a downstream artifact. But we treat communication as ephemeral: we throw away the prompts and keep the generated code. ^[extracted]

This is "like you shred the source and then you very carefully version control the binary." ^[extracted]

### The Model Spec

OpenAI's Model Spec is a living document that "tries to clearly and unambiguously express the intentions and values that OpenAI hopes to imbue its models with." ^[extracted]

It is:
- Just a collection of Markdown files
- Human readable, versioned, change logged
- Contributed to by product, legal, safety, research, and policy teams — not just engineers
- Structured with clause IDs (e.g., SY73) that link to files containing "one or more challenging prompts for this exact clause" — encoding success criteria directly in the document ^[extracted]

### Sycophancy Case Study (GPT-4o)

When GPT-4o exhibited extreme sycophancy (agreeing with user claims at the expense of impartial truth), the model spec served as a trust anchor: "if the model specification is our agreed upon set of intentions and values, and the behavior doesn't align with that, then this must be a bug." ^[extracted] The spec aligned humans on what was expected versus what happened.

### Deliberative Alignment

A technique for automatically aligning a model to a specification:
1. Take the specification and a set of challenging input prompts
2. Sample from the model under test
3. Give the response, original prompt, and policy to a grader model
4. Ask it to score the response according to the specification
5. Reinforce the weights based on the score

This moves the specification "from inference time compute and actually pushing down into the weights of the model so that the model actually feels your policy and is able to sort of muscle memory style apply it." ^[extracted]

The specification can cover code style, testing requirements, safety requirements — anything.

### Specs as Code

Specifications share key properties with code: they compose, are executable (via deliberative alignment), are testable (each clause has test prompts), have interfaces, and can be shipped as modules. ^[extracted]

### Lawmakers as Programmers

The US Constitution is "literally a national model specification": ^[extracted]
- Written text that serves as clear policy
- Versioned with amendments
- Judicial review as "a grader grading a situation against the policy"
- Precedent as "input–output pairs that serve as unit tests"

### The Future IDE = Integrated Thought Clarifier

An IDE for specifications would be "an integrated thought clarifier" — pulling out ambiguity and asking authors to clarify their intent. ^[extracted]

### The Open Challenge

"Aligning agents at scale" — what is "both amenable and in desperate need of specification." ^[extracted]

## Open Questions

- What does an "Integrated Development Environment" for specifications look like?
- Can specifications scale to cover the full complexity of aligning agent systems?
- How do you detect and resolve conflicts between specifications from different departments or stakeholders?
- What is the boundary between specification-governed behavior and emergent model behavior?

## Pages Created from This Source

- [[concepts/specifications-as-code|Specifications as Code]]
- [[concepts/deliberative-alignment|Deliberative Alignment]]
- [[entities/sean-grove|Sean Grove]]

## Sources

- [YouTube: The New Code — Sean Grove, OpenAI](https://www.youtube.com/watch?v=8rABwKRsec4)
