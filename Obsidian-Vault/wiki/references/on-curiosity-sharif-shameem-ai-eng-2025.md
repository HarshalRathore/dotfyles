---
title: "On Curiosity — Sharif Shameem, Lexica (AI Engineer World's Fair 2025)"
category: references
tags: [ai, llm, demo, exploration, curiosity, ai-engineering]
aliases: [Sharif Shameem AI Eng 2025, On Curiosity talk]
sources:
  - "AI Engineer World's Fair 2025 talk — On Curiosity — Sharif Shameem, Lexica - https://www.youtube.com/watch?v=0F8mnGPUycY"
summary: "Sharif Shameem argues that curiosity-driven demo building is the primary way to discover latent AI model capabilities, and that AI engineers have a moral obligation to explore and share what they find."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# On Curiosity — Sharif Shameem, Lexica

> Sharif Shameem, founder of Lexica, argues that curiosity is the main force for pulling ideas from the future into the present, and that building demos is the most important thing AI engineers can do to explore what's possible with AI models.

## Overview

Sharif Shameem, founder of [[entities/lexica|Lexica]] (generative image models), gave this talk at AI Engineer World's Fair 2025 about the role of curiosity in AI engineering. The talk traces his personal journey building demos with GPT-3 starting in 2020, when context windows were 2,000 tokens and the model cost $75 per million output tokens. He argues that curiosity — a subconscious feeling surfacing from pattern recognition — is the compass for discovering latent model capabilities, and that AI engineering differs fundamentally from traditional engineering in being an act of excavation rather than goal-oriented construction.

## Key Ideas

- **Curiosity as subconscious pattern recognition.** Drawing on Poincaré's account of mathematical discovery, Shameem argues that curiosity is the feeling that surfaces when our brains recognize patterns subconsciously — it pulls ideas from the future into the present. ^[inferred]
- **Demos as the exploration toolkit.** Demos are not just products or proofs-of-concept; they are the primary method for exploring what AI models can do. The way to discover capabilities is to build things and see what happens. ^[extracted]
- **AI engineering as excavation, not construction.** Shameem cites Richard Hamming ("if you know what you're doing, you should not be doing it") to contrast traditional teleological engineering with AI engineering, which is closer to archaeology or mining — you're searching for hidden capabilities. ^[extracted]
- **Latent capabilities are vast and unknown.** Even researchers at labs like OpenAI and Anthropic don't fully know what their models can do. An OpenAI researcher was surprised GPT-3 could browse the web or generate React components. ^[extracted]
- **The "intergalactic spaceship as toaster" problem.** Anthropic markets Claude as a coding/reasoning model, but this is like selling an intergalactic spaceship as a toaster because one of its surfaces gets hot. Models have far more latent capability than their marketed use cases suggest. ^[inferred]
- **The "study barnacles" principle.** Shameem uses Charles Darwin's eight years studying barnacles before publishing evolution to illustrate that in the moment, you cannot distinguish work from play — seemingly useless exploration may be the foundation for a breakthrough. ^[inferred]
- **Foggy pond metaphor.** Exploring AI capabilities is like crossing a foggy pond: you cannot plan the route ahead of time, you take one step and see where it leads. ^[inferred]
- **Moral obligation to explore and share.** Drawing on J.C.R. Licklider's 1960 "Man-Computer Symbiosis" paper, Shameem argues that we have a moral obligation to do justice to the computing pioneers — to follow our curiosity and share what we discover. ^[extracted]

## Key Demos Highlighted

1. **GPT-3 JSX compiler (2020).** Inspired by [[entities/brett-victor|Brett Victor]]'s principle that "creators need immediate feedback," Shameem put a JSX compiler in the browser, enabling real-time code generation. This was the start of vibe coding. ^[extracted]
2. **Three-prompt parallel generation (2020).** Because GPT-3's context window was too small to generate an entire app in one prompt, he used three parallel prompts joined in the background. ^[extracted]
3. **Web-browsing GPT-3 (2021).** To test if GPT-3 had a sense of agency, he built a custom HTML parser to fit web pages into the 4,000-token context window, and gave it the objective of buying AirPods. It failed (got distracted by terms of service) but revealed that models pre-trained on web text have latent agency. ^[extracted]
4. **Multivac (2021).** A visual interface for breaking large problems into digestible sub-problems within the context window — an early version of chain-of-thought / reasoning assistance. ^[extracted]
5. **Farza's basketball tracker (2025).** Built on Gemini 2.5 Pro, this demo shows video-first AI: recording a basketball shot and getting coaching feedback as if Michael Jordan were watching. ^[extracted]

## Historical References

- **Henri Poincaré.** French mathematician whose account of sudden insight while boarding a bus (after weeks stuck on Fuchsian functions) illustrates unconscious work in problem-solving. ^[extracted]
- **Richard Hamming.** Mathematician/engineer known for "if you know what you're doing, you should not be doing it" — used to justify non-teleological engineering. ^[extracted]
- **Charles Darwin.** Spent eight years studying barnacles before publishing On the Origin of Species — illustrating that foundational work often looks like pointless exploration at the time. ^[extracted]
- **J.C.R. Licklider.** His 1960 "Man-Computer Symbiosis" paper envisioned an assistant with perfect context that can help with anything immediately — a vision Shameem argues we are obligated to fulfill. ^[extracted]
- **Alan Kay.** Mentioned alongside Licklider as a computing pioneer whose grand ideas we can now make real. ^[extracted]
- **Brett Victor.** HCI researcher who articulated that "creators need immediate feedback with what they're creating" — a principle that inspired the GPT-3 JSX compiler demo. ^[extracted]

## Quotes

> "If you know what you're doing, you should not be doing it." — Richard Hamming

> "At the moment when I put my foot on the step, the idea came to me." — Henri Poincaré

> "Traditional engineering is very teleological, it's very goal-oriented. But AI engineering is actually closer to excavating. You're looking for new capabilities hidden within these models." — Sharif Shameem

> "Your curiosity is your flashlight guiding you to where the interesting bits of the models are." — Sharif Shameem

> "Selling an intergalactic spaceship as a toaster because one of its surfaces gets hot every once in a while." — Sharif Shameem, on how AI models are marketed vs. what they can do

## Related

- [[concepts/demo-driven-ai-exploration|Demo-Driven AI Exploration]] — Expanded concept page for the talk's core thesis
- [[concepts/ai-engineering-as-excavation|AI Engineering as Excavation]] — The excavation vs. construction paradigm
- [[concepts/latent-model-capabilities|Latent Model Capabilities]] — Hidden capabilities in AI models
- [[concepts/vibe-coding-origins|Vibe Coding Origins]] — Origin of vibe coding traced to early GPT-3 demos
- [[entities/sharif-shameem|Sharif Shameem]] — Speaker biography
- [[entities/lexica|Lexica]] — Shameem's company
- [[entities/jcr-licklider|J.C.R. Licklider]] — Computing pioneer referenced in the talk
- [[entities/openai|OpenAI]] — Creator of GPT-3
- [[entities/anthropic|Anthropic]] — Creator of Claude, subject of "spaceship as toaster" quote

## Sources

- <https://www.youtube.com/watch?v=0F8mnGPUycY> — Full talk recording
