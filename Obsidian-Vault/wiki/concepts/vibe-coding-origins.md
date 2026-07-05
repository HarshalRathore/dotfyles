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
  - "[[sources/watchv=0f8mngpuycy]]"
  - "[[sources/watchv=8rabwkrsec4]]"
  - "[[sources/watchv=8eqo4j2bwkw]]"
  - "[[sources/watchv=dc3qoa9wone]]"
  - "[[sources/watchv=eafp8pds7h4]]"
  - "[[sources/watchv=kcka7rzcxlk]]"
extracted: 0.55
  inferred: 0.40
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
updated: 2026-07-04
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

## Enterprise Vibe Coding

Harold, a VS Code engineer at [[entities/microsoft|Microsoft]], proposes a three-stage maturity model for vibe coding at enterprise scale: YOLO Vibes (creativity and speed without constraints), Structured Vibes (balance with maintainability via starter templates and Copilot Instructions), and Spectrum Vibes (community-vetted best practices for scale and reliability). ^[extracted] This model bridges the gap between the chaotic YOLO approach and production engineering requirements, suggesting that vibe coding doesn't have to be binary — it can evolve through stages that preserve creative energy while adding structure. ^[inferred]

Structured vibe coding uses starter templates with consistent tech stacks, clear LLM instructions, and custom tools that encode domain expertise. Companies use it for bootstrapping Greenfield projects, producing what looks like a finished product in meetings because the AI uses the company's internal design system. ^[extracted]
Harold also frames vibe coding as a whiteboard — a thinking surface where the generated code is secondary to the exploration itself. The key insight: "really about not becoming too attached with whatever you're working on, but being able and willing to throw it out and start from scratch if things go wrong." ^[extracted] This whiteboard mindset is central to YOLO vibe coding and applies equally to structured contexts where the exploration happens within guardrails. ^[inferred]

For workshop and demo purposes, Harold distinguishes between VS Code Stable (monthly release cadence) and VS Code Insiders (daily pre-release builds, analogous to Firefox Nightly or Chrome Canary). ^[extracted] Some features, like the tools picker and certain Copilot settings, may only be available in Insiders, and running Insiders for workshops can cause friction when features behave differently between the two versions. ^[extracted]

## Production Critique

[[entities/chris-kelly|Chris Kelly]] ([[entities/augment-code|Augment Code]]) offers a grounded counterpoint to the "generate and don't examine" approach from a production engineering perspective. His argument: AI-generated code is still code that must be maintained, debugged, and understood. Systems with four-nines reliability requirements and emergent behavior cannot be built on pattern matching alone — every line of generated code carries a maintenance burden, and more code means more to support, not less. ^[extracted]


## LLMs and the Over-Abstraction Problem

Kitze observes that LLMs don't care about repetitive code, which reveals a human tendency to over-abstract. ^[extracted] We care too much about DRY and abstract too early — LLMs make it easier to reach the wrong abstraction quickly. ^[extracted] This is particularly dangerous because the LLM doesn't recognize when an abstraction is premature; it just follows patterns from training data. ^[inferred]

Additionally, Kitze notes that "no one is actually good at writing React" — at every React conference, the first talk makes you realize you've been doing it wrong. ^[extracted] Since everyone invents their own patterns, LLMs (which learn from these patterns) have no "correct" React to learn from, making them both capable and unreliable at the same time. ^[inferred] This means AI-generated React code reflects the chaotic state of the community rather than best practices. ^[inferred]

[[entities/chris-kelly|Chris Kelly]] ([[entities/augment-code|Augment Code]]) frames code review as the most important skill in the AI era — the industry interviews for esoteric algorithms but should instead be interviewing for the ability to read and evaluate code, since that becomes the primary human activity as AI handles more generation. ^[extracted] He also cautions against anthropomorphizing AI outputs: an LLM claiming it "scanned" a file is generating text that sounds reasonable, not describing its actual internal process. ^[extracted] See [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment]] for the full talk.

## The Waves Pattern

[[entities/lukasz-gandecki|Łukasz Gądecki]] ([[entities/thebrain-pro|TheBrain.pro]]) describes a distinct pattern within vibe coding: waves of iterative refinement. The developer starts by telling the AI what they want, generates working code, and iterates through successive waves. Each wave produces less waste — the "amplitude of the waste" decreases until the code stabilizes. Only then does the developer shift to traditional engineering practices like testing and refactoring. ^[extracted]

A key insight: throwing away AI-generated code "feels great" compared to discarding code you poured your heart into. This psychological difference makes the wave pattern more sustainable than traditional edit-and-debug cycles. ^[extracted]

## Refactoring Priority

Gądecki proposes a practical refactoring decision framework: prioritize by **badness × pain × ease**. Code that is very bad and very easy to change but not painful at all is probably not worth refactoring. The common mistake is refactoring the worst code without considering whether it actually causes pain to work with. ^[extracted]

Example: Gądecki had a piece of OpenAI audio processing code that was "JavaScript, very quickly written, no types, very confusing" — but he never had to touch it, so he didn't refactor it despite being tempted. The badness was high, but pain was near zero. ^[extracted]

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
- [[concepts/vibe-coding-as-whiteboard]] — Vibe coding as a thinking surface
- [[concepts/ai-evaluation-market-history]] — AI evaluation through design output quality

## Sources

- [[references/on-curiosity-sharif-shameem-ai-eng-2025|On Curiosity — Sharif Shameem, Lexica (AI Engineer World's Fair 2025)]]
- [[references/the-new-code-sean-grove-openai|The New Code — Sean Grove, OpenAI (AI Engineer World's Fair 2025)]] — Vibe coding paradox
- [[references/thinking-deeper-in-gemini-jack-rae-deepmind|Thinking Deeper in Gemini — Jack Rae, Google DeepMind]] — Gemini DQN vibe coding example
- "AIEF2025 - From Vibe Coding To Vibe Engineering – Kitze, Sizzy - https://www.youtube.com/watch?v=JV-wY5pxXLo" — LLM over-abstraction, React chaos, good-enough judgment
- [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment|Vibes Won't Cut It — Chris Kelly, Augment Code (AIEF2025)]] — Production counterpoint to vibe coding
  - [[references/aief2025-vibe-coding-at-scale-harold.js|Vibe Coding at Scale — Harold, Microsoft (AIEF2025)]] — Three-stage maturity model for enterprise vibe coding
  - "AIEF2025 - Books reimagined: AI to create new experiences for things you know — Łukasz Gądecki, TheBrain.pro - https://www.youtube.com/watch?v=Kcka7rzcxLk" — Waves pattern, refactoring priority matrix, AI voice assistant critique, human touch in AI products