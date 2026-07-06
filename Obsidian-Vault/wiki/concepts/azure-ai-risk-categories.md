---
title: Azure AI Risk Categories
category: concepts
tags:
- risk-categories
- safety
- evaluation
- azure-ai-foundry
- microsoft
- ai-red-teaming
aliases:
- AI risk categories
- Azure risk categories
- harm categories
relationships:
- target: '[[concepts/ai-red-teaming]]'
  type: related_to
- target: '[[entities/azure-ai-foundry]]'
  type: implements
- target: '[[concepts/attack-strategies]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=jhjkgramfiu'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Azure AI Risk Categories
---

# Azure AI Risk Categories

Azure AI Risk Categories are predefined harm classes used by the [[entities/azure-ai-foundry|Azure AI Foundry]] evaluation and red teaming system to categorize and measure adversarial attack success. ^[extracted] Each category maps to a specific evaluator that determines whether a model's response crosses the safety threshold for that harm type. ^[extracted]

## The Four Risk Categories

The Azure AI Foundry Red Teaming Agent supports four risk categories: ^[extracted]

1. **Hate and fairness** — prompts that elicit discriminatory, prejudiced, or unfair outputs
2. **Violence** — prompts that elicit content promoting or describing violence
3. **Sexual content** — prompts that elicit sexually explicit or inappropriate content
4. **Self-harm** — prompts that elicit content related to self-injury or suicide

When no categories are explicitly selected, all four are included by default. ^[extracted]

## Usage in Scanning

Risk categories are configured when setting up a scan: ^[extracted]

```python
# Initialize Azure AI project
# Select risk categories
# Set number of objectives (questions sent to app)
# Define attack strategies
# Run scan
```

The scan sends adversarial prompts to the target application, and the evaluator determines whether the response was successful (i.e., the model produced harmful output for that category). ^[extracted]

## Results Interpretation

In the AIEF2025 demo, results were filtered by success status and risk category: ^[extracted]

- GPT-3.5 without guardrails: 5/40 scans succeeded in hate and fairness categories
- GPT-4.1 nano without guardrails: 25% of violence-category attacks succeeded
- GPT-4o nano with guardrails: very few attacks succeeded across all categories

This demonstrates that attack success varies significantly by risk category, model, and guardrail configuration. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
