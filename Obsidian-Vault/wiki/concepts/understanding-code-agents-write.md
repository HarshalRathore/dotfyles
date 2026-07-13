---
title: Understanding Code Agents Write
category: concepts
tags: [human-agent-collaboration, cognitive-debt, code-understanding, pedagogy, coding-agents]
aliases: [understanding agent code, code understanding, human fluency with agents]
relationships:
  - target: '[[concepts/cognitive-debt]]'
    type: related_to
  - target: '[[concepts/vibe-coding-gap]]'
    type: related_to
  - target: '[[concepts/compounding-engineering]]'
    type: extends
  - target: '[[entities/geoffrey-litt]]'
    type: related_to
sources:
- https://x.com/geoffreylitt/status/2072522251300409556
summary: Framework for building human fluency with agent-written code through explanation artifacts, interactive micro-worlds, and comprehension quizzes.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Understanding Code Agents Write

A framework and philosophy for building and maintaining human fluency with code that AI agents write. As agents take over more of the software lifecycle, the traditional approach of reading diffs line-by-line becomes insufficient — new techniques borrowed from education are needed.

## The Motivation: Understand to Participate, Not Just Verify

There are two answers to "why should I understand agent code?":

1. **Verify** — Check that the agent's output is correct. As agents get better at self-verification, this role shrinks. It's fundamentally a thumbs-up/thumbs-down gate.
2. **Participate** — Understand enough to be a creative participant in the project. You need a rich set of concepts in your mind to think fluently about how to evolve a system. Without that fluency, your ability to participate is meaningfully limited. ^[extracted]

This is the deeper, more lasting reason: understanding is what lets you come up with the *next idea*. A project is many loops with the agent, and your understanding of the system is the fuel for each new iteration. ^[extracted]

## Cognitive Debt

Co-developed with Margaret Storey and @simonw, **cognitive debt** is the idea that you can get away with not understanding what's going on in the short term — but it'll bite you eventually. It's like technical debt, except it's your *understanding* that compounds, not just the code. ^[extracted]

## Three Techniques for Building Fluency

### 1. Code Explainer Documents (/explain-diff)

When an agent finishes work, it should produce an explanation artifact — not just a raw diff. The /explain-diff skill by [[entities/geoffrey-litt|Geoffrey Litt]] structures these explainers around three principles:

- **Background first** — Before any changes, teach what already exists. Help the reader understand the game engine, the codebase, the domain. ^[extracted]
- **Intuition before details** — State the goal ("make the garden feel three-dimensional with 2D drawing tricks") and explain related concepts (isometric projection) before showing code. ^[extracted]
- **Literate diff** — Structure changes as prose walking through the modifications in a sensible order, with surrounding explanation and embedded code snippets — not alphabetical file listings. ^[extracted]

The end result is an **explainer packet** — beautifully structured documentation that's worth reading, printing, and taking to a café. ^[extracted]

### 2. Comprehension Quizzes (Spaced Repetition)

Reading is hard work — and easy to fool yourself into thinking you did. [[entities/andy-matuschak|Andy Matuschak]] famously said "books don't work." To counter this, embed spaced-repetition quizzes inside code explainers:

- Five questions about the changes at the bottom of every explainer
- The rule: **don't send code to others until you can pass the quiz** ^[extracted]
- Acts as a **speed regulator** — working with AI is easy for the loop to outrun human understanding ^[extracted]
- Inspired by [[entities/michael-nielsen|Michael Nielsen]]'s work on embedding quizzes in essays

### 3. Micro-Worlds (Interactive Environments)

Inspired by educator [[entities/seymour-papert|Seymour Papert]]'s concept of **Mathland** — if you want to learn math, live in Mathland; if you want to learn French, go live in France. The question: can we build environments where you naturally intuit how a system works?

Examples from practice:

- A Prolog interpreter debugger built with an agent — step through execution, scrub through time, see the stack, leave comments for yourself ^[extracted]
- A website migration **command center** — a game-like UI where you do the port step-by-step, watching old and new sites run side-by-side, file tree evolving in real time ^[extracted]

The insight: **agents can write bits of code that help humans understand other code**. This is a big deal — agents write their own code, but they can also write *tools* that help humans understand what they wrote. ^[extracted]

## Shared Spaces

The frontier is team-level understanding. When you and someone else hold the same mental model, you can communicate efficiently — you have a shared vocabulary that evokes the same images, so you can jam and riff and have creative conversations. [[entities/notion|Notion]] was built around this principle. Creating shared environments where teams build that understanding together is the next frontier. ^[extracted]

## Key Ideas Summary

- **Understand to participate** — As agents self-verify better, the human role shifts from gatekeeper to creative participant ^[extracted]
- **Cognitive debt compounds** — Not-understanding has a delayed cost, like technical debt ^[extracted]
- **Education is the right inspiration** — Background-first, intuition-first, quizzes, and interactive worlds are pedagogical techniques we should borrow ^[extracted]
- **Literate diff + explainer packets** — Replace raw diffs with structured, human-readable explainers ^[extracted]
- **Spaced repetition for code** — Quizzes embedded in explainers prevent the illusion of understanding ^[extracted]
- **Micro-worlds** — Interactive sandboxes where you learn by doing, not reading ^[extracted]
- **Agents building tools for understanding** — The meta-insight that agents can write code to help humans understand the agents' own code ^[extracted]
- **Shared spaces** — Team-level understanding as the next frontier ^[extracted]

## Open Questions

- How do micro-worlds scale beyond individual projects to team-level shared mental models?
- Can quiz-based comprehension be automated at the agent level — having agents generate quizzes for their own outputs? ^[inferred]
- What is the minimum viable "understanding" for different roles (PM, designer, engineer) working alongside agents? ^[ambiguous]

## Related Pages

- [[concepts/cognitive-debt|Cognitive Debt]] — The compounding cost of not understanding your systems
- [[concepts/vibe-coding-gap|The Vibe Coding Gap]] — The gap between what AI can produce and what humans can review
- [[concepts/compounding-engineering|Compounding Engineering]] — The plan-delegate-assess-codify loop
- [[concepts/agent-teammate-relationship|Agent-Teammate Relationship]] — How agents should integrate into team structures
- [[concepts/shift-left-ai-quality|Shift Left AI Quality]] — Embedding quality into the earliest stages of development

## Sources

- [[entities/geoffrey-litt|Geoffrey Litt]] — "Understanding Code Our Agents Write" mega-thread, Twitter, 2026-07-02. [https://x.com/geoffreylitt/status/2072522251300409556](https://x.com/geoffreylitt/status/2072522251300409556)
- [[entities/margaret-storey|Margaret Storey]] — Cognitive debt co-developer
- [[entities/andy-matuschak|Andy Matuschak]] — "Books don't work" insight on reading comprehension
- [[entities/michael-nielsen|Michael Nielsen]] — Embedded spaced repetition in essays
