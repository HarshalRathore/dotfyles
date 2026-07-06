---
title: 'Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft'
category: references
tags:
- aief2025
- evaluation
- azure-ai-foundry
- azure-ai-eval-sdk
- agents
- microsoft
- multi-modal-evals
aliases:
- Azure AI Evaluation SDK
- Agent Evals Azure
- Cedric Vidal AIEF2025
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
summary: 'Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft'
---

# Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft

*Cedric Vidal, Principal Advocate, Microsoft — AI Engineer World's Fair 2025*

This talk presents a layered approach to AI agent evaluation, progressing from manual spot-checking of individual models to automated, scalable evaluation of complete agentic systems using the Azure AI Evaluation SDK. ^[extracted]

## Core Thesis

Agent evaluation should start at the very beginning of an AI development project — not as a post-build step. ^[extracted] As agents gain more agency and independence, the risk of creating unintended consequences increases, making systematic evaluation essential rather than optional. ^[extracted]

## Four-Layer Safety Model

Vidal distinguishes four layers of agent safety, each requiring different evaluation approaches: ^[extracted]

1. **Model & Safety System (Platform Layer)** — Built-in protections at the zeroth layer; for Azure models these are pre-configured and require no action from the developer.
2. **System Message & Grounding** — Where design matters most; the system prompt and grounding strategy define the agent's behavior boundaries.
3. **User Experience** — How users interact with the agent and report issues.
4. **Application Layer** — Where smart mitigations are layered on top of the foundation model; this is where evaluation SDKs and custom evaluators operate.

Key takeaway: "The foundation model is just one part — real safety comes from layering smart mitigations at the application layer." ^[extracted]

## Evaluation Progression

### Phase 1: Manual Model Evaluation

Before evaluating agents, evaluate the foundation model itself. Spot-check individual model responses to specific prompts to understand baseline quality. ^[extracted] Automatic metrics can miss nuances that only manual inspection reveals — a high average score may mask poor performance on specific examples. ^[extracted]

### Phase 2: Systemic Agent Evaluation

Once the model is selected, evaluate the complete agent end-to-end. This involves building the agent with tools (MCP servers, web scrapers, etc.) and testing it on specific inputs to verify the full pipeline works correctly. ^[extracted]

### Phase 3: Batch Evaluation

Run the agent across a dataset of inputs, manually reviewing each output with thumbs up/down. Export results as JSON Lines for integration into automated systems. ^[extracted]

### Phase 4: Automated Scale Evaluation

Use the Azure AI Evaluation SDK to run bulk evaluations with built-in quality, NLP, and risk/safety evaluators — programmatically via Python notebooks in Azure AI Foundry. ^[extracted]

## Azure AI Evaluation SDK Capabilities

The SDK provides three categories of built-in evaluators: ^[extracted]

- **Quality evaluators** — Groundedness, fluency, coherence, relevance, similarity for measuring conversation quality
- **Classic NLP metrics** — F1, BLEU, ROUGE for benchmark comparisons
- **Risk and safety evaluators** — AI-assisted assessments of harmful content, violence, and other risk categories

Custom evaluators can also be built for organization-specific criteria. ^[extracted]

## Multimodal Evaluation

The SDK supports evaluation of multimodal models that process both text and images. Evaluators can assess whether images contain violent or harmful content and return graded scores rather than binary pass/fail. ^[extracted] This allows domain-specific threshold configuration — a video game company might accept a violence score of 4/5 while a kids' app would not. ^[extracted]

## Tooling: AI Toolkit VS Code Extension

Vidal demonstrates the AI Toolkit extension for VS Code (released at Build 2025) as the primary tool for manual evaluation. It supports:

- Side-by-side model comparison (e.g., GPT-4.1 vs GPT-4.0 on the same prompt)
- Agent creation with auto-generated system prompts and MCP server configuration
- Built-in agent evaluation with run-all execution on datasets
- Thumbs up/down manual scoring
- JSON Lines export of evaluation results
- Code generation for OpenAI Agents framework and other evaluation scaffolding ^[extracted]

## Threshold Configuration

Evaluator scores range from 1–5, and thresholds are configurable per application context. ^[extracted] A gaming company might set a higher threshold for violent content acceptance than a children's application. This domain-specific thresholding is a key design feature of the SDK. ^[inferred]

## Community & Resources

- GitHub Discussions for Azure AI Foundry evaluation SDK questions
- Azure AI Foundry Discord server for community discussion
- Python notebook with code examples shared at the end of the talk ^[extracted]

## Related

- [[concepts/agent-evaluation-pipeline]] — Microsoft's broader agent evaluation pipeline (CI/CD integration, red teaming, observability)
- [[concepts/evaluation-first-development]] — Methodology for building with early and continuous evaluation
- [[entities/azure-ai-foundry]] — Platform hosting the Evaluation SDK
- [[concepts/llm-judge-best-practices]] — LLM-as-judge design principles
- [[references/aief2025-ai-red-teaming-agent-azure-ai-foundry]] — Complementary red teaming talk at AIEF2025

## Sources

- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Principal Advocate, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
