---
title: Cloud-Scale Agent Architecture
tags:
- agent
- architecture
- cloud
- production
- aws
sources:
- 'https://www.youtube.com/watch?v=ht4l0dep69i'
summary: '"An architecture pattern for deploying AI agents at cloud scale using managed services: model hosting via a foundation model API, agentic loop and history via a managed agent service, and tool exec...'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: concepts
---
# Cloud-Scale Agent Architecture

An architecture pattern for deploying AI agents at cloud scale using managed infrastructure services. The pattern separates concerns across three layers: model hosting, agent orchestration, and tool execution. ^[extracted]

## Architecture Layers

### 1. Model Layer

The LLM that provides natural language understanding. Hosted via a foundation model API (e.g., Amazon Bedrock, Anthropic API) rather than running locally. The model is chosen for capability/performance/cost trade-offs. ^[extracted]

### 2. Agent Orchestration Layer

A managed service that handles:
- The agentic loop (think → act → evaluate → loop)
- Conversational and execution history
- Prompt templating and instruction management
- Agent versioning and aliasing

In the AWS pattern, this is Amazon Bedrock Agents. ^[extracted]

### 3. Tool Execution Layer

Serverless functions (e.g., AWS Lambda) that implement individual tools. Each tool is a deterministic function that receives structured input from the LLM and returns a result. The functions can interact with any external system — databases, APIs, email, etc. ^[extracted]

## Pattern Characteristics

- **Fully managed** — No infrastructure to provision or scale manually
- **Cloud-native** — Built for automatic scaling; handles traffic spikes without intervention
- **IaC-compatible** — All configuration can be managed via Terraform, Pulumi, CloudFormation, or SDK
- **Production-ready** — Includes lifecycle management (prepare, publish, alias) for environment promotion

## Contrast with Local Agents

| Aspect | Local Agent | Cloud-Scale Agent |
|---|---|---|
| Model | Runs on laptop (e.g., Llama 3.1 8B via Ollama) | Hosted via API (e.g., Claude Haiku 3.5 via Bedrock) |
| Loop | Hand-written in application code | Managed by service |
| History | In-memory or local storage | Managed by service |
| Tools | Local function calls | Serverless functions (Lambda) |
| Scaling | Single machine | Automatic cloud scaling |
| Lifecycle | Manual | Alias-based versioning |

## Related Pages

- [[entities/amazon-bedrock-agents]] — The AWS implementation of this pattern
- [[entities/aws-lambda]] — The tool execution backend
- [[concepts/agent-loop]] — The agentic loop pattern
- [[concepts/cloud-for-agents]] — The broader vision of cloud infrastructure for agents
- [[concepts/12-factor-agents]] — Production patterns for reliable agents
