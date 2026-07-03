---
title: "AI Lego Blocks Framework"
category: concepts
tags: [product-strategy, ai-product, differentiation, competitive-advantage]
aliases: [Lego Blocks approach, AI Lego blocks, Lego block framework, assembled AI]
sources:
  - "AI Engineer World's Fair 2025 talk - Survive the AI Knife Fight: Building Products That Win — Brian Balfour, Reforge - https://www.youtube.com/watch?v=1MVh05GDydE"
summary: "A framework for AI product differentiation: assemble off-the-shelf AI capabilities with proprietary data, functionality, and unmet customer need understanding to build moats."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-03
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# AI Lego Blocks Framework

The AI Lego Blocks framework, articulated by [[entities/brian-balfour|Brian Balfour]] at the AI Engineer World's Fair 2025, describes how AI product teams should think about competitive differentiation. Rather than building custom AI models and infrastructure (one trap) or merely copying basic AI features like chatbots (the opposite trap), teams should treat AI as a series of Lego blocks — assembling off-the-shelf AI capabilities with their proprietary data, product functionality, and understanding of unmet customer needs.

## Core Thesis

Competitive advantage does not come from the AI itself, but from what is uniquely yours: ^[extracted]

- **Your data** — provides context for the AI model to generate a unique output
- **Your functionality** — determines how the AI behaves and gives the product superpowers
- **Your understanding of unmet customer needs** — finding the question others aren't actioning

## The Three Lego Block Categories

### 1. AI Capabilities (Commodity)

Pre-trained AI models and abilities (transcription, image processing, audio processing) are widely available to everyone. They are necessary but not sufficient for differentiation. Examples: DeepGram for transcription, Anthropic and OpenAI for language processing. ^[extracted]

### 2. Proprietary Data

Data provides context that enables the AI model to generate unique outputs. Types include: ^[extracted]

- **Real-time data** — not yet incorporated into model training sets
- **User-specific data** — individual user context
- **Domain-specific data** — curated for verticals like legal and healthcare
- **Human judgment data** — curation as well as reinforcement data
- **Combined data** — the marginal value of your data over what's already trained into the large models

### 3. Product Functionality

Determines how the AI behaves and gives it superpowers: ^[extracted]

- Specialized workflows
- Unique algorithms
- Business rules
- Integrations with other tools

## The AI Lego System

The three blocks work as a system: ^[extracted]

- Data informs the AI's understanding, generating unique output, which builds a repository of additional unique data — creating a [[concepts/ai-data-output-flywheel|data-output flywheel]]
- Functionality controls the AI's actions, when it's called, and how it interacts with the product experience
- AI is increasingly able to call tools and functionality within the product itself

## Sequencing as a Strategy

Initial assembly of the three Lego blocks is not enough. Teams must sequence new blocks over and over again — leveraging the initial set into new unique assemblies to stay ahead. As [[entities/jamin-ball|Jamin Ball]] expressed, the real moat is a [[concepts/sequence-of-moats|sequence of smaller moats stacked together]]. ^[extracted]

## Case Study: Granola

The [[entities/granola|Granola]] note-taking product exemplifies the framework:

- **AI capabilities used**: off-the-shelf DeepGram for transcription, Anthropic and OpenAI for language processing — no custom models
- **Proprietary data**: combines user's own notes with AI-generated transcription to enhance, not replace, note-taking
- **Functionality**: Mac app detects meeting start, accesses system sound, integrates with calendar for attendee metadata
- **Unmet customer need**: not "take all my notes for me" but "help me take better notes"

## Related Concepts

- [[concepts/sequence-of-moats]] — The need for stacked, accelerating competitive advantages
- [[concepts/ai-data-output-flywheel]] — How unique data generates unique outputs that generate more data
- [[concepts/pit-of-success-design]] — Designing product architecture to make the right thing easy
- [[concepts/enterprise-ai-app-factory]] — Enterprise AI application patterns

## Sources

- [[references/survive-ai-knife-fight-brian-balfour|Survive the AI Knife Fight: Building Products That Win — Brian Balfour, Reforge]]
