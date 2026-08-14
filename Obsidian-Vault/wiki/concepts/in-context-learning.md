---
title: In-Context Learning
category: concepts
tags:
- in-context-learning
- icl
- few-shot
- llm
- cold-start
aliases:
- in-context learning
- ICL
- few-shot learning
sources:
- 'https://x.com/i/status/2083498308899573948'
provenance:
  extracted: 0.75
  inferred: 0.15
  ambiguous: 0.10
base_confidence: 0.72
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: "2026-08-02"
relationships:
- target: '[[concepts/360brew]]'
  type: uses
- target: '[[concepts/cold-start-recommendation]]'
  type: related_to
- target: '[[misc/web-x-com-i-status-2083498308899573948|Stanford LLM Lecture Clip: Tokenization, Causal Attention, and the X Caption]]'
  type: contradicts
summary: In-Context Learning
---
# In-Context Learning

In-context learning (ICL) is the ability of large language models to learn from examples provided in the prompt, without any weight updates. In [[concepts/360brew|360Brew]], ICL is used to address the cold-start problem by providing the model with a few examples of user behavior or a natural language description of user interests. ^[extracted]

## Cold-Start Application

For users with very few interactions (cold-start users), 360Brew leverages in-context learning by:

- Providing a few examples of the user's behavior in the prompt
- Or providing a natural language description of what the user might be interested in
- The model then uses these examples to make recommendations without needing a separate cold-start model

This eliminates the need to collect extensive interaction data before serving a user. ^[extracted]

## Why It Matters

Traditional recommendation systems require substantial interaction history before they can make accurate predictions. In-context learning allows an LLM to generalize from very few examples, making it particularly valuable for cold-start scenarios where data is sparse. ^[inferred]

## Related

- [[concepts/360brew|360Brew]] — ICL is one of 360Brew's four main characteristics
- [[concepts/cold-start-recommendation|Cold Start in Recommendation Systems]] — ICL directly addresses cold start
- [[concepts/zero-shot-learning|Zero-Shot Learning]] — ICL is the few-shot variant of zero-shot capability


## Source Integrity Note

An X post labels a chapter in its embedded media “In-Context Learning makes AI smarter for free.” The captured 76m48s media instead transcribes as a transformer fundamentals lecture; its sections around `00:38:00` and `00:59:00` discuss attention and causal masking, and the transcript contains no identifiable in-context-learning explanation. Treat the chapter label as **ambiguous** rather than evidence about ICL. ^[ambiguous]