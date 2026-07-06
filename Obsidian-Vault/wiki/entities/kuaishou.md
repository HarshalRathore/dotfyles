---
title: "Kuaishou"
category: entities
tags: [company, short-video, recommendation-systems, recsys, china]
aliases: []
sources:
  - "https://www.youtube.com/watch?v=2vlcqd6igva"
summary: "China's number two short video platform; pioneered trainable multimodal semantic IDs for recommendation systems and created the Kling text-to-video model."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Kuaishou

A major short video platform in China, comparable to TikTok (Douyin). Described as the number two short video platform in China. Also known for releasing Kling, a text-to-video model. ^[extracted]

## Recommendation System Innovation

Kuaishou developed a trainable multimodal semantic ID approach for their recommendation system, described in Eugene Yan's REXIS keynote:

- **Scale**: users upload hundreds of millions of short videos daily
- **Challenge**: learning meaningful representations at this scale with traditional hash-based item IDs
- **Solution**: two-tower network with content encoders (ResNet for visual, BERT for descriptions, VGG-ish for audio) feeding into trainable cluster ID embeddings
- **Key mechanism**: cluster IDs (1,000 clusters for ~100M videos via k-means) mapped to a trainable embedding table that bridges content space and behavioral space
- **Results**: outperformed hash-based IDs on clicks and likes; 3.6% increase in cold-start coverage; improved cold-start velocity ^[extracted]

## Related

- [[concepts/semantic-ids]] — The approach Kuaishou pioneered
- [[concepts/cold-start-recommendation]] — The problem their approach addresses
- [[references/improving-recsys-search-llms-eugene-yan]] — Source talk

## Sources

- [[references/improving-recsys-search-llms-eugene-yan|Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs]]
