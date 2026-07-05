---
title: "Natural Language Tool Schemas"
tags:
  - agent
  - tools
  - llm
  - prompt-design
  - schema
sources:
  - "[[sources/watchv=ht4l0dep69i]]"
summary: "The paradigm of describing agent tools and their parameters in natural language rather than formal code schemas, relying on the LLM's language understanding to determine tool relevance and parameter requirements.
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.82
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---
# Natural Language Tool Schemas

A tool description paradigm where agent tools and their parameters are defined in natural language rather than formal code schemas (JSON Schema, OpenAPI, etc.). The LLM reads these descriptions to determine whether a tool is relevant to a given user request and how to invoke it. ^[extracted]

## How It Works

In Amazon Bedrock Agents, every level of tool definition uses natural language descriptions:

1. **Action group description** — Tells the LLM what domain of capabilities this group covers
2. **Tool description** — Tells the LLM what the specific tool does and when to use it
3. **Parameter description** — Tells the LLM what each parameter means and when to provide it

The LLM's natural language understanding replaces the need for rigid schema matching. When a user says "roll for initiative," the LLM reads the tool description ("roll dice with a certain number of sides") and determines relevance. ^[extracted]

## Implications

- **Pros** — More intuitive for developers to write; leverages the LLM's core strength (language understanding); flexible descriptions that adapt as the model improves
- **Cons** — Less precise than formal schemas; quality depends on description writing skill; harder to validate at tool-definition time
- **Emerging pattern** — As models improve, natural language descriptions may become sufficient for most tool use cases, reducing the need for formal schemas

## Related Pages

- [[concepts/action-groups]] — Where natural language tool schemas are used in Bedrock Agents
- [[concepts/12-factor-agents]] — Factor 4: "Tool Use Is JSON + Code" — the complementary view that the LLM outputs JSON which deterministic code executes
- [[concepts/context-engineering]] — The thesis that agent quality reduces to getting the right tokens into the model; tool descriptions are a form of context engineering
