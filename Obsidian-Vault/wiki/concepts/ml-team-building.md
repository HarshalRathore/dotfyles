---
title: "Building the First ML Team"
category: concepts
tags: [ml-team, platform, mlops, automation, team-building]
aliases: [first ml team, building ml team, ml platform strategy]
relationships:
  - target: "[[concepts/generalist-vs-specialist]]"
    type: extends
  - target: "[[concepts/ai-hiring-trade-offs]]"
    type: related_to
  - target: "[[concepts/ai-native-toolchain]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=sbuxrluvrwk"
summary: "Building the first ML team from scratch: custom MLOps platform, generalist hiring, automation-first approach, and scaling to hundreds of thousands of concurrent models."
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Building the First ML Team

A playbook for building the first machine learning team from scratch, based on [[entities/denys-linkov|Denys Linkov]]'s experience as the first engineer hired to build an ML team at a conversational AI / AI agent building platform. ^[extracted]

## The Mandate

Denys was hired with the mandate: "we want ML." After working with business teams and leadership, the final set of goals was:

1. Serve hundreds of thousands of concurrent models
2. Multi-domain support
3. Cost efficiency
4. Real-time training and serving

These are described as "tough goals" that required a comprehensive approach. ^[extracted]

## The Approach

### Custom MLOps Platform

The team wrote a custom MLOps platform for deployments to match their specific requirements. This platform investment was the foundation that allowed generalist engineers to operate at a high level. ^[extracted]

### Generalist Hiring

The team hired generalists rather than specialists — people who could span model training, model serving, and business acumen. The platform and automation raised the floor for everyone. ^[extracted]

### Automation-First

The team supported generalists "by automation across the board." This means repetitive tasks, infrastructure management, and operational overhead were automated so that generalists could focus on high-value work. ^[extracted]

### Encoder Models and RAG

The team mainly fine-tuned encoder models (rather than large decoder models) and built RAG (Retrieval-Augmented Generation) as a service. This is a cost-efficient approach that avoids the expense of training large foundation models. ^[extracted]

### Full Ownership

The team owned six microservices end-to-end — not just the model training, but the entire ML lifecycle including serving, monitoring, and iteration. ^[extracted]

## Skills Focus

Three areas were prioritized for the team:

1. **Model training** — General architectures, encoder fine-tuning, data engineering with Hugging Face
2. **Model serving** — Using platform abstractions, understanding trade-offs
3. **Business acumen** — Engineers who could get on customer calls

## Key Takeaway

Building the first ML team requires platform investment before hiring. The platform raises the floor, allowing generalists to achieve outcomes that would typically require specialist teams. ^[inferred]

## Related

- [[concepts/generalist-vs-specialist|Generalist vs. Specialist Hiring]] — Why generalists work with platform support
- [[concepts/ai-hiring-trade-offs|AI Hiring Trade-offs]] — The three-axis skills framework
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — Re-architecting the developer toolchain for AI
- [[concepts/small-team-scaling|Small Team Scaling]] — Hiring exceptional individuals
- [[entities/denys-linkov|Denys Linkov]] — Source of this experience
