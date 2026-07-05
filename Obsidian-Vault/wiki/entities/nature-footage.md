---
title: Nature Footage
category: entities
tags: [company, stock-footage, video-library, multimodal-search, wildlife]
summary: "A stock footage company with extensive wildlife video library (lions, tigers, bears, crocodiles). Caylent built a multimodal video search system for them using Nova Pro and Titan V2 embeddings."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: peripheral
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/caylent]]"
    type: related_to
  - target: "[[entities/randall-hunt]]"
    type: related_to
---

**Nature Footage** is a stock footage company with an extensive library of wildlife videos including lions, tigers, bears, and crocodiles. **[[entities/caylent|Caylent]]** built a multimodal video search system for them.

## The Problem

The company had a large video library that needed to be indexed and made searchable. Traditional keyword-based search was insufficient for finding specific scenes in wildlife footage.

## The Solution

Caylent built a multimodal search system:

1. Frame samples extracted from videos
2. **[[entities/amazon-nova|Nova Pro]]** models generate per-frame embeddings
3. Embeddings are pooled into single video-level representations using **[[entities/amazon-titan|Titan V2 multimodal embeddings]]**
4. Pooled embeddings stored in **[[entities/elasticsearch]]** with timestamps and metadata
5. Text queries can find relevant videos by comparing against pooled embeddings

## Significance

This was one of Randall Hunt's key demonstrations at AIEF2025, illustrating practical multimodal search architecture. The pooling embedding technique was highlighted as a key innovation for efficient video-level search. ^[extracted]

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
