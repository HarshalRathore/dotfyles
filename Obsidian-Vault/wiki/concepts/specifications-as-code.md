---
title: "Specifications as Code"
tags:
  - specification
  - ai-engineering
  - methodology
  - communication
  - alignment
aliases: [specs as code, specification-driven development, spec-first engineering]
relationships:
  - target: "[[concepts/deliberative-alignment]]"
    type: related_to
  - target: "[[concepts/vibe-coding-origins]]"
    type: extends
  - target: "[[concepts/evaluation-first-development]]"
    type: related_to
sources:
  - "[[sources/watchv=8rabwkrsec4]]"
summary: "Paradigm shift where written specifications — not generated code — are the primary development artifact, capturing full intent and values while serving as both human alignment document and machine-executable evaluation criteria."
provenance:
  extracted: 0.55
  inferred: 0.40
  ambiguous: 0.05
base_confidence: 0.40
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Specifications as Code

The thesis that written specifications — natural language documents capturing intent, values, and success criteria — are the most valuable artifact in AI engineering, not the code they produce. Code is a lossy projection from the specification; the specification is the source. ^[extracted] Articulated by [[entities/sean-grove|Sean Grove]] at AI Engineer World's Fair 2025.

## The Core Argument

Code represents only 10–20% of the value an engineering professional brings. The other 80–90% is structured communication: talking to users, distilling stories, ideating, planning, sharing, testing, and verifying. ^[extracted] As AI models advance and can translate natural language directly into working code, the bottleneck shifts from coding ability to communication ability. "The person who communicates most effectively is the most valuable programmer." ^[extracted]

## The Vibe Coding Paradox

In current [[concepts/vibe-coding-origins|vibe coding]] practice, the prompts (the real source of intent) are ephemeral — thrown away after use — while the generated code (the binary) is carefully version controlled. This inverts the correct relationship: prompts are the source specification, code is the compiled output. ^[extracted] It is "like you shred the source and then you very carefully version control the binary." ^[extracted]

## Properties of a Good Specification

A specification as code shares key properties with traditional source code: ^[extracted]

- **Composable** — specifications from different departments can be checked for consistency, analogous to type checking across modules. If department A's spec conflicts with department B's spec, the conflict should block publication.
- **Executable** — via [[concepts/deliberative-alignment|deliberative alignment]], the specification becomes both training material and evaluation criteria.
- **Testable** — each clause can have associated test prompts encoding success criteria, analogous to unit tests.
- **Lintable** — ambiguous language can be flagged before it confuses humans and models.
- **Versioned** — tracked with changelogs and amendments.
- **Multi-stakeholder** — not just engineers; product, legal, safety, research, and policy teams can all contribute to the same Markdown files.

## Engineering as Structured Communication

Engineering has never been about code. "Engineering is the precise exploration by humans of software solutions to human problems." ^[extracted] The work moves from "disparate machine encodings to a unified human encoding of how we actually solve these problems." ^[extracted]

## Universal Spec Authorship

Programmers align silicon via code specifications. Product managers align teams via product specifications. Lawmakers align humans via legal specifications. Anyone writing a prompt is writing a "proto-specification." ^[extracted] "Whether you realize it or not, you are spec authors in this world." ^[extracted]

## The Integrated Thought Clarifier

The future IDE for specifications would be "an integrated thought clarifier" — it detects ambiguity in specifications and asks authors to clarify, improving both human–human and human–model communication. ^[extracted]

## The Open Challenge

The domain most amenable to and in need of specification: "aligning agents at scale." ^[extracted]

## Relationship to Other Concepts

- [[concepts/deliberative-alignment|Deliberative Alignment]] — The technical mechanism for making specifications executable by embedding them in model weights
- [[concepts/vibe-coding-origins|Vibe Coding Origins]] — Current practice that inverts the spec–code relationship; specifications-as-code corrects this inversion
- [[concepts/evaluation-first-development|Evaluation-First Development]] — Spec clauses encode evaluation criteria, connecting specification-driven development with evaluation-driven quality
- [[concepts/prompt-is-a-bug|The Prompt Is a Bug]] — Related but different: prompt-as-bug says the prompt box is a failure of UX; specifications-as-code says the prompt is the valuable source artifact worth preserving
- [[concepts/beyond-chatbots|Beyond Chatbots]] — Another perspective on the evolution beyond prompt-based interfaces
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — Specs as a tool for making agent behavior reliable and predictable
- [[concepts/prompt-to-reward-function|Prompt-to-Reward Function]] — Related pattern of using natural language descriptions as executable specifications for reward functions

## Open Questions

- What does an IDE for specifications (an "Integrated Thought Clarifier") look like?
- How do you detect and resolve conflicts between specifications written by different teams?
- Can the spec-as-code pattern scale to the complexity of aligning multi-agent systems?
- What tools exist or need to be built for specification linting, testing, and versioning?

## Sources

- [[references/the-new-code-sean-grove-openai|The New Code — Sean Grove, OpenAI (AI Engineer World's Fair 2025)]]
