---
title: System Prompt Curve
category: concepts
tags: [prompt-engineering, system-prompt, model-capability, Claude-Code, U-shaped]
aliases: [system prompt curve, U-shaped system prompt, prompt size curve]
relationships:
  - target: '[[entities/claude-code]]'
    type: related_to
  - target: '[[concepts/prompt-engineering]]'
    type: extends
  - target: '[[concepts/model-capability-awareness]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A U-shaped curve showing that system prompt size correlates with model capability: small prompts for old models, large prompts for mid-tier models, small prompts again for the newest models.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# System Prompt Curve

The **system prompt curve** (also called the **U-shaped system prompt curve**) describes how the optimal size of a system prompt changes as models get smarter: ^[extracted]

| Model Capability | System Prompt Size | Rationale |
|-----------------|-------------------|-----------|
| Old models | Small | Models can't handle complex instructions |
| Mid-tier models | Large | Models benefit from detailed instructions and examples |
| Newest models | Small | Models understand context well enough that verbose prompts are unnecessary |

This curve was demonstrated by **Cloud Code** removing **80% of its system prompt** — a deliberate reduction tied to newer model capabilities. ^[extracted]

## The Three Phases

### Phase 1: Small Prompt (Old Models)

For early models like Sonic 3.5, the best practice was a small system prompt with few tools and lots of examples. Models couldn't handle complex instructions, so simplicity was key. ^[extracted]

### Phase 2: Large Prompt (Mid-Tier Models)

As models got smarter, they could follow more instructions. The optimal approach became a larger system prompt with lots of examples and many tools. Models could handle the complexity. ^[extracted]

### Phase 3: Small Prompt (Newest Models)

The newest class of models want **fewer, simpler** system prompts. They understand context well enough that verbose prompts are not just unnecessary but potentially harmful — they add noise. ^[extracted]

## Implications

1. **Less is more** — for the latest models, simplicity in prompting is often better
2. **Model capability matters** — the same prompt strategy that works for one model may hurt another
3. **Prompt engineering evolves** — what was best practice two years ago may be counterproductive today
4. **80% reduction is deliberate** — Cloud Code's 80% system prompt reduction is not an accident; it's a response to model capability improvements

## Related

- [[entities/claude-code|Claude Code]] — the product that demonstrated the 80% system prompt reduction
- [[concepts/prompt-engineering|Prompt Engineering]] — the broader discipline of designing prompts
- [[concepts/model-capability-awareness|Model Capability Awareness]] — understanding what models can handle
- [[concepts/agent-best-practices|Agent Best Practices]] — evolving practices as models improve

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
