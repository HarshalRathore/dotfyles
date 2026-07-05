---
title: "Agent Development Lifecycle"
category: concepts
tags:
  - agents
  - development
  - lifecycle
  - evaluation
  - model-selection
  - prompt-design
aliases: [agent development process, agent lifecycle, building agents]
relationships:
  - target: "[[concepts/evaluation-first-development]]"
    type: extends
  - target: "[[concepts/agent-evaluation-pipeline]]"
    type: extends
sources:
  - "[[sources/watchv=j4vpq2i0qze]]"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Agent Development Lifecycle

The agent development lifecycle encompasses the full process from model selection through evaluation and deployment. ^[extracted] It emphasizes that evaluation is not a post-build phase but a continuous activity that starts at the very beginning of agent development. ^[extracted]

## Key Stages

### 1. Model Selection
Evaluate candidate models on representative prompts before committing to one. Compare models side-by-side on quality, speed, and cost. ^[extracted]

### 2. System Prompt Design
Define the agent's behavior through system prompts, grounding strategy, and tool configuration. This is where design matters most for safety. ^[extracted]

### 3. Tool Integration
Connect the agent to tools (MCP servers, web scrapers, APIs) and verify end-to-end functionality on specific inputs. ^[extracted]

### 4. Manual Evaluation
Spot-check individual responses, then batch-evaluate on a curated dataset with manual scoring. ^[extracted]

### 5. Automated Evaluation
Scale evaluation using the Azure AI Evaluation SDK with quality, NLP, and risk/safety evaluators. ^[extracted]

### 6. Continuous Monitoring
Monitor agent behavior in production with continuous observability and periodic re-evaluation. ^[inferred]

## Core Principle

"Evaluation starts at the very beginning of your AI development project — the sooner the better." ^[extracted] Waiting until after building the agent to start evaluating is "a bit late." ^[extracted]

## Relationship to Evaluation-First Development

The agent development lifecycle is the practical implementation of [[concepts/evaluation-first-development|evaluation-first development]] for agentic systems. Where evaluation-first provides the methodology, the lifecycle provides the concrete stages. ^[inferred]

## Related

- [[concepts/evaluation-first-development]] — Methodology for building with early evaluation
- [[concepts/agent-evaluation-pipeline]] — CI/CD integration for continuous evaluation
- [[concepts/manual-vs-automated-evals]] — Evaluation progression within the lifecycle
- [[concepts/layered-agent-safety]] — Safety considerations throughout the lifecycle

## Sources

- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
