---
title: "Sequential Revision"
category: concepts
tags: [sequential-revision, self-correction, llm, inference-time-compute, iterative-improvement, aief2025]
aliases: [sequential revision, iterative revision, self-correction, model revision]
sources:
  - "https://www.youtube.com/watch?v=qludzkvfp6a"
summary: "Having an LLM review and correct its own previous output, iteratively improving. Mirrors how humans write, evaluate, and fix their own work."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/inference-time-compute|Inference-Time Compute Scaling]]"
    type: implements
  - target: "[[concepts/majority-voting-self-consistency|Majority Voting / Self-Consistency]]"
    type: related_to
  - target: "[[concepts/chain-of-thought|Chain-of-Thought]]"
    type: extends
  - target: "[[concepts/agentic-coding|Agentic Coding]]"
    type: applied_to
---

# Sequential Revision

**Sequential revision** is an inference-time technique where an LLM reviews and corrects its own previous output, iteratively improving its response. ^[extracted]

## The Human Analogy

Aakanksha Chowdhery illustrated this with a simple human behavior: we write a first answer, evaluate it, notice mistakes, and fix them. The question is: can LLMs do the same kind of revision — looking at previous revisions and improving consistently? ^[extracted]

## How It Works

1. The model generates an initial response
2. The model reviews its own output, identifying errors or improvements
3. The model produces a revised version
4. Steps 2-3 repeat for as many iterations as compute allows

Each revision builds on the previous one, with the model using its own reasoning to identify and fix mistakes. ^[inferred]

## Evidence

- Stanford research (publicly published) showed that pass@k (coverage score) on SWE-bench verified improves predictably with more samples, and sequential revision is a key mechanism ^[extracted]
- Techniques where models can verify their correct answer — in math or in programming where unit tests exist — show very clear gains ^[extracted]

## Applications

- **Autonomous coding** — Generate code, review it, fix bugs, verify with tests
- **Math reasoning** — Generate solution, check work, correct errors
- **Complex problem solving** — Multi-step tasks where early errors compound

## Relationship to Other Techniques

Sequential revision is one of two main approaches to [[concepts/inference-time-compute|inference-time compute scaling]], the other being [[concepts/majority-voting-self-consistency|majority voting]]. While majority voting compares independent samples, sequential revision improves a single output through self-correction. ^[inferred]

It extends [[concepts/chain-of-thought|chain-of-thought]] by adding a self-evaluation step after the initial reasoning. ^[inferred]

## Limitations

- **Compounding errors**: If the initial response has a fundamental error, the model may not catch it
- **Compute cost**: Each revision adds inference cost
- **Diminishing returns**: After a few iterations, improvements may plateau

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
