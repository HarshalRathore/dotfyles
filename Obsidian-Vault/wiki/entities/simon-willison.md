---
title: "Simon Willison"
category: entities
tags:
  - person
  - speaker
  - python
  - web
  - llm
  - aief2025
aliases:
  - Simon W
sources:
  - "AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo"
summary: "Speaker and Python/web developer who presented a six-month LLM landscape review at AIEF2025, including his informal SVG pelican-on-bicycle benchmark for evaluating text model code-output capabilities."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/pelican-bicycle-benchmark|Pelican-on-Bicycle Benchmark]]"
    type: created
---

# Simon Willison

**Simon Willison** is a speaker, Python developer, and web engineer known for his work on the Django community and open-source tooling. At AIEF2025 he presented "2025 in LLMs so far, illustrated by Pelicans on Bicycles" — an informal but insightful survey of the six months leading up to the event.

## AIEF2025 Talk: 2025 in LLMs

Simon's talk covered approximately 30 significant model releases from the previous six months, organized chronologically from December through March. Rather than relying on traditional benchmarks and leaderboards (which he expressed growing distrust of), Simon used his own informal evaluation method: prompting text models to generate SVG code of a pelican riding a bicycle. ^[extracted]

The talk covered:

- **December**: Amazon Nova models (noted for 1M token context windows and extremely low pricing, with Nova Micro as the cheapest tracked model), Llama 3.3 70B (which Simon noted matched Meta's 405B GPT-4-class model, making it possible to run on a consumer laptop), and DeepSeek V3 (released by dumping weights on Hugging Face on Christmas Day with no documentation — a 685B model reportedly trained for ~$5.5M). ^[extracted]
- **January**: DeepSeek R1 (the first major reasoning model from the lab, benchmarking near O1 on some tasks, causing a massive NVIDIA stock drop), and Mistral Small 3 (24B, running on his laptop alongside VS Code and Firefox). ^[extracted]
- **February**: Claude 3.7 Sonnet (Anthropic's first reasoning model), GPT-4.5 (described as "a lemon" and deprecating six weeks later at $75/1M input tokens — 750× more expensive than GPT-4o Nano but not 750× better), and the broader observation that good model prices have crashed ~500× over three years. ^[extracted]
- **March**: O1 Pro (twice as expensive as GPT-4.5, "super expensive" per Simon's own benchmark cost), Gemini 2.5 Pro (which he praised highly), and OpenAI's GPT-4o native multimodal image generation launch (100M new signups in a week, with a notable "memory" feature that added unrequested elements to images). ^[extracted]

## The Pelican-on-Bicycle Benchmark

Simon developed an informal benchmark where he prompts text (non-image) models to generate SVG code of a pelican riding a bicycle. He chose this because:

1. SVG is code, so text models should be able to produce it
2. Drawing a bicycle correctly is hard (even for humans)
3. Pelicans can't physically ride bicycles (wrong shape), making it an impossible task
4. Models "try really hard" and include helpful comments in the SVG code

The benchmark reveals model capabilities in spatial reasoning, code generation, and creative problem-solving that traditional benchmarks may miss. ^[extracted]

## Related

- [[concepts/pelican-bicycle-benchmark|Pelican-on-Bicycle Benchmark]] — Simon's informal evaluation method
- [[entities/deepseek|DeepSeek]] — discussed extensively (V3 and R1)
- [[entities/mistral-ai|Mistral AI]] — Mistral Small 3 praised as a local model
- [[entities/meta|Meta]] — Llama 3.3 70B highlighted as a turning point for local models
- [[entities/openai|OpenAI]] — GPT-4.5, O1 Pro, and GPT-4o multimodal generation discussed

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
