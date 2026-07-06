---
title: 360Brew
category: concepts
tags:
- 360brew
- llm
- recommendation-systems
- personalization
- foundation-model
- linkedin
- multi-task-learning
aliases:
- 360Brew
- Brew XL
sources:
- 'https://www.youtube.com/watch?v=u0s6cfzay5c'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/unified-recommendation-models]]'
  type: implements
- target: '[[concepts/model-distillation]]'
  type: uses
- target: '[[concepts/cold-start-recommendation]]'
  type: extends
- target: '[[concepts/instruction-tuning]]'
  type: uses
- target: '[[concepts/in-context-learning]]'
  type: uses
- target: '[[concepts/promptification]]'
  type: uses
summary: 360Brew
---
# 360Brew

360Brew is LinkedIn's LLM-based foundation model for personalized ranking and recommendation. Presented at AI Engineer World's Fair 2025 by Hamed and Maziar from LinkedIn AI, it represents an attempt to replace dozens of disjoint, task-specific recommendation models with a single model that can solve all of LinkedIn's personalization tasks. ^[extracted]

## Mission

Build one large foundation model based on LLM architecture that:

1. **Solves all personalization tasks** — one model replaces many specialized models
2. **Has zero-shot capability** — new surfaces can be served by prompting the model rather than collecting data and training new models
3. **Leverages in-context learning** — cold-start users can be handled with few examples or natural language descriptions of user interests
4. **Follows instructions** — users can tell the model their niche interests in natural language, and the model acts as the recommendation system ^[extracted]

## The Brewing Pipeline

360Brew is built through a multi-stage pipeline: ^[extracted]

1. **Open-source model** — start with an existing open-weight LLM
2. **Upcycling** — convert the model to a desired size to control throughput vs. quality tradeoff
3. **Continuous pre-training** — train on LinkedIn-specific data to build domain knowledge
4. **Fine-tuning** — adapt to recommendation tasks
5. **Instruction fine-tuning** — teach the model to follow recommendation instructions
6. **Alignment** — align model outputs with LinkedIn's quality standards

This produces **Brew XL**, a ~150 billion parameter model optimized for quality.

## Model Distillation for Production

Brew XL is too expensive to serve online — recommendation systems are "compute-hungry." The model is distilled down to approximately **3 billion parameters** for production serving. ^[extracted]

Key finding: **you have to go big to go small**. Training a small model from scratch does not work well; distillation from a large teacher model is essential for quality in the distilled variant. ^[extracted]

## Promptification

The core technique is converting all user and interaction data into prompts — a process called "promptification." User history, profile information, and past interactions are formatted into a prompt with:

- An instruction describing the task
- Member profile data
- Past interaction history
- A question about the relevance of a new item to the user

This formalizes recommendation as an LLM task, enabling the model to generalize across different instructions and tasks. ^[extracted]

## Scaling Levers

Three levers were experimentally validated for improving model quality: ^[extracted]

1. **Data scaling** — more user behavior data → better performance. LinkedIn can log data spanning 6 months to a year.
2. **Model size** — going from 7B to 8×22B architecture showed consistent quality improvement.
3. **Context length** — feeding more user history to the model improves performance. However, beyond a certain point, performance drops because current models do not generalize well to very long contexts (contrary to literature that suggests context length alone should be sufficient).

## Results

### Cold-Start Users

360Brew's gap over production models **grows as the number of interactions decreases** — for users with fewer than 5 or 100 interactions, the 360Brew model significantly outperforms existing production models. This demonstrates that the world knowledge the model inserts into the system improves predictions for data-sparse users. ^[extracted]

### Out-of-Domain Generalization

The model was evaluated on four tasks completely unseen during training (out-of-domain surfaces). The talk demonstrated that 360Brew generalizes to problems it has never encountered in its training data, validating the zero-shot capability promise. ^[extracted]

## Automation

The brewing pipeline involves many complex stages, requiring extensive automation to keep the development cycle smooth and manageable. Building automation into the pipeline was identified as a key lesson for making large model development tractable. ^[extracted]

## Related Concepts

- [[concepts/unified-recommendation-models|Unified Recommendation Models]] — 360Brew is a LinkedIn-specific implementation of this pattern
- [[concepts/model-distillation|Model Distillation]] — Brew XL → 3B distillation pipeline
- [[concepts/cold-start-recommendation|Cold Start in Recommendation Systems]] — 360Brew addresses cold start via in-context learning
- [[concepts/recsys-foundation-model|Recommendation Foundation Models]] — 360Brew is a LinkedIn-specific foundation model
- [[concepts/continued-pre-training|Continued Pre-training]] — LinkedIn-specific pre-training stage in the pipeline
- [[concepts/instruction-tuning|Instruction Tuning]] — teaching the model to follow recommendation instructions
- [[concepts/in-context-learning|In-Context Learning]] — leveraging few examples for cold-start users
- [[entities/linkedin|LinkedIn]] — company that built 360Brew
- [[entities/hamed-linkedin-ai|Hamed (LinkedIn AI)]] — co-presenter
- [[entities/maziar-linkedin-ai|Maziar (LinkedIn AI)]] — co-presenter
