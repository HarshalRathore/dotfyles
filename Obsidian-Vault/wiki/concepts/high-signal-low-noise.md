---
title: High Signal, Low Noise
tags:
- code-review
- ai
- quality
- software-engineering
- aief2025
aliases:
- high signal low noise
- AI feedback quality
relationships:
- target: '[[concepts/self-driving-code-review]]'
  type: related_to
- target: '[[concepts/ai-native-toolchain]]'
  type: implements
- target: '[[concepts/code-review-primary-skill]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=h6mrr5nbtza'
summary: AI review feedback should prioritize meaningful, actionable insights over trivial issues. High signal, low noise is a core quality principle for AI code review systems.
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: concepts
---

# High Signal, Low Noise

High signal, low noise is a core quality principle for AI code review systems: AI-generated feedback should prioritize meaningful, actionable insights over trivial issues. ^[extracted] The principle was articulated by [[entities/tomas-reimers|Tomas Reimers]] ([[entities/graphite|Graphite]]) at AIEF2025 as a design goal for Diamond, their AI code review platform. ^[extracted]

## The Principle

In the context of AI code review:

- **High signal** — Feedback that matters: architectural concerns, security issues, correctness problems, performance implications
- **Low noise** — Minimal trivial or nitpicky feedback that distracts from the meaningful issues

This principle is critical because AI-generated review at scale can easily become noise — thousands of comments on minor style issues that drown out the few that actually matter. ^[inferred]

## Evidence: Acceptance Rates

Diamond's design achieves this balance empirically: ^[extracted]

- **52% acceptance rate** — Over half of Diamond's comments are integrated into PRs
- **~4% dismissal rate** — Only about 4% of comments are dismissed as noise
- **Higher than human** — Human review comments are integrated at 45–50%, suggesting AI can be more precise

These metrics suggest that high signal, low noise is not just a design goal but an achievable outcome when AI review is properly tuned. ^[inferred]

## Relationship to Self-Driving Review

High signal, low noise is a prerequisite for self-driving code review to work at scale. If AI review produces too much noise, developers will dismiss it entirely, defeating the purpose of automation. ^[inferred]

## Related

- [[concepts/self-driving-code-review|Self-Driving Code Review]] — AI review as a core component of the AI-native outer loop
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — The broader thesis that the entire toolchain must be AI-native
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — The skill that judges whether each line is worth its burden
- [[entities/graphite|Graphite]] — Company building Diamond with high signal, low noise as a core design principle
- [[references/aief2025-dont-get-one-shotted-tomas-reimers-graphite]] — Source talk
