---
title: Character Coach Approach
tags:
- agent
- ai
- design
- personality
- prompt-engineering
sources:
- 'https://www.youtube.com/watch?v=cimvknx-cni'
summary: 'Design methodology for AI agents: instead of controlling outputs (editing copy, policing word choice), coach the agent''s character — build out its nature, personality, and behavioral tendencies.'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Character Coach Approach

The character coach approach, articulated by [[entities/craig-wattrus|Craig Wattrus]] after listening to [[entities/anthropic|Anthropic]]'s [[entities/amanda-askell|Amanda Askell]] discuss building Claude's character, is a design methodology for AI agents: instead of controlling individual outputs through copy editing, word choice restrictions, and specific behavioral rules, design the agent's underlying character — its personality, nature, and tendencies.

## The Insight

Wattrus realized he had been giving engineers feedback on agents the way he would edit copy: "oh it shouldn't start saying this," "it shouldn't use these words," "why should it do this." After hearing Askell talk about character design as a first-class practice, he shifted from controlling to coaching — from editing individual responses to building out the nature he wanted the agent to embody. ^[extracted]

## The Chat Tuner Tool

Wattrus built a v0 tool called a "chat tuner" for systematically exploring agent personality: ^[extracted]

- The orchestrator system prompt for Flatfile's Build Mode was loaded into the tool
- Parameters could be adjusted: more friendly, more balanced, more concise
- The tool showed what different personalities looked like for the same system
- It answered questions like "what does 'more cautious' mean to this model?"

This tool exemplifies the character coach approach: instead of dictating exact behavior, the designer explores the space of possible personalities and selects the right nature for the agent. ^[inferred]

## From Control to Coaching

| Aspect | Control Approach | Character Coach Approach |
|---|---|---|
| Intervention point | Individual outputs | System prompt / agent nature |
| Feedback style | "Don't say X", "Use Y instead" | "Be more friendly", "Be more focused" |
| Design tool | Copy editing | Chat tuner / personality explorer |
| Model relationship | Adversarial (fighting model tendencies) | Collaborative (working with model nature) |
| Scalability | Each output needs review | Character applies across all outputs |

## Relationship to Other Concepts

- [[concepts/ai-coworker-form-factors]] — Character coaching applies regardless of form factor; each form factor may need a different character
- [[concepts/context-engineering]] — Character coaching is a type of context engineering focused on personality rather than task instructions
- [[concepts/forward-leaning-agent]] — A specific character outcome: designing agents that are curious, excitable, and focused
- [[concepts/latent-model-capabilities]] — Models have latent personality dimensions that character coaching can shape
- [[concepts/feature-steering]] — Related technical approach for controlling model behavior at a deeper level

## Open Questions

- How do you validate that an agent's character is consistent across diverse tasks?
- Can you characterize the personality of different base models and design characters that work with (not against) model tendencies?
- What's the right granularity for character specifications — system prompt alone, or also training data curation, feedback loops, and interaction design?

## Sources

- [[references/aief2025-form-factors-ai-coworkers-craig-wattrus-flatfile]] — Talk at AI Engineer World's Fair 2025
