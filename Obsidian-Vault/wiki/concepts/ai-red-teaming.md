---
title: AI Red Teaming
category: concepts
tags:
- ai-red-teaming
- security
- adversarial-testing
- safety
- evaluation
- agents
aliases:
- red teaming
- adversarial testing AI
- AI security testing
relationships:
- target: '[[concepts/layered-agent-safety]]'
  type: extends
- target: '[[entities/pyrit]]'
  type: uses
- target: '[[concepts/attack-strategies]]'
  type: uses
- target: '[[concepts/guardrails-content-filters]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=jhjkgramfiu'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: AI Red Teaming
---

# AI Red Teaming

AI red teaming is the practice of systematically and adversarially testing AI systems to identify safety vulnerabilities, harmful output patterns, and security weaknesses before deployment. ^[extracted] It operates primarily at the application layer of [[concepts/layered-agent-safety|layered agent safety]], testing whether the full stack of safety defenses works together. ^[inferred]

## Why It Matters

AI models can be tricked into producing harmful outputs through relatively simple techniques: ^[extracted]

- **Context injection** — embedding a harmful request inside a seemingly benign context (e.g., "how to loot a bank" embedded in a life story preface)
- **Obfuscation** — encoding the harmful request in formats that bypass text-based filters (string reversal, base64, Caesar cipher)
- **Agent-specific risks** — 2025 is characterized as "the year of agents," and multi-step agent systems introduce trust and safety concerns beyond single-shot LLM calls ^[extracted]

## How It Works

The [[entities/azure-ai-foundry|Azure AI Foundry]] AI Red Teaming Agent provides two scanning modes: ^[extracted]

### Application Scanning
Set up an Azure AI project, initialize with URL and credentials, select risk categories, define the number of objectives (questions sent to the app), and specify attack strategies. The scan sends adversarial prompts to the target application and evaluates responses. ^[extracted]

### Direct Model Scanning
For systems without a full application, set the target as an [[entities/azure-openai|Azure OpenAI]] model config and scan the raw model directly. ^[extracted]

## Results Demonstration

Comparative results from the AIEF2025 demo showed guardrails materially reduce attack success: ^[extracted]

| Model | Guardrails | Attack Success |
|-------|-----------|----------------|
| GPT-4o nano | Enabled | Very few (sample of 160, 5 harm types) |
| GPT-3.5 | Disabled | 5/40 in hate and fairness |
| GPT-4.1 nano | Disabled | 25% violence, 20% high-difficulty |
| GPT-4.1 nano | Enabled | Reduced vs. disabled |

## Scan Architecture

The Red Teaming Agent scan pipeline works as follows: ^[extracted]

1. **Initialize** — Set up an Azure AI project with URL and credentials
2. **Configure risk categories** — Select from four harm categories (hate/fairness, violence, sexual content, self-harm), or use all four by default
3. **Set objectives** — Define the number of questions sent to the target application
4. **Select attack strategies** — Choose from basic converters (flip, base64, Caesar) or composable chains (e.g., tense conversion → URL encoding)
5. **Run scan** — The agent sends adversarial prompts to the target and evaluates responses
6. **Review results** — Dashboard shows success/failure rates filtered by category, strategy, and model

The target can be any application accepting a query string and returning a string response — the demo used a RAG app on PostgreSQL running locally via [[entities/ollama|Ollama]]. ^[extracted]

## Framework Integration

AI red teaming is one component of a broader trust engineering process: ^[extracted] risk mapping → guardrails & controls → evaluations (including red teaming) → agentic evaluators → custom evaluators. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
