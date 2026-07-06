---
title: Amazon Bedrock
tags:
- aws
- ai-infrastructure
- llm
- generative-ai
- managed-service
sources:
- 'https://www.youtube.com/watch?v=ht4l0dep69i'
- 'https://www.youtube.com/watch?v=q3nreeadkmc'
- 'https://www.youtube.com/watch?v=rofhhjmumcc'
- AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo
summary: AWS's fully managed service for building generative AI applications, providing access to foundational models from multiple providers (Anthropic, Amazon, Meta, Mistral, AI21 Labs) through a unified...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: entities
---
# Amazon Bedrock

AWS's fully managed service for building generative AI components into applications. Bedrock provides access to foundational models from multiple leading providers through a unified API, allowing developers to "slot them in" without managing model infrastructure. ^[extracted]

## Model Providers Available

- **Amazon** (Nova models)
- **Anthropic** (Claude models including Haiku 3.5, Claude 3.7 Sonnet)
- **Meta**
- **Mistral AI**
- **AI21 Labs**

## Key Capabilities

### Bedrock Agents

A fully managed sub-service for building and deploying AI agents. Bedrock Agents handles the agentic loop, conversational history, and tool orchestration — requiring no infrastructure management from the developer. Agents are configured via instruction (prompt), action groups (tool collections), and can be published with alias-based versioning. ^[extracted]

### Infrastructure as Code Support

All Bedrock Agent configurations can be managed via Terraform, Pulumi, CloudFormation, SDK, or SAM — not just console-based ClickOps. ^[extracted]

### Strands Agents Integration

[[entities/strands-agents|Strands Agents]] uses Amazon Bedrock (Claude 3.7 Sonnet) as its default model provider. Strands allows any model provider via LiteLLM, but Bedrock is the out-of-the-box default. ^[extracted]

### Bedrock Data Automation

Build custom data pipelines and transform data for AI consumption. Bedrock Data Automation handles data preparation that general-purpose tools cannot, enabling organizations to get company data ready for generative AI applications. ^[extracted]

### Model Evaluation

Evaluate model performance before and after deployment. Compare model versions and configurations to ensure quality assurance for model outputs. ^[extracted]

### Bedrock Knowledge Bases

Build [[concepts/agentic-rag|RAG]] applications quickly without writing code from scratch. Knowledge Bases reduce time to market for retrieval-augmented applications by providing managed context retrieval infrastructure. ^[extracted]

## Responsible AI

Responsible AI is a core Bedrock feature — infrastructure for responsible data handling, PII protection, and governance. This was emphasized throughout Mani Khanuja's AIEF2025 talk "Data is Your Differentiator." ^[extracted]

## Related Pages

- [[entities/amazon-bedrock-agents]] — The managed agent service built on Bedrock
- [[entities/mike-chambers]] — AWS Developer Advocate who demos Bedrock Agents
- [[entities/aws-lambda]] — Recommended backend for Bedrock Agent tools
- [[concepts/agent-development-lifecycle]] — Agent lifecycle management patterns
- [[entities/strands-agents]] — Open-source SDK using Bedrock as default model
- [[entities/suman-debnath]] — AWS developer advocate who introduced Strands
- [[entities/antje-barth]] — AWS speaker who highlighted Bedrock as Strands default
- [[entities/mani-khanuja]] — AWS speaker who articulated Bedrock's data-centric approach at AIEF2025
- [[concepts/bedrock-platform-capabilities]] — Comprehensive Bedrock capability map
