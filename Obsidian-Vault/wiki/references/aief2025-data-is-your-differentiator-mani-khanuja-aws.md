---
title: "Data is Your Differentiator: Building Secure and Tailored AI Systems — Mani Khanuja, AWS"
category: references
tags:
  - talk
  - ai-engineering
  - data-strategy
  - generative-ai
  - aws
  - bedrock
  - aief2025
  - responsible-ai
sources:
  - "[[sources/watchv=rofhhjmumcc]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---
# Data is Your Differentiator: Building Secure and Tailored AI Systems

Talk by [[entities/mani-khanuja|Mani Khanuja]] ([[entities/aws|AWS]]) at AI Engineer World's Fair 2025.

## Core Thesis

Generative AI adds significant business value when done right, but the foundation must be deeper than the model — it is **your data**. Data represents your company, brand, and organization. The new challenge with generative AI is that data requirements differ fundamentally from traditional ML: generative AI applications need special treatment of data based on the application and business requirements. ^[extracted]

## Three Use Case Archetypes

Mani presented three distinct AI application scenarios, each with different data requirements:

1. **Customer-facing travel agent** — Requires customer profile data (personalization), company data (travel policies, refund eligibility), and strict PII protection. The agent must remember user preferences while maintaining brand trust. ^[extracted]
2. **Employee productivity chatbot** — Requires company data with access control (ensuring employees only see what they're authorized to see). Integration points include Slack, custom apps, and other channels. Data may reside in multiple sources. ^[extracted]
3. **Brand marketing** — Different data requirements entirely, focused on brand voice, campaign data, and customer insights. ^[extracted]

## AI Agent Data Pipeline

For the travel agent example, Mani mapped the complete data flow through an AI agent:

- **Prompt** — System prompt + user queries (queries become part of the prompt = user data)
- **Instructions** — Business rules and policies (company data)
- **Prompt catalog/templates** — Contextual prompt selection based on business needs
- **Context** — Dynamic, no longer static; pulled from multiple data services and sources
- **Model data** — Fine-tuned model data representing the company
- **Every step requires data** — meaningful output depends on data at every stage

## Amazon Bedrock as the Platform

Mani positioned Amazon Bedrock as the comprehensive platform for building generative AI applications, highlighting:

- **Model choice** — Access to multiple foundational models
- **Bedrock Data Automation** — Build custom data pipelines and transform data
- **Model Customizations** — Fine-tune models with company-specific data
- **Model Evaluation** — Evaluate model performance
- **Bedrock Knowledge Bases** — Build RAG applications quickly without writing code from scratch, reducing time to market
- **Responsible AI** — Repeated emphasis throughout the talk ^[extracted]

## Key Message

> Data is not just about transforming, loading, parsing, and storing — those still matter. The most important question is how your data interacts with technology, with people, and whether data silos still exist. With generative AI models that can consume vast amounts of data, organizations can no longer afford data silos. ^[extracted]
