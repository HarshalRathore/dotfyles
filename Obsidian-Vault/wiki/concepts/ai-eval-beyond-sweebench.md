---
title: AI Evals Beyond SweeBench
category: concepts
tags:
- eval
- benchmark
- sweebench
- windsurf
- sweeone
- software-engineering
- workflow
summary: 'The argument that AI coding evaluation must move beyond SweeBench-style code generation benchmarks to measure full software engineering workflows: mid-workflow assistance, PR completion, tool usage...'
sources:
- 'https://www.youtube.com/watch?v=jvunpl5qo8q'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AI Evals Beyond SweeBench

**AI Evals Beyond SweeBench** is the argument that evaluating AI coding models on SweeBench-style benchmarks — which measure clean "start-to-finish code generation" — is insufficient for measuring real-world AI coding capability. The industry needs benchmarks that evaluate full software engineering workflows: mid-workflow assistance, PR completion, tool usage, and real developer behavior. ^[extracted]

## The Problem with SweeBench

Hou argues that the industry's heavy focus on SweeBench and similar benchmarks misses the reality of software engineering. These benchmarks measure a clean paradigm: given a starting point and an intent, get to the end and pass all unit tests. While familiar, this doesn't capture how developers actually work. ^[extracted]

Real software engineering is "much messier" than clean benchmarks:
- Developers pick up tasks mid-workflow
- They deal with messy code-based states mid-commit
- They work with tools outside the editor
- They collaborate across multiple systems (Slack, GitHub, Figma, Jira)

## Windsurf's Alternative Benchmarks

Windsurf evaluates SweeOne on two benchmarks that better reflect real workflow participation: ^[extracted]

### End-to-End Task Benchmark
Given an intent and a starting codebase, complete the task and pass all unit tests — essentially tackling pull requests end-to-end. This is similar to SweeBench but contextualized within the Windsurf workflow.

### Conversational SweeTask Benchmark
How well the model assists when dropped into an existing user conversation or partially completed task. This tests mid-timeline integration — the ability to assist a developer who is already in the middle of work, rather than starting from scratch. ^[extracted]

The SweeTask benchmark produces a blended score of **helpfulness, efficiency, and correctness**, testing the model's ability to seamlessly integrate into Windsurf-style working. ^[extracted]

## Why This Matters

The evaluation model shapes the product. If benchmarks measure only code generation, products optimize for code generation. If benchmarks measure workflow participation, products optimize for the full developer experience — including context ingestion, tool integration, and mid-workflow assistance. ^[inferred]

Hou's point is that the future of AI coding is not "tokens in, tokens out" but a broader set of actions on a shared timeline. Evaluations must evolve to match. ^[inferred]

## Related

- [[concepts/software-engineering-model|Software Engineering Model]] — SweeOne's benchmarks exemplify this approach
- [[concepts/data-flywheel|Data Flywheel]] — User feedback signals inform what to evaluate
- [[concepts/shared-timeline|Shared Timeline]] — The workflow model evals must capture
- [[concepts/agent-evaluation-pipeline|Agent Evaluation Pipeline]] — Related evaluation concepts
