---
title: "Agentic Models"
category: concepts
tags:
  - agentic
  - models
  - reasoning
  - ai
  - google-deepmind
  - gemini
summary: "The trend of LLMs absorbing scaffolding work that previously lived in external agent frameworks — planning, tool use, and execution becoming native model capabilities rather than ecosystem patterns."
provenance:
  extracted: 0.55
  inferred: 0.40
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-vs-workflow|Agent vs Workflow]]"
    type: related_to
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: related_to
  - target: "[[concepts/proactive-agents|Proactive Agents]]"
    type: extends
---

# Agentic Models

**Agentic models** are LLMs that increasingly absorb the scaffolding work that historically lived in external agent frameworks — planning, tool selection, execution, and multi-step reasoning become native model capabilities rather than ecosystem patterns built around token-in/token-out models. ^[inferred]

## The Shift

Historically, the developer experience around LLMs involved:

1. **The model:** A token-in/token-out system that generates text responses
2. **The scaffolding:** External frameworks (LangChain, custom orchestration) that add planning, tool use, memory, and multi-step execution

Logan Kilpatrick of [[entities/google-deepmind|Google DeepMind]] described a fundamental shift: "models are becoming more systematic themselves, like they're doing more and more." ^[extracted] The reasoning step is where this is happening — models are increasingly handling planning, tool selection, and execution as part of their native capability.

## Key Characteristics

- **Native planning:** Models can break goals into sub-steps without external orchestrators
- **Built-in tool use:** Models can select and invoke tools as part of their reasoning process
- **Self-correction:** Models can evaluate their own outputs and iterate
- **Multi-step execution:** Complex tasks are handled within a single model invocation rather than requiring external loops

## Implications for the Ecosystem

As models absorb scaffolding work:

- **Less external orchestration needed:** The gap between a simple API call and a full agent narrows
- **Reasoning tokens become the interface:** The "thinking" step becomes the primary interaction point rather than a hidden implementation detail
- **Product design changes:** If models handle more systematically, product designers build around model reasoning rather than around external agent architectures
- **Developer tooling evolves:** Tools shift from agent orchestration frameworks to model capability exploration

## Open Questions

- How much scaffolding will models absorb vs. what will remain as external infrastructure?
- Does the reasoning step become the new API boundary?
- How do you debug and evaluate models when planning is internal rather than explicit?

## Related

- [[concepts/agent-vs-workflow|Agent vs Workflow]] — The spectrum between model-native and framework-native approaches
- [[concepts/reasoning-models|Reasoning Models]] — The reasoning capability that enables agentic behavior
- [[concepts/proactive-agents|Proactive Agents]] — Proactive behavior as an extension of agentic models
- [[entities/gemini|Gemini]] — Google DeepMind's model family pursuing this direction
