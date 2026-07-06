---
title: PITA Dev
category: concepts
tags:
- software-culture
- code-review
- ai-coding
- engineering-culture
- over-engineering
sources:
- 'https://www.youtube.com/watch?v=jv-wy5pxxlo'
relationships:
- target: '[[concepts/vibe-engineering]]'
  type: contradicts
- target: '[[concepts/code-review-primary-skill]]'
  type: related_to
- target: '[[concepts/simple-is-better-ai]]'
  type: related_to
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: PITA Dev
---

# PITA Dev

A derogatory term for "Pain in the Ass" developers — engineers whose perfectionism, nitpicking, and resistance to pragmatism make them the primary obstacle to AI-assisted development adoption. ^[extracted]

## Symptoms

Kitze identifies these diagnostic symptoms of a PITA dev:

- Leaving nitpick comments on two-line pull requests
- Spending more than two minutes on a PR review
- Lacking the phrase "looks good to me" in their vocabulary
- Physical discomfort (stomach/chest pain) at the thought of agreeing with a colleague
- Believing "it has to be my way"
- Being religious about trivial preferences (tabs vs spaces)
- Using "well actually" in code comments
- Chasing micro-optimizations (lodash → native → map → for loop → binary search) for two users who were fine with the previous code ^[extracted]

## Relationship to AI Coding

PITA devs are the primary reason most people don't want to do agentic coding. ^[extracted] Their perfectionism is incompatible with the "good enough" judgment that vibe engineering requires. Kitze predicts they will "were and will be forever" — regardless of how AI coding evolves, PITA devs will find something to nitpick, including correcting AGI. ^[extracted]

## Organizational Impact

Teams with many PITA devs will resist AI coding adoption not because of tool limitations but because of cultural mismatch. The skill of knowing when code is "good enough" is valuable with or without AI, and PITA devs lack this skill by definition. ^[inferred]

## Related

- [[concepts/vibe-engineering|Vibe Engineering]] — Requires the opposite mindset
- [[concepts/skill-hell|Skill Hell]] — PITA devs are one reason people get stuck in skill hell
- [[concepts/simple-is-better-ai|Simple Is Better for AI]] — Pragmatism over perfectionism
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — PITA devs over-engineer review
