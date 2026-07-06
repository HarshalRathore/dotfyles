---
title: Leading Words
tags:
- agent-skills
- prompt-engineering
- steering
sources:
- '[[misc/web-youtube-com-watch-v-unzcg3lw6o0]]'
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-04T15:08:36.759092+00:00'
updated: '2026-07-04T15:08:36.759092+00:00'
summary: Leading Words
---
# Leading Words

Leading words (also called "leitherts," from literary theory) are compact, meaning-dense phrases used in agent skill instructions to steer agent behavior. The technique works because the agent repeats the leading word in its reasoning traces and output, which reinforces the desired behavior pattern.

## How It Works

1. Choose a phrase that packs substantial meaning — ideally one the model already understands from training data
2. Place it in the skill instructions
3. Observe the agent adopting the word in its thinking traces
4. The repetition self-reinforces the desired behavior

## Examples

| Leading Word | Instead of saying | Effect |
|---|---|---|
| "Vertical slice" | "Don't code layer by layer" | Agent breaks work into end-to-end slices instead of horizontal layers |
| "Deep module" | "Make sure your interfaces are small and explicit" | Agent designs small-interface, large-implementation modules |
| "Tracer bullet" | "Get something working end to end first" | Agent builds the thinnest possible working path |

## Verification

The technique is testable: include the leading word in the skill, run the agent, and check the reasoning traces. If the agent isn't adopting the word, either:
- The word is too obscure (the model doesn't have relevant training priors)
- The word is inconsistent (used once but not reinforced throughout the skill)
- A better word exists for the intent

## Related

- [[concepts/skills-checklist-framework]] — The framework that defines leading words as the steering technique
- [[concepts/skill-hell]] — The problem context for skill design
- [[entities/matt-pocock]] — Popularizer of the technique
