---
title: Action Groups
category: concepts
tags:
- agent
- tools
- aws
- bedrock
- architecture
sources:
- https://www.youtube.com/watch?v=ht4l0dep69i
summary: A collection of tools within a managed agent service (notably Amazon Bedrock Agents) that enables grouping related capabilities. Each action group can be backed by a Lambda function with auto-confi...
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-06'
tier: supporting
created: '2026-07-04'
updated: '2026-07-04'
---
# Action Groups

An **action group** is a collection of tools within a managed agent service. The concept was prominently featured in Amazon Bedrock Agents, where it serves as the bridge between an agent's configuration and its tool execution capabilities. ^[extracted]

## Key Characteristics

- **Tool grouping** — Multiple related tools are bundled under a single action group, which the LLM can then decide to invoke as a unit. ^[extracted]
- **Lambda backend** — In Bedrock Agents, each action group is linked to a Lambda function. The "quick start" flow auto-creates the Lambda, sets up IAM permissions, and connects it to the agent. ^[extracted]
- **Natural language descriptions** — Action groups have descriptions written in natural language that the LLM reads to determine whether this group is relevant to the user's request. ^[extracted]
- **Multiple per agent** — A single agent can have multiple action groups, each handling different domains of tool capabilities. ^[extracted]

## Tool Definition Within Action Groups

Individual tools within an action group are defined with:
1. **Name** — How the LLM refers to the tool
2. **Description** — Natural language explaining what the tool does (read by the LLM for tool selection)
3. **Parameters** — Each with a name, natural language description, type, and required/optional flag

The paradigm: tool schemas are written in natural language, not code schemas. The LLM reads these descriptions to determine relevance. ^[extracted]

## Related Pages

- [[entities/amazon-bedrock-agents]] — The service where action groups originated
- [[entities/aws-lambda]] — The recommended backend for action group tool execution
- [[concepts/natural-language-tool-schemas]] — The paradigm of natural-language tool descriptions
- [[concepts/agent-loop]] — The loop in which action groups are invoked
