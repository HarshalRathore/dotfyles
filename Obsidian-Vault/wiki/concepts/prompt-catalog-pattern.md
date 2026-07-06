---
title: Prompt Catalog Pattern
category: concepts
tags:
- prompt-engineering
- ai-agents
- templates
- generative-ai
- system-design
sources:
- 'https://www.youtube.com/watch?v=rofhhjmumcc'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Prompt Catalog Pattern
---
# Prompt Catalog Pattern

A design pattern where AI agents maintain a catalog of predefined prompt templates and select the appropriate one based on context, user, or business requirements. This pattern moves beyond single static prompts to context-aware prompt selection. ^[extracted]

## How It Works

Instead of a single system prompt for all interactions, the agent:

1. Maintains a catalog of prompt templates
2. Evaluates the current context (user, task, data available)
3. Selects the most appropriate prompt template
4. Combines the template with dynamic context and user input

The design of the catalog and selection logic derives from the business requirements and how the agent is expected to behave. ^[extracted]

## Benefits

- **Consistency** — Standardized prompts for common scenarios
- **Flexibility** — Different prompts for different use cases within the same agent
- **Maintainability** — Prompt changes are localized to the catalog, not scattered across code
- **Business alignment** — Prompt selection logic encodes business rules ^[extracted]

## Relationship to Other Concepts

- Connects to [[concepts/ai-agent-data-pipeline|AI Agent Data Pipeline]] — prompt data as the first pipeline stage
- Relates to [[concepts/prompt-engineering-for-code-review|Prompt Engineering]] — prompt templates as engineering artifacts
- Overlaps with [[concepts/orchestrator-patterns|Orchestrator Patterns]] — prompt selection as a form of orchestration ^[inferred]

## Related Pages

- [[concepts/ai-agent-data-pipeline|AI Agent Data Pipeline]] — Where prompt catalogs fit in the data flow
- [[concepts/dynamic-context-ai|Dynamic Context in AI Agents]] — Prompt selection depends on dynamic context
- [[entities/mani-khanuja|Mani Khanuja]] — AIEF2025 speaker who mentioned prompt catalogs
