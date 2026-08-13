---
title: "LLM Training Pipeline"
category: concepts
tags:
  - llm
  - training
  - loss-function
  - optimization
  - sgd
aliases:
  - training pipeline of LLMs
  - LLM pretraining
sources:
  - "https://video.twimg.com/amplify_video/2083958381459738624/vid/avc1/1280x720/OOa_UkKZGnnk1NYC.mp4"
summary: "The LLM training pipeline: minimize negative log-likelihood (cross-entropy) over next-token predictions with stochastic gradient descent, since full gradients are infeasible at trillion-token scale."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.62
lifecycle: draft
lifecycle_changed: "2026-08-03"
tier: supporting
created: "2026-08-03T00:00:00Z"
updated: "2026-08-03T00:00:00Z"
relationships:
  - target: "[[references/stanford-llms-from-scratch-course]]"
    type: derived_from
  - target: "[[concepts/causal-language-model|Causal Language Model]]"
    type: implements
  - target: "[[concepts/transformers|Transformers]]"
    type: related_to
---

# LLM Training Pipeline

**LLM training** is maximum-likelihood estimation over next-token predictions: the model defines a conditional distribution for every position, and training maximizes the probability it assigns to the tokens actually seen in the data. ^[extracted]

## The Loss

Given a sequence $x_1 \dots x_T$, the chain-rule joint $P(x_1\dots x_T) = \prod_t P(x_t \mid x_{<t})$ turns into the negative log-likelihood loss:

$$\mathcal{L}(\theta) = -\sum_{t=1}^{T} \log P_\theta(x_t \mid x_1 \dots x_{t-1})$$

where each term is the log of the softmax entry for the *observed* token: $\log \left( \text{softmax}(f_\theta(x_{<t}))_{x_t} \right)$. This is the **cross-entropy loss** — the expectation over the true label distribution of the cross-entropy between the model's distribution and the true distribution. For regression, mean squared error is the same thing under a Gaussian likelihood assumption. ^[extracted]

## The Optimizer

The loss is minimized with gradient-based optimizers (SGD, Adam) treated as a black box over the end-to-end differentiable network. Full-batch gradient descent computes the gradient of the average loss over all examples; **stochastic gradient descent** samples one example (or a mini-batch) per step. The per-example gradient is an *unbiased estimate* of the full gradient — noisy but correct in expectation, and the only feasible option when the dataset is a trillion tokens: even one full gradient is too costly, and individual gradients are highly correlated anyway. ^[extracted]

Local minima are not believed to be a practical barrier in high dimensions — the community hypothesis is that high-dimensional landscapes rarely trap gradient descent the way 1D cartoons suggest. ^[inferred]

## Pipeline Summary

1. Tokenize text into subword IDs (BPE vocabulary) ^[extracted]
2. Embed IDs; the model outputs logits; softmax yields next-token distributions ^[extracted]
3. Loss = negative log-likelihood of observed next tokens (cross-entropy) ^[extracted]
4. Optimize with (stochastic) gradient descent; training-time parallelism is safe because causal masking keeps each position's prediction dependent only on earlier tokens ^[inferred]

## Related

- [[references/stanford-llms-from-scratch-course]] — the course lecture this is distilled from
- [[concepts/causal-language-model|Causal Language Model]] — the probability model being trained
- [[concepts/transformers|Transformers]] — the function $f_\theta$ being optimized
- [[concepts/autoregressive-generation|Autoregressive Generation]] — the inference-time counterpart
