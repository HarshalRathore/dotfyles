---
title: "Reinforcement Learning from Human Feedback (RLHF)"
category: concepts
tags: [rlhf, reinforcement-learning, human-feedback, llm, instruction-tuning, aief2025]
aliases: [RLHF, human feedback, reinforcement learning from human feedback, preference learning]
sources:
  - "[[sources/watchv=qludzkvfp6a]]"
summary: "Training LLMs to prefer better responses using human preference data. Teaches models to follow instructions and also works in code, producing performance improvements."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/reinforcement-fine-tuning|Reinforcement Fine-Tuning]]"
    type: precursor_to
  - target: "[[concepts/agentic-coding|Agentic Coding]]"
    type: enables
  - target: "[[concepts/inference-time-compute|Inference-Time Compute Scaling]]"
    type: contrasts_with
---

# Reinforcement Learning from Human Feedback (RLHF)

**RLHF** is a training technique where models learn to prefer better responses by being trained on human preference data. It was the key technique that made instruction-following and chatbot applications possible. ^[extracted]

## How It Works

The RLHF training loop: ^[extracted]

1. A set of questions is given to the model
2. The model generates multiple responses
3. Humans rank which response they prefer
4. The model is trained to produce higher-ranked responses

If you have enough of this data and train your model on it, you end up with better performance because you've taught the model which set of responses to prefer. ^[extracted]

## Impact

RLHF was the technique that made models able to follow instructions — not just generate text, but actually do what they're told. This enabled: ^[extracted]

- **Chatbot applications** — ChatGPT, Gemini, and other conversational AI
- **Instruction following** — Models that can execute complex instructions
- **Code performance improvements** — RLHF also works in code, producing measurable gains

## Relationship to Other Techniques

RLHF is a training-time technique, as opposed to [[concepts/inference-time-compute|inference-time compute scaling]] where improvements happen during inference. Both aim to improve model outputs, but through different mechanisms: ^[inferred]

- **RLHF**: Improve the model's weights through human preference data
- **Inference-time scaling**: Improve outputs by spending more compute per request

[[concepts/reinforcement-fine-tuning|Reinforcement Fine-Tuning (RFT)]] extends RLHF specifically for reasoning models, using automated graders instead of human feedback. ^[inferred]

## Sources

- AIEF2025 - RL for Autonomous Coding — Aakanksha Chowdhery, Reflection.ai - https://www.youtube.com/watch?v=QluDzKVfp6A
