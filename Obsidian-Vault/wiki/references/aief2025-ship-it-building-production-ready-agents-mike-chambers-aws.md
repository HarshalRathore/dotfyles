---
title: AIEF2025 - Ship it! Building Production Ready Agents — Mike Chambers, AWS
category: references
tags:
- ai-engineering
- agents
- production
- aws
- bedrock
- lambda
- conference-talk
- ai-eng-worlds-fair-2025
sources:
- https://www.youtube.com/watch?v=ht4l0dep69i
summary: AWS Developer Advocate Mike Chambers demonstrates taking a local Python agent to cloud scale using Amazon Bedrock Agents, Lambda for tool execution, and the full managed agent lifecycle — from conf...
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
# AIEF2025 - Ship it! Building Production Ready Agents — Mike Chambers, AWS

> Talk at AI Engineer World's Fair 2025. Mike Chambers, Developer Advocate for Amazon Web Services specializing in generative AI, demonstrates a complete path from local agent to cloud-scale production deployment.

## Summary

Mike Chambers presents a hands-on walkthrough of building production-ready AI agents at cloud scale using AWS's managed services. The talk begins with a local Python agent (running Llama 3.1 8B on a laptop) that rolls dice for tabletop RPG gameplay, then shows how to lift that same agent into a fully managed cloud environment using Amazon Bedrock Agents, with Lambda functions powering the tool layer.

## Key Points

### From Local to Cloud Scale

The talk opens with a minimal agent: a single Python file using the Ollama library to run Llama 3.1 8B locally. The agent has one tool — a dice roller (random number generator) — and a system prompt with examples to help the tiny model understand tool usage. When given the prompt "roll for initiative, add a dexterity modifier of five," the agent parses the natural language, selects the dice-roll tool, executes it (rolling a 10), adds the modifier (+5), and returns the result (15). ^[extracted]

### Agent Anatomy: Five Core Components

Chairs identifies five essential components any production agent needs:

1. **Model** — The natural language understanding engine. AWS provides access to models from Anthropic, Amazon (Nova), Meta, Mistral, and AI21 Labs through Bedrock. ^[extracted]
2. **Prompt** — Explains the agent's purpose, personality, and capabilities. In Bedrock Agents, this is called "instruction" and gets combined with a prompt template. ^[extracted]
3. **Loop** — The agentic loop: think → use tool → evaluate result → decide whether to loop again. Described as "nothing much more than a while statement with some strings flowing around." ^[extracted]
4. **History** — Both conversational history (remembering what the user asked) and execution history (remembering what the agent itself did in previous steps). Crucial for multi-step reasoning. ^[extracted]
5. **Tools** — How the agent exercises agency in the outside world. In the Bedrock pattern, tools are hosted as Lambda functions. ^[extracted]

### Amazon Bedrock Agents: Fully Managed

The core service is Amazon Bedrock Agents — a fully managed service with no infrastructure to manage. Configuration consists of:

- **Instruction** — The agent's personality/prompt, combined with a default prompt template (editable) to form the actual prompt sent to the model. ^[extracted]
- **Action Groups** — Collections of tools. Each action group links to a Lambda function via a "quick start" option that auto-creates the Lambda, sets permissions, and hooks it up. ^[extracted]
- **Tool definitions** — Within each action group, individual tools are defined with natural-language descriptions (read by the LLM to decide whether to use the tool) and parameter schemas (also described in natural language for the LLM). ^[extracted]

### Tool Schema as Natural Language

A key paradigm shift emphasized by Chambers: tool descriptions and parameter schemas are written in natural language, not code schemas. The LLM reads these descriptions to determine whether a tool is relevant to the user's request. This applies at every level — action group descriptions, tool descriptions, and parameter descriptions. ^[extracted]

### Lambda as Tool Backend

Lambda functions are the recommended execution backend for Bedrock Agent tools. The quick-start flow auto-generates boilerplate code in the Bedrock console's IDE (with Amazon Q Developer suggestions), including the event handler that receives the tool name and parameters, executes the logic, and formats the response. ^[extracted]

### Production Lifecycle: Aliases and Preparation

Bedrock Agents includes a full software development lifecycle: agents can be prepared, published, and given alias IDs for different environments. This enables staging, testing, and production promotion without recreating the agent. ^[extracted]

### Infrastructure as Code

While the demo uses the console (ClickOps), Chambers emphasizes that all configuration is possible via Terraform, Pulumi, CloudFormation, SDK, or SAM — the standard AWS IaC tooling. ^[extracted]

### Additional Mentions

- **DeepLearning.AI course** — Chambers co-created the "Fundamentals of LLMs" course with Dr. Andrew Ng, taken by over 370,000 people. It includes free AWS Bedrock environment access. ^[extracted]
- **MCP servers at cloud scale** — Mentioned as a topic for follow-up discussion. ^[extracted]
- **Open-source SDK for model-first agents** — Referenced as content that didn't fit into the presentation time. ^[extracted]

## Related Pages

- [[entities/mike-chambers]] — The speaker
- [[entities/amazon-bedrock]] — The AWS service platform
- [[entities/amazon-bedrock-agents]] — The managed agent service
- [[entities/aws-lambda]] — The function-as-a-service backend
- [[concepts/agent-loop]] — The agentic loop pattern
- [[concepts/agent-development-lifecycle]] — Agent lifecycle management
- [[concepts/action-groups]] — Action groups as a tool-collection pattern
- [[concepts/natural-language-tool-schemas]] — Natural language tool descriptions
- [[concepts/agent-aliasing-and-versioning]] — Agent versioning via aliases
- [[references/12-factor-agents-patterns-dex-horthy-humanlayer]] — Complementary production patterns

## Sources

- Video: <https://www.youtube.com/watch?v=HT4l0DeP69I>
