---
title: "Amazon Bedrock Agents"
tags:
  - aws
  - agents
  - managed-service
  - bedrock
  - cloud-scale
sources:
  - "[[sources/watchv=ht4l0dep69i]]"
  - "[[sources/watchv=rofhhjmumcc]]"
summary: "AWS's fully managed service for building, deploying, and versioning AI agents. Handles the agentic loop, conversational history, and tool orchestration with no infrastructure management required.
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---
# Amazon Bedrock Agents

A fully managed service within Amazon Bedrock for building and deploying AI agents. The core value proposition: "no infrastructure to manage" — you configure the agent and Bedrock handles scaling, the agentic loop, and history. ^[extracted] Agents are a key component of the broader AI agent data pipeline, where they process user queries, retrieve dynamic context, and generate responses using company-specific data. ^[inferred]

## Configuration Model

### Instruction

The agent's personality and purpose. In Bedrock terminology, "instruction" is the prompt text that gets combined with a default prompt template (which is editable) to form the actual prompt sent to the model. ^[extracted]

### Action Groups

Collections of tools. Each action group can be linked to a Lambda function via a "quick start" flow that auto-creates the Lambda, sets up permissions, and connects it to the agent. Multiple action groups can be attached to a single agent. ^[extracted]

### Tool Definitions

Within each action group, individual tools are defined with:
- **Natural language description** — Read by the LLM to determine whether to use this tool for a given request
- **Parameter definitions** — Also described in natural language for the LLM, with type (e.g., integer) and required/optional flags

### Agent Aliases and Versioning

Bedrock Agents includes a full software development lifecycle: agents can be prepared, published, and assigned alias IDs for different environments. This enables staging, testing, and production promotion without recreating the agent. ^[extracted]

## Architecture

```
Bedrock Agents (Managed)
├── Instruction + Prompt Template → Actual Prompt
├── Agentic Loop (managed)
├── Conversational History (managed)
├── Action Group 1 → Lambda Function (tool execution)
├── Action Group 2 → Lambda Function
└── Alias-based Versioning (dev/staging/prod)
```

## Related Pages

- [[entities/amazon-bedrock]] — The parent platform
- [[entities/aws-lambda]] — Backend for tool execution
- [[concepts/agent-loop]] — The agentic loop Bedrock manages
- [[concepts/action-groups]] — Action groups as a tool-collection pattern
- [[concepts/agent-aliasing-and-versioning]] — Agent versioning via aliases
