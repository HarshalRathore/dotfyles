---
title: "Semantic Collision in Tool Use"
tags:
  - ai-agents
  - tool-use
  - prompt-design
  - accuracy
  - llm
  - tool-selection
category: concepts
sources:
  - "[[sources/watchv=r30col3upug]]"
summary: "The accuracy degradation that occurs when too many tools are exposed to an LLM in a single prompt, caused by semantic overlap between tool definitions."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/natural-language-tool-schemas]]"
    type: related_to
  - target: "[[concepts/orchestrator-patterns]]"
    type: related_to
---

# Semantic Collision in Tool Use

Semantic collision is the accuracy degradation that occurs when an LLM is exposed to too many tools in a single prompt. The more tools registered, the lower the overall accuracy of tool selection. ^[extracted]

## The Phenomenon

When an organization has 300 APIs and registers all 300 as tools for an agent, the model becomes confused about which tool to invoke. This is not a theoretical concern — it has been observed empirically: accuracy decreases as the number of tools per completion call increases. ^[extracted]

The root cause is **semantic overlap** between tool definitions. When two tools have similar purposes, descriptions, or input parameters, the model cannot reliably distinguish between them in a single prompt context.

## Design Principle: Tool Minimization

The practical antidote to semantic collision: ^[extracted]

1. **Reduce the number of tools exposed at any single time.** Group related APIs into composite tools.
2. **Group tools logically.** Organize tools by domain or user intent rather than by API endpoint.
3. **Keep scope specific.** Each tool should represent a single, clear human-facing action.
4. **Use specific names and descriptions.** Ambiguous tool definitions amplify collision.

## Relationship to Other Concepts

- Connects to [[concepts/context-engineering|context engineering]]: the tokens consumed by tool definitions are context that competes with the actual task context.
- Informs [[concepts/orchestrator-patterns|orchestration patterns]]: fewer, better-designed tools make chains and trees more reliable.
- Relates to [[concepts/natural-language-tool-schemas|natural language tool schemas]]: the quality of tool descriptions directly affects collision rates.

## Sources

- AI Engineer World's Fair 2025 — Building Applications with AI Agents, Michael Albada, Microsoft. https://www.youtube.com/watch?v=R30col3UPUg
