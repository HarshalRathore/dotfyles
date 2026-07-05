---
title: "Amazon Q Developer"
tags:
  - aws
  - ai-coding-assistant
  - code-generation
  - ide
  - cli-agent
sources:
  - "[[sources/watchv=ht4l0dep69i]]"
  - "AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo"
summary: "AWS's AI-powered coding assistant built into the AWS console's code editor. Also available as a CLI agent with agentic chat experience, MCP integration, and file read/write capabilities — built in just three weeks."
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/aws-lambda|AWS Lambda]]"
    type: related_to
  - target: "[[entities/antje-barth|Antje Barth]]"
    type: related_to
  - target: "[[concepts/agentic-services|Agentic Services]]"
    type: implements
---
# Amazon Q Developer

AWS's AI-powered coding assistant that is built directly into the AWS console's code editor. It provides real-time code suggestions and completions based on the developer's current context. ^[extracted]

## Q Developer CLI Agent

A few months after the initial release, AWS launched **Amazon Q Developer for CLI** — an agentic chat experience that brings AI into the terminal. ^[extracted]

### CLI Capabilities

- **Debug issues** in code and infrastructure
- **Answer natural language questions** about code and services
- **Read and write files** in the terminal
- **MCP integration** — discovers and connects to MCP servers for tool access
- **Permission-aware** — requests user permission before using discovered tools
- **Grounded responses** — returns answers based on official documentation when using MCP tools

### Build Speed

The AWS internal team built and shipped the Q Developer CLI agent in **three weeks** — demonstrating the speed possible with model-driven agent design. ^[extracted]

### MCP Demo

When asked about Amazon Bedrock in the CLI, Q Developer:
1. Detected an available MCP tool (AWS documentation MCP server)
2. Connected to it via MCP
3. Requested user permission
4. Returned a response grounded in official AWS documentation

This demonstrates MCP as a first-class tool discovery and execution layer. ^[extracted]

## Demonstrated Use Case

During Mike Chambers' AIEF2025 talk, Amazon Q Developer was used inside the Bedrock Agents console to implement a Lambda function for a dice-rolling tool. Q Developer:

1. Suggested importing `random` when Chambers started writing the dice-roll logic
2. Provided tab-completable code for formatting the response body, having inferred from context that the function needed to return a random number in RPG-appropriate format

Chambers noted that Q Developer "knows exactly what I want to do by this point" as the context built up through the implementation. ^[extracted]

## Related Pages

- [[entities/aws-lambda]] — The Lambda environment where Q Developer was used
- [[entities/mike-chambers]] — Demonstrated Q Developer in his AIEF2025 talk
- [[entities/antje-barth]] — Highlighted Q Developer CLI as a speed example
- [[concepts/agentic-services|Agentic Services]] — Q Developer CLI as an agentic service
- [[concepts/mcp-native-integration|MCP Native Integration]] — MCP integration in Q CLI