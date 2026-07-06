---
title: Code Cleanliness
category: concepts
tags:
- code-cleanliness
- code-review
- llm-limitations
- best-practices
relationships:
- target: '[[concepts/bug-taxonomy]]'
  type: extends
- target: '[[concepts/code-review-feedback-quality]]'
  type: related_to
- target: '[[concepts/high-signal-low-noise]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=tswqekftnaw'
summary: Best-practice comments like 'add tests' or 'extract this function' that LLMs can easily generate but humans find frustrating to receive from AI — sitting in the bottom-left quadrant of the bug taxo...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Code Cleanliness

Code Cleanliness refers to best-practice comments in code review — such as "add a comment describing what this class does," "extract this logic into a function," "make sure this code has tests," or "extract this type into a different type." These comments are technically correct but frustrating for developers to receive from an LLM. ^[extracted]

The concept was highlighted by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025 as the bottom-left quadrant of the bug taxonomy: LLMs can easily catch these issues, but humans don't want to receive them from AI. ^[extracted]

## The Problem with Code Cleanliness Comments from LLMs

The key issue is that code cleanliness judgments require **contextual barometer** — a human reviewer assesses whether a particular codebase section is "tricky enough" to warrant extraction or documentation. A bot cannot make this judgment because it lacks:

- Understanding of the codebase's complexity patterns
- Awareness of what developers are likely to get tripped up by
- Knowledge of the team's tolerance for abstraction vs simplicity

As Reimers noted, "as a human, you're applying some kind of barometer of, well, in this code base, this logic is particularly tricky and I think someone's going to get tripped up, so we should extract it out versus, well, in this code base, it's actually fine. But a bot can pretty much always leave this comment." ^[extracted]

## The Technical Correctness Paradox

A human can almost always leave a code cleanliness comment and be "technically correct." The question is whether it's welcome in the codebase. LLMs lack the social judgment to know when such comments are valuable vs. annoying. ^[extracted]

## Implications for AI Code Review

AI code review systems should suppress code cleanliness comments entirely, or at minimum require explicit configuration to enable them. The <4% downvote rate Graphite achieved demonstrates the value of constraining LLM output to comments humans actually want. ^[extracted]

## Related

- [[concepts/bug-taxonomy|Bug Taxonomy]] — Code cleanliness is in the bottom-left quadrant
- [[concepts/code-review-feedback-quality|Code Review Feedback Quality]] — The 2D framework for evaluating review comments
- [[concepts/high-signal-low-noise|High Signal, Low Noise]] — Code cleanliness comments are noise, not signal
- [[concepts/self-driving-code-review|Self-Driving Code Review]] — AI review must suppress these comments
