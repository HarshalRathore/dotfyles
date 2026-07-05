---
title: "Developer Outer Loop"
tags:
  - concept
  - software-engineering
  - workflow
  - code-review
  - cicd
aliases:
  - outer loop
  - inner loop and outer loop
  - inner/outer loop model
  - two-loop model
relationships:
  - target: "[[concepts/code-review-primary-skill]]"
    type: related_to
  - target: "[[concepts/issue-to-pr-pipeline]]"
    type: extends
  - target: "[[concepts/peer-programming]]"
    type: related_to
sources:
  - "[[sources/watchv=h6mrr5nbtza]]"
  - "[[sources/watchv=jvunpl5qo8q]]"
summary: "The two-loop model of software development: the inner loop (writing code) and the outer loop (testing, reviewing, merging, deploying). AI accelerates the inner loop dramatically, shifting the bottleneck to the outer loop — requiring AI-native tooling across the entire development lifecycle."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
---

# Developer Outer Loop

The developer outer loop, a model articulated by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025, describes the two-loop structure of software development and how AI is reshaping it. ^[extracted]

## The Two Loops

Software development has always operated in two loops: ^[extracted]

- **Inner loop** (development) — writing code, getting features to work, local iteration. This is where开发者 spend most of their focused time.
- **Outer loop** (review) — testing, reviewing, merging, and deploying code. This is the quality gate that ensures changes are safe and correct before reaching production.

## The AI-Induced Bottleneck Shift

AI tools ([[entities/cursor-ai|Cursor]], [[entities/github-copilot|Copilot]], [[entities/windsurf|Windsurf]], [[entities/v0|V0]], [[entities/bolt|Bolt]]) are dramatically accelerating the inner loop — nearly 46% of code on GitHub is written by Copilot, and AI tool adoption is near-universal among surveyed developers. ^[extracted]

However, the outer loop has not kept pace. Developers must now review, test, merge, and deploy higher volumes of code than ever before, but the tooling for these tasks has remained largely unchanged. The outer loop is rapidly becoming the bottleneck, and problems that previously only affected large companies (high PR volumes, merge queues, CI management) now affect organizations of all sizes. ^[extracted]

> "While the inner loop was getting sped up by AI, the outer loop was rapidly becoming the bottleneck." — Tomas Reimers ^[extracted]

## Requirements for a New Outer Loop

Reimers identifies four requirements for tooling that can handle the AI-accelerated inner loop: ^[extracted]

1. **Prioritization, tracking, and notifications** — Tools to manage the increased volume of pull requests and know what needs attention.
2. **Driver-assist review features** — AI-assisted code review that helps reviewers focus and streamline the process, rather than adding noise.
3. **Optimized CI pipelines and merge queues** — Infrastructure capable of handling the sheer volume of code changes from AI-accelerated development.
4. **Better deployment tools** — Faster, safer deployment mechanisms to match the increased velocity.

## Self-Driving Code Review

The solution Reimers proposes is AI-native outer loop tooling: specifically, self-driving code review where AI handles the manual, painful parts of review so developers can focus on what matters. [[entities/graphite|Graphite]]'s Diamond achieves a 52% AI comment acceptance rate (vs 45–50% for human comments), suggesting AI can match or exceed human review efficacy for routine code review. ^[extracted]

## Windsurf's Outer Loop Automation

Windsurf extends the outer loop beyond code review. Hou describes Windsurf's ability to open PRs via [[entities/github-copilot|GitHub MCP]] with context from previous PRs, run [[concepts/self-driving-code-review|Windsurf Reviews]] that automatically leave comments and suggest changes asynchronously, and deploy to Netlify with one-click custom tool integrations. ^[extracted] This represents the outer loop being fully automated — not just AI-assisted review but autonomous PR creation, review, and deployment. ^[inferred]

## AI Teammates Are Not Enough

An early hypothesis was that adding AI "teammates" (background agents, AI reviewers) to the existing workflow would suffice. Reimers concludes this is insufficient: the entire toolchain must be AI-native, not just the IDE. Adding AI agents to a non-AI-native outer loop toolchain still leaves the fundamental bottleneck unaddressed. ^[extracted]

## Relationship to the Create-Refine Loop

The developer outer loop model is complementary to the [[concepts/create-refine-loop|create-refine loop]] (articulated by Chris Kelly). Where the create-refine loop describes the inner-loop workflow for working with AI, the outer loop model describes the systemic challenge of code review at scale when the inner loop has been accelerated by AI. ^[inferred]

## Related

- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — The skill that becomes the critical constraint as AI code volume increases
- [[concepts/issue-to-pr-pipeline|Issue-to-PR Pipeline]] — Practical implementation of AI-assisted outer loop automation
- [[concepts/peer-programming|Peer Programming]] — Evolution from AI as completion engine to AI as autonomous teammate
- [[concepts/burden-of-generated-code|Burden of Generated Code]] — Every AI-generated line still needs review and maintenance
- [[concepts/ai-powered-devops|AI-Powered DevOps]] — Broader AI integration across the DevOps lifecycle
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — Related pattern for iterative AI-assisted development
- [[entities/graphite|Graphite]] — Company building AI-native outer loop tooling
- [[references/aief2025-dont-get-one-shotted-tomas-reimers-graphite]] — Source talk
- [[references/aief2025-windsurf-everywhere-kevin-hou]] — Source talk on Windsurf's outer loop automation
