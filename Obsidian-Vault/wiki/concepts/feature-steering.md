---
title: Feature Steering
tags:
- concept
- ai
- interpretability
- control
- safety
sources:
- 'https://www.youtube.com/watch?v=6avmhzpjptq'
summary: Actively modifying model behavior by adjusting internal features — the neural representations of concepts inside LLMs — to enforce guardrails, inject contextual behavior, or alter outputs with prec...
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Feature Steering

Feature steering is a [[concepts/mechanistic-interpretability|mechanistic interpretability]] technique that involves adjusting the activation level of specific internal features inside a neural network to change the model's behavior. Unlike prompt engineering, which operates on the model's input, feature steering operates on the model's internal representations — the features that represent concepts the model has learned. ^[extracted]

## Key Ideas

- **Features as concept representations** — inside a model, groups of neurons represent specific concepts (e.g., the Golden Gate Bridge, sensitive information, beverages). These features activate when the model is processing related content. ^[extracted]
- **Steering by feature amplification** — turning a feature up (e.g., +60% on "sensitive and protected information") makes the model prioritize that concept. Bissell demonstrates this: a model instructed to keep PII confidential leaks it immediately, but after steering the sensitive-information feature up, it correctly refuses to share. ^[extracted]
- **Steering for guardrails** — feature steering can make models more jailbreak resistant, conditionally enforce policies, or inject context-dependent behavior without rewriting prompts. ^[extracted]

## Dynamic Prompting via Feature Detection

A related pattern: instead of constantly steering, set a "listener" on a feature. When that feature crosses a threshold (the model is "thinking about" that concept), inject contextual instructions mid-generation. Bissell's example: when a "beverages and consumer brands" feature fires, swap to a Coca-Cola-branded system prompt for the rest of the generation. ^[extracted]

## Compared to Traditional Approaches

| Approach | Granularity | Reliability | Observable |
|----------|-------------|-------------|------------|
| Prompt Engineering | Input-level | Whack-a-mole fixes | User-visible |
| Fine-tuning | Training-level | Unpredictable side effects | Not inspectable |
| Feature Steering | Neuron-level | Precise, targeted | Invisible to user |

## Related

- [[concepts/neural-programming]] — The broader paradigm of neuron-level model control
- [[concepts/mechanistic-interpretability]] — The research field enabling feature steering
- [[concepts/sparse-autoencoders]] — How steerable features are discovered
- [[entities/goodfire-ai]] — Company that built the Ember platform implementing feature steering

## Sources

- [[references/why-care-about-ai-interpretability-bissell-goodfire-2025]] — Primary reference for this page
