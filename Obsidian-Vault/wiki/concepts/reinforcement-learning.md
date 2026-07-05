---
title: "Reinforcement Learning"
category: concepts
tags: [reinforcement-learning, rl, learning, search, bitter-lesson, rich-sutton]
summary: "A machine learning paradigm where systems learn by interacting with their environment. Sutton identifies it as one of the two general methods (with search) that consistently outperform domain-knowledge approaches."
sources:
  - "The Bitter Lesson — Rich Sutton - https://www.incompleteideas.net/IncIdeas/BitterLesson.html"
  - "AIEF2025 - On Engineering AI Systems that Endure The Bitter Lesson - Omar Khattab, DSPy & Databricks - https://www.youtube.com/watch?v=qdmxApz3EJI"
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/bitter-lesson|The Bitter Lesson]]"
    type: exemplifies
  - target: "[[concepts/search-and-learn|Search and Learn]]"
    type: implements
  - target: "[[entities/rich-sutton|Rich Sutton]]"
    type: pioneered_by
---

# Reinforcement Learning

**Reinforcement Learning (RL)** is a machine learning paradigm where systems learn by interacting with their environment — receiving feedback (rewards/punishments) and adjusting behavior to maximize cumulative reward. **Rich Sutton** is a pioneer of RL and author of The Bitter Lesson. ^[extracted]

## RL and the Bitter Lesson

In The Bitter Lesson, Sutton identifies **learning** (which includes reinforcement learning) as one of the two general methods that consistently outperform domain-knowledge approaches. RL exemplifies this: the system learns to understand its environment through experience, without human-specified rules. ^[extracted]

## Sutton's Connection

Sutton's work on RL is directly connected to the Bitter Lesson: his research demonstrates that systems which learn from interaction (rather than being hard-coded with domain knowledge) consistently achieve better results as compute scales. This is the core empirical finding of the Bitter Lesson. ^[inferred]

## Relationship to Search

In Sutton's framing, search and learning are complementary:

- **Search**: exploring solution spaces at inference time
- **Learning**: improving the system's understanding through training

Both leverage computation rather than domain knowledge. ^[extracted]

## Related

- [[concepts/bitter-lesson|The Bitter Lesson]] — Sutton's essay
- [[entities/rich-sutton|Rich Sutton]] — RL pioneer and Bitter Lesson author
- [[concepts/search-and-learn|Search and Learn]] — The two winning methods
- [[concepts/ai-engineering|AI Engineering]] — How AI engineers apply these principles
