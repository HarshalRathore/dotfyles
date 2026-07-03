---
title: "Vibe Coding Origins"
category: concepts
tags: [ai, llm, coding, demo, gpt-3, vibe-coding]
relationships:
  - target: "[[concepts/demo-driven-ai-exploration]]"
    type: derived_from
  - target: "[[concepts/latent-model-capabilities]]"
    type: extends
  - target: "[[concepts/test-time-compute-scaling]]"
    type: related_to
sources:
  - "AI Engineer World's Fair 2025 talk — On Curiosity — Sharif Shameem, Lexica - https://www.youtube.com/watch?v=0F8mnGPUycY"
  - "AIEF2025 - The New Code — Sean Grove, OpenAI - https://www.youtube.com/watch?v=8rABwKRsec4"
  - "AIEF2025 - Thinking Deeper in Gemini — Jack Rae, Google DeepMind - https://www.youtube.com/watch?v=8EQo4J2BWKw"
  - "AIEF2025 - Vibes won't cut it — Chris Kelly, Augment Code - https://www.youtube.com/watch?v=Dc3qOA9WOnE"
provenance:
  extracted: 0.55
  inferred: 0.40
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Vibe Coding Origins

The practice of describing what you want in natural language and having an AI generate working code — now known colloquially as "vibe coding" — traces its early roots to [[entities/sharif-shameem|Sharif Shameem]]'s 2020 experiments with GPT-3. By putting a JSX compiler in the browser and hooking it to the GPT-3 API, he created one of the first interactive natural-language-to-code interfaces.

## The Original Demo (2020)

In 2020, weeks after the GPT-3 API was released, Shameem built a browser-based demo where:

- A JSX compiler ran in the browser (inspired by [[entities/brett-victor|Brett Victor]]'s principle of immediate feedback)
- GPT-3 generated React components from natural language descriptions
- The interface provided real-time visual feedback of generated code

To work around GPT-3's 2,000-token context window, he used three parallel prompts joined in the background — a precursor to modern structured generation techniques. ^[extracted]

## The "Banking App" Demo

A early demonstration showed a basic banking app where natural language commands like "add $3" or "subtract $5" modified the balance. Bugs were common — there was a button to give away all your money, and debt would reset the balance to zero — but the demo revealed the model could act as a reasoning engine, not just a language model. ^[extracted]

## Gemini Vibe-Coding DQN (2025)

A striking demonstration of modern vibe coding capability enabled by test-time compute scaling: a researcher at [[entities/google-deepmind|Google DeepMind]] used [[entities/gemini|Gemini]] with thinking to vibe-code the entire DQN (Deep Q-Network) paper end-to-end — the training setup, the algorithm, and even an Atari emulator — such that it could play some of the games. The entire system that would have taken months to implement was generated in minutes through natural language interaction with a thinking-enabled model. ^[extracted]


## The Vibe Coding Paradox

A critical inversion in current vibe coding practice: the prompts (the real source of intent and values) are treated as ephemeral and thrown away, while the generated code (the compiled binary) is carefully version controlled. ^[extracted] This is "like you shred the source and then you very carefully version control the binary." ^[extracted]

[[entities/sean-grove|Sean Grove]] argues that this inverts the correct relationship: in traditional software engineering, the source code is the valuable artifact and the compiled binary is regenerated on demand. Vibe coding should follow the same pattern — the prompt (the specification) is the source, and the generated code is the compiled output. ^[extracted]

This paradox motivates the [[concepts/specifications-as-code|Specifications as Code]] paradigm, where prompts-as-source are captured, version controlled, and treated as first-class development artifacts. ^[inferred]


## From Text Interface to Visual Coding

The key insight was that "writing code in the text interface was not the best way to do it" — hooking the model to a visual, interactive interface was transformative. This pattern is now standard in tools like Cursor, where chat-based code interaction happens in a sidebar alongside the editor, but in 2020 it felt entirely novel. ^[extracted]

## Context

- **GPT-3 era constraints:** 2,000-token context window, $75 per million output tokens, no instruct models (only base model), restrictive OpenAI terms of service banning chat apps. ^[extracted]
- **No instruct models:** All prompting was done with few-shot prefix completion — similar to modern base model interaction. ^[extracted]
- **The core realization:** Models are "intelligent beings" you can "hook up to different apparatuses" — they can work tools when given a sense of purpose and agency. ^[extracted]

## Relationship to Modern Vibe Coding

What began as a curiosity-driven demo of browser-based AI code generation has evolved into a mainstream development practice. While [[concepts/demo-driven-ai-exploration|demo-driven exploration]] remains the ethos, the underlying technique — describing intent in natural language and receiving working code — is now everyday practice with larger context windows and instruct-tuned models. ^[inferred] The Gemini DQN example illustrates how thinking-enabled models further compress the feedback loop, making one-shot generation of complex multi-component systems feasible in minutes. ^[inferred]

## Production Critique

[[entities/chris-kelly|Chris Kelly]] ([[entities/augment-code|Augment Code]]) offers a grounded counterpoint to the "generate and don't examine" approach from a production engineering perspective. His argument: AI-generated code is still code that must be maintained, debugged, and understood. Systems with four-nines reliability requirements and emergent behavior cannot be built on pattern matching alone — every line of generated code carries a maintenance burden, and more code means more to support, not less. ^[extracted]

Kelly frames code review as the most important skill in the AI era — the industry interviews for esoteric algorithms but should instead be interviewing for the ability to read and evaluate code, since that becomes the primary human activity as AI handles more generation. ^[extracted] He also cautions against anthropomorphizing AI outputs: an LLM claiming it "scanned" a file is generating text that sounds reasonable, not describing its actual internal process. ^[extracted] See [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment]] for the full talk.

## Related

- [[concepts/demo-driven-ai-exploration|Demo-Driven AI Exploration]] — The broader methodology this exemplifies
- [[concepts/latent-model-capabilities|Latent Model Capabilities]] — The phenomenon that made it possible (code generation was a latent GPT-3 capability)
- [[concepts/ai-engineering-as-excavation|AI Engineering as Excavation]] — The paradigm this demo was an early instance of
- [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]] — The thinking capability that made the Gemini DQN demo possible
- [[concepts/specifications-as-code|Specifications as Code]] — The paradigm that corrects the vibe coding inverse relationship
- [[entities/sean-grove|Sean Grove]] — Articulator of the specifications-as-code paradigm and the vibe coding paradox
- [[entities/sharif-shameem|Sharif Shameem]] — Creator of the original demo
- [[entities/openai|OpenAI]] — Creator of GPT-3
- [[entities/chris-kelly|Chris Kelly]] — Articulator of the production counterpoint

## Sources

- [[references/on-curiosity-sharif-shameem-ai-eng-2025|On Curiosity — Sharif Shameem, Lexica (AI Engineer World's Fair 2025)]]
- [[references/the-new-code-sean-grove-openai|The New Code — Sean Grove, OpenAI (AI Engineer World's Fair 2025)]] — Vibe coding paradox
- [[references/thinking-deeper-in-gemini-jack-rae-deepmind|Thinking Deeper in Gemini — Jack Rae, Google DeepMind]] — Gemini DQN vibe coding example
- [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment|Vibes Won't Cut It — Chris Kelly, Augment Code (AIEF2025)]] — Production counterpoint to vibe coding