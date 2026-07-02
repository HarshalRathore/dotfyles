---
title: "Software Fundamentals Matter More Than Ever — Matt Pocock"
category: misc
tags: [ai, software-engineering, fundamentals, deep-modules, ddd, feedback-loops]
sources:
  - "watchv=v4f1gfy-hqg"
source_url: "https://www.youtube.com/watch?v=v4F1gFy-hqg"
created: 2026-06-30T23:55:00Z
updated: 2026-06-30T23:55:00Z
summary: "Matt Pocock's AI Engineer talk on why software fundamentals (ubiquitous language, deep modules, feedback loops, shared design concepts) matter more than ever when working with AI coding agents."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.75
  inferred: 0.22
  ambiguous: 0.03
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-06-30
---

# Software Fundamentals Matter More Than Ever — Matt Pocock

> Matt Pocock at AI Engineer (Apr 23, 2026). https://x.com/mattpocockuk

## Overview

Matt Pocock's talk at AI Engineer 2026 argues that software engineering fundamentals — far from being obsolete — matter *more* in the age of AI coding tools. After 18 months teaching developers to build with AI agents, he observed a consistent pattern: the devs who succeed aren't the ones who delegate everything or nothing. They're the ones who fall back on engineering fundamentals.

The talk covers four common failure modes of AI-assisted development and the old-book principles that fix them.

## Key Points

### Failure Mode 1: The AI didn't do what I wanted

**Classic specs-to-code trap.** You write a spec, the AI generates code, you don't look at the code, you change the spec and re-run, you get worse code each iteration. This is vibe coding by another name. ^[inferred]

**Fix: Establish a shared design concept.** From Frederick P. Brooks' "The Design of Design" — when multiple people (or a person and an AI) design something together, an ephemeral "design concept" floats between them. It's the invisible theory of what you're building. It's not an asset you can put in a markdown file.

**Pocock's solution: Grill Me skill** — a skill that relentlessly interviews every aspect of a plan until shared understanding is reached, walking down each branch of the design tree and resolving dependencies between decisions one by one. The repo has ~13k stars.

### Failure Mode 2: No shared language with the AI

AI produces code with different terminology than what you intended, because you and the AI don't share a vocabulary.

**Fix: Create a ubiquitous language.** From Domain-Driven Design (Eric Evans). A markdown file of domain terms you and the AI agree on, used consistently in planning conversations, code, and prompts.

**Pocock's solution: Ubiquitous Language skill** — scans the codebase for terminology and generates a shared glossary markdown file. Keeping it open during planning sessions improves alignment and lets the AI think less verbosely.

### Failure Mode 3: Code is built right but doesn't work

The AI built what you asked for, but it doesn't actually function.

**Fix: Feedback loops.** Static types (TypeScript), browser access for front-end (let the LLM see what it built), and automated tests. Iterate fast with feedback, not with spec changes.

### Failure Mode 4: AI creates shallow module architectures

AI is great at generating codebases filled with tiny, shallow modules — tons of small files with complex interfaces. This makes it hard for the AI (and humans) to navigate and understand the codebase.

**Fix: Deep modules.** From John Ousterhout's "A Philosophy of Software Design." Few large modules with simple interfaces, hiding complexity behind boundaries. The engineer designs the interface; the AI implements the internals.

**Pocock's solution: Improve Codebase Architecture skill** — a set of reusable steps to refactor shallow architectures into deep modules.

### Key Quote

> "Software fundamentals matter now more than they actually ever have."

## Concepts

- [[concepts/ralph-coding-technique]] — Related: both address AI coding loops; this talk critiques naive specs-to-code but advocates for deeper engineering rigor (shared language, deep modules)
- [[concepts/agent-loop]] — Feedback loops (Tip 3) are a core agent-loop mechanism; the talk adds concrete techniques: static types, browser access, automated tests
-  — Central to Tip 4; directly from Ousterhout's "A Philosophy of Software Design"

## Entities

- [[entities/matt-pocock]] — TypeScript educator, creator of the Grill Me, Ubiquitous Language, and Improve Codebase Architecture skills
- [[posthog]] — The company whose blog has been a source for related AI engineering content

## Sources Referenced

- "A Philosophy of Software Design" by John Ousterhout
- "The Pragmatic Programmer" by Andrew Hunt & David Thomas
- "The Design of Design" by Frederick P. Brooks
- Domain-Driven Design by Eric Evans (ubiquitous language concept)

## Open Questions

- How well does the Grill Me skill generalize beyond Matt Pocock's teaching context at AI Engineer?
- Is there measurable evidence that deep module architectures reduce AI coding errors, or is it axiomatic?
- The talk critiques specs-to-code but doesn't propose a complete replacement workflow — it adds skills on top. Does this compose cleanly?

## Related

- [[web-posthog-com-newsletter-loops]] — Engineering loops (feedback loops are a type of agent loop)
- [[web-posthog-com-blog-stop-ai-slop]] — AI evals as a feedback mechanism similar to Tip 3
