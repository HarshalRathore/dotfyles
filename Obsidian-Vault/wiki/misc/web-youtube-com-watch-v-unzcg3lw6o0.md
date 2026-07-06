---
title: 'Building Great Agent Skills: The Missing Manual — Matt Pocock'
category: misc
tags:
- ai
- agent-skills
- engineering
sources:
- 'https://www.youtube.com/watch?v=unzcg3lw6o0'
source_url: https://www.youtube.com/watch?v=UNzCG3lw6O0
created: '2026-07-01T09:49:00Z'
updated: '2026-07-01T09:49:00Z'
summary: Matt Pocock's AI Engineer talk defining the Skill Checklist Framework (Trigger → Structure → Steering → Pruning) for building and evaluating high-quality agent skills.
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: 2026-07-01
tier: supporting
---

# Building Great Agent Skills: The Missing Manual

> Matt Pocock at AI Engineer (2026). Delivered as a remote keynote for the AI Engineer World's Fair.

## Overview

Matt Pocock's talk defines "skill hell" — the inability to distinguish good agent skills from bad ones — and provides a structured four-part checklist framework for building and evaluating skills. The talk was created as a remote substitution for his canceled AI Engineer appearance, and he released the framework as an operational skill (`writing-great-skills`) in his skills repository.

## Key Points

- **Skill hell** is a new failure mode for developers working with AI agents: too many skills are available, no one can tell good from bad, and people can't compose skills effectively ^[inferred]
- **Model-invoked vs. user-invoked** is the fundamental trigger decision: model-invoked skills add a description to the agent's context (increasing context load/tokens per request) but reduce user burden; user-invoked skills keep context lean but increase the user's cognitive load ^[inferred]
- Matt Pocock prefers **user-invoked skills** because model-invoked skills introduce unpredictability — the agent may choose not to invoke a skill even when it's the perfect match, which forces eval-based verification
- The **Skill Checklist Framework** has four dimensions: Trigger (how a skill is invoked), Structure (steps + reference material), Steering (leading words to guide agent behavior), and Pruning (removing sediment, crud, and no-ops)
- **Leading words** are the primary steering technique: pack meaning into short phrases (e.g., "vertical slice") that the agent adopts in its reasoning traces, changing behavior at the thought level
- **Leg work per step** can be increased by hiding future steps from the agent — splitting a skill into separate sub-skills so the agent focuses fully on one phase at a time
- **External references** — branching reference material hidden behind context pointers — keep the main `skill.md` file minimal by moving branch-specific content to external markdown files within the skill folder
- **Deletion tests** prove whether a paragraph is a no-op: if deleting it doesn't change the agent's behavior, it was never doing useful work
- **Sediment** accumulates when multiple contributors add to a shared skill file without deleting or reorganizing — the fix is structural refactoring, not appending

## Concepts

- [[concepts/skills-checklist-framework]] — The four-part framework from this talk
- [[concepts/skill-hell]] — The problem of un-evaluable agent skills
- [[concepts/leading-words]] — Steering technique using compact phrases
- [[concepts/agent-loop]] — The broader agent loop pattern that skills support

## Entities

- [[entities/matt-pocock]] — Speaker and creator of the framework
- [[entities/boris-cherny]] — Creator of Claude Code, mentioned as context for the loop/skills ecosystem

## Related

- [[misc/web-youtube-com-watch-v4f1gfy-hqg]] — Matt's "Software Fundamentals Matter More Than Ever" talk
- [[misc/web-youtube-com-watch-v-unzcg3lw6o0]] — Matt's full AI coding workflow workshop
- [[concepts/skills-checklist-framework]] — The core framework from this talk
- [[concepts/skill-hell]] — The problem space this framework addresses
