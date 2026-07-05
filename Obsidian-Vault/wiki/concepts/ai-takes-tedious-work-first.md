---
title: "AI Takes Tedious Work First"
category: concepts
tags:
  - ai-agents
  - automation-pattern
  - software-engineering
  - aief2025
sources:
  - "[[sources/watchv=mi83but_23o]]"
summary: "The pattern where AI agents consistently take over the most tedious, repetitive, boilerplate work first — freeing humans for creative tasks. Observed from tab completion through cross-file diagnosis."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AI Takes Tedious Work First

**AI takes tedious work first** is the observed pattern where AI agents consistently adopt the most tedious, repetitive, and boilerplate tasks — freeing humans for more creative and interesting work.

## The Pattern

Scott Wu observed at AIEF2025: "AI has always done these more boilerplate tasks and the more tedious stuff and the more repetitive stuff, and we get to do the more fun creative stuff." ^[extracted]

This pattern has held across every capability tier:

| Tier | What AI Does | What Humans Keep |
|------|-------------|-----------------|
| Tab completion | Predicting next line | Writing the rest |
| Repetitive migrations | File-by-file transformations | Designing the migration strategy |
| Isolated fixes | Implementing known patterns | Defining the feature requirements |
| Cross-file diagnosis | Executing known fixes | Architecting new solutions |

## Why This Pattern Exists

1. **Reliability threshold** — Repetitive tasks have clear success criteria, making them easier to validate
2. **Scale advantage** — AI can apply the same steps across thousands of files without fatigue
3. **Predictable structure** — Boilerplate work follows patterns that AI can learn and replicate
4. **Human dissatisfaction** — Repetitive work is the most universally disliked by developers

## Implications

- **Adoption driver** — The tedious-work-first pattern is what drives early AI agent adoption
- **Human satisfaction** — Developers enjoy using tools that handle their least favorite tasks
- **Compounding value** — As AI takes more tedious work, humans focus on higher-value activities
- **Not a limitation** — This isn't because AI can't do creative work; it's because tedious work is the easiest to automate reliably

## Related Pages

- [[concepts/agent-capability-tiers]] — How each tier expands what AI handles
- [[concepts/repetitive-migrations]] — Prime example of tedious work automation
- [[concepts/moore-law-for-ai-agents]] — The growth enabling this expansion
