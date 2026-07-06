---
title: Layered Agent Safety
category: concepts
tags:
- safety
- agents
- defense-in-depth
- risk-mitigation
- application-layer
aliases:
- defense in depth agents
- layered safety
- agent safety layers
- safety layers
relationships:
- target: '[[concepts/agent-evaluation-pipeline]]'
  type: related_to
- target: '[[concepts/ai-red-teaming]]'
  type: extends
sources:
- 'https://www.youtube.com/watch?v=j4vpq2i0qze'
- 'https://www.youtube.com/watch?v=jhjkgramfiu'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Layered Agent Safety
---

# Layered Agent Safety

Layered agent safety is the principle that real safety in AI agent systems comes from multiple independent mitigation layers, not from the foundation model alone. ^[extracted] Each layer addresses different risk vectors and failures in one layer can be compensated by another. ^[inferred]

## Four Safety Layers

### 1. Platform Layer (Model & Safety System)
Built-in protections at the model/provider level. For Azure models, these are pre-configured zeroth-layer protections that require no developer action. ^[extracted]

### 2. System Message & Grounding Layer
The system prompt and grounding strategy define the agent's behavior boundaries. This is where design matters most — the prompt is the first line of defense against misbehavior. ^[extracted]

### 3. User Experience Layer
How users interact with the agent and how issues are reported. Good UX design can prevent misuse and provide feedback channels for safety issues. ^[extracted]

### 4. Application Layer
Where smart mitigations are layered on top: evaluation SDKs, custom evaluators, red teaming, and continuous monitoring. This is the most configurable layer and the primary focus of agent evaluation work. ^[extracted]

## Key Insight

"The foundation model is just one part — real safety comes from layering smart mitigations at the application layer." ^[extracted] Relying solely on model-level safety is insufficient because:

- Models can be prompted to bypass built-in filters
- Agent behavior (tool use, multi-step reasoning) introduces risks beyond single-shot LLM calls
- Application-specific risks require domain-specific mitigations ^[inferred]

## Relationship to Red Teaming

[[concepts/ai-red-teaming|AI red teaming]] operates primarily at the application layer, testing whether the full stack of safety layers works together. Red teaming validates that no single layer's failure cascades into a safety breach. ^[inferred]

## Related

- [[concepts/agent-evaluation-pipeline]] — Evaluation pipeline for the application layer
- [[concepts/ai-red-teaming]] — Adversarial testing of safety layers
- [[concepts/evaluation-first-development]] — Methodology for building with safety in mind

## Sources

- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
