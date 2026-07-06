---
title: AI Toolkit (VS Code Extension)
category: concepts
tags:
- vscode
- ai-toolkit
- evaluation
- agent-development
- microsoft
- ide-tools
aliases:
- AI Toolkit VS Code
- VS Code AI Toolkit
- Microsoft AI Toolkit
relationships:
- target: '[[concepts/agent-evaluation-pipeline]]'
  type: implements
- target: '[[concepts/evaluation-first-development]]'
  type: supports
sources:
- 'https://www.youtube.com/watch?v=j4vpq2i0qze'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: AI Toolkit (VS Code Extension)
---

# AI Toolkit (VS Code Extension)

AI Toolkit is a VS Code extension released at Microsoft Build 2025 for building, testing, and evaluating AI agents directly within the development environment. ^[extracted] It consolidates model comparison, agent creation, and evaluation workflows that previously required navigating between multiple web-based tools. ^[extracted]

## Key Features

### Side-by-Side Model Comparison
Compare responses from different models (e.g., GPT-4.1 vs GPT-4.0) to the same prompt within the same interface. This enables rapid manual assessment of model quality differences. ^[extracted]

### Agent Creation
Auto-generate system prompts and configure MCP servers for new agents. The extension provides built-in agent templates (e.g., web scraper) that can be customized for specific use cases. ^[extracted]

### Built-in Agent Evaluation
Run an agent across a dataset of inputs with a single "run all" command. Results appear in a response column with thumbs up/down manual scoring. The extension tracks execution history including tool calls, navigation paths, and data sources used. ^[extracted]

### JSON Lines Export
Evaluation results can be exported as JSON Lines files for integration into automated evaluation systems or CI/CD pipelines. ^[extracted]

### Code Generation
Generate scaffolding code for evaluation workflows using frameworks like OpenAI Agents. Includes MCP server configuration and boilerplate evaluation code. ^[extracted]

## Role in the Evaluation Progression

AI Toolkit supports the first three phases of [[concepts/azure-ai-evaluation-sdk|agent evaluation]]: manual model evaluation, systemic agent evaluation, and batch evaluation. For Phase 4 (automated scale evaluation), the extension integrates with Azure AI Foundry's SDK for programmatic bulk evaluation. ^[inferred]

## Related

- [[concepts/azure-ai-evaluation-sdk]] — Programmatic evaluation at scale (Phase 4)
- [[concepts/agent-evaluation-pipeline]] — Microsoft's broader agent evaluation pipeline
- [[concepts/evaluation-first-development]] — Methodology supported by AI Toolkit
- [[entities/microsoft]] — Microsoft's developer tools ecosystem

## Sources

- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
