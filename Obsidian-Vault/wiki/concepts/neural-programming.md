---
title: Neural Programming
tags:
- concept
- ai
- interpretability
- engineering
- debugging
sources:
- 'https://www.youtube.com/watch?v=6avmhzpjptq'
summary: The ability to debug, steer, and program AI models at the neuron level using interpretability techniques — treating neural networks more like traditional software with inspectable and controllable...
provenance:
  extracted: 0.82
  inferred: 0.15
  ambiguous: 0.03
base_confidence: 0.48
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Neural Programming

Neural programming is the application of [[concepts/mechanistic-interpretability|mechanistic interpretability]] to debug, steer, and program AI models at the level of individual features (internal concept representations). The term describes a paradigm shift — instead of treating LLMs as black boxes controlled only through high-level prompts, engineers can inspect and modify the model's internal state with precision comparable to traditional software debugging. ^[extracted]

## Key Ideas

- **Whack-a-mole prompt engineering** — the problem neural programming solves. Bissell describes the familiar cycle: fixing one issue in the prompt breaks another in the eval suite. LLM-as-judge approaches are not cost-scalable, and fine-tuning introduces spurious correlations, mode collapse, and reward hacking. ^[extracted]
- **Feature attribution** — clicking any output token reveals the internal features (concept representations) that were active when the model chose that token. This is analogous to a debugger showing the call stack. ^[extracted]
- **Feature steering** — after identifying a feature (e.g., "sensitive and protected information"), an engineer can adjust its activation level to change model behavior. Bissell demonstrates turning up this feature by 60%, causing a model that previously leaked PII to refuse revealing email. ^[extracted]

## Techniques

### Dynamic Prompting

A technique within neural programming where engineers set a listener on a specific internal feature. When the feature fires during generation (indicating the model's thoughts have turned toward that topic), the system conditionally injects a different system prompt in real-time, without the user seeing the switch. Bissell demonstrates this with a "beverages and consumer brands" feature — when the model starts discussing soft drinks, the system injects a Coca-Cola-branded prompt, and the model instantly shifts its recommendation. ^[extracted]

### Model Steering via Feature Vectors

Goodfire's Ember platform allows engineers to:
- Increase or decrease feature activation strength (e.g., 60% more sensitive-information awareness)
- Set conditional listeners for dynamic prompting
- Visualize subfeatures within each concept for granular control

## Related

- [[concepts/mechanistic-interpretability]] — The foundational research field
- [[concepts/feature-steering]] — The core operation of neural programming
- [[concepts/sparse-autoencoders]] — The technique for finding steerable features
- [[entities/goodfire-ai]] — Company building the Ember platform
- [[concepts/agent-reliability-challenge]] — The reliability problem neural programming addresses

## Open Questions

- How granular can neural programming become? Bissell hints at subfeature-level steering (e.g., interpolating between concepts like lion vs. tiger in image models). ^[inferred]

## Sources

- [[references/why-care-about-ai-interpretability-bissell-goodfire-2025]] — Primary reference for this page
