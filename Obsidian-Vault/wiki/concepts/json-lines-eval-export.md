---
title: "JSON Lines Evaluation Export"
category: concepts
tags:
  - evaluation
  - data-format
  - json-lines
  - export
  - ci-cd
  - automation
aliases: [eval export, JSONL eval, evaluation dataset export]
relationships:
  - target: "[[concepts/agent-evaluation-pipeline]]"
    type: implements
  - target: "[[concepts/manual-vs-automated-evals]]"
    type: supports
sources:
  - "[[sources/watchv=j4vpq2i0qze]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# JSON Lines Evaluation Export

JSON Lines (JSONL) export is the format used to serialize evaluation results from manual batch testing for integration into automated evaluation systems and CI/CD pipelines. ^[extracted]

## Format

Each line is a valid JSON object representing one evaluation result, containing:
- Input prompt/task
- Agent output/response
- Manual score (thumbs up/down)
- Tool call trace (for agentic evaluations)
- Metadata (timestamp, model version, etc.) ^[extracted]

## Use Cases

1. **Transition from manual to automated evaluation** — Export results from [[concepts/ai-toolkit-vscode|AI Toolkit]] batch evaluation and re-inject into [[concepts/azure-ai-evaluation-sdk|Azure AI Evaluation SDK]] for automated scoring. ^[extracted]

2. **CI/CD integration** — Use exported datasets as test fixtures for automated evaluation gates. ^[inferred]

3. **Dataset curation** — Build curated evaluation datasets from manually scored examples. ^[inferred]

## Role in Evaluation Progression

JSON Lines export is the bridge between Phase 3 (batch manual evaluation) and Phase 4 (automated scale evaluation) in the [[concepts/manual-vs-automated-evals|evaluation progression]]. It enables the same evaluation dataset to be scored both manually and automatically. ^[inferred]

## Related

- [[concepts/ai-toolkit-vscode]] — Tool that supports JSONL export
- [[concepts/azure-ai-evaluation-sdk]] — Platform that consumes evaluation datasets
- [[concepts/agent-evaluation-pipeline]] — CI/CD integration patterns

## Sources

- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
