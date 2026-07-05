---
title: "PostHog AI Evals Documentation"
category: misc
tags:
  - ai
  - evals
  - llm
  - observability
  - posthog
sources:
  - "[[sources/ai-evals]]"
source_url: "https://posthog.com/docs/ai-evals"
created: "2026-07-01"
updated: "2026-07-01"
summary: "Official PostHog documentation on AI evaluations — three evaluation types (LLM-as-judge, Hog code-based, sentiment analysis), MCP management, evaluation reports, error states, and pricing."
affinity:
  posthog: 3
promotion_status: misc
stub: false
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.62
lifecycle: draft
lifecycle_changed: 2026-07-01
---

# PostHog AI Evals Documentation

Official documentation for [[posthog]]'s AI evaluation system — three types of evaluations for automatically assessing LLM generation quality, with MCP tooling for programmatic management.

## Overview

PostHog AI Evals provides three evaluation types for monitoring LLM output quality:

1. **LLM-as-a-judge** — Uses an LLM to score each generation against a custom prompt. Returns pass/fail with reasoning. Best for subjective/nuanced checks (tone, helpfulness, hallucination). Costs an LLM API call per evaluation.
2. **Code-based (Hog)** — Runs deterministic PostHog Hog code against each generation. Returns pass/fail with reasoning. Free, millisecond-speed. Best for rule-based checks (format validation, keyword detection, length limits).
3. **Sentiment analysis** — Classifies user message sentiment as positive/neutral/negative using a local ML model (cardiffnlp/twitter-roberta-base-sentiment-latest). Free, runs entirely within PostHog infrastructure — no third-party data sharing.

## Key Points

### LLM-as-a-Judge mechanics

- Generations are sampled at a configurable rate (0.1%–100%)
- The judge receives a structured prompt with input, output, and available tool catalog (when present)
- **Tool call correlation**: Parallel tool calls are rendered with correlation IDs so the judge can reason about tool use — e.g., `"did the agent handle the tool failure correctly?"`
- **Tool catalog format**: Each tool listed with name, description, parameters. `?` suffix marks optional params. Supports OpenAI, Anthropic, and Gemini tool definitions.
- **Custom events**: Events can be shaped with `$ai_input`, `$ai_output_choices`/`$ai_output`, `$ai_tools` properties for full judge context
- Five built-in templates: Relevance, Helpfulness, Jailbreak, Hallucination, Toxicity
- Property filters can narrow evaluations by event or person properties (e.g., only production traffic, specific model, exclude internal users)

### Code-based (Hog) evaluations

- Write Hog code that inspects input and output, compiled to bytecode on save
- Returns `true` (pass) or `false` (fail); `print()` adds reasoning
- `allows_na` option: returning `null` marks result as N/A
- Available globals: `input`, `output`, `properties`, `event.uuid`, `event.event`, `event.distinct_id`
- Test on sample data before enabling — runs in preview mode, no events created

### Sentiment analysis

- Runs cardiffnlp/twitter-roberta-base-sentiment-latest on user messages only (the `$ai_input` property)
- Does NOT process LLM outputs — only user messages
- Returns positive/neutral/negative with confidence score
- Results viewable in the Sentiment tab with color-coded bars

### MCP evaluation management

PostHog provides six MCP tools for AI agent workflows:

- `evaluations-get` — List evaluations (optional search, enabled filter)
- `evaluation-get` — Get specific evaluation by UUID
- `evaluation-create` — Create LLM judge or Hog evaluations
- `evaluation-update` — Update evaluation config/name/enabled
- `evaluation-delete` — Soft delete an evaluation
- `evaluation-run` — Trigger async evaluation run on a specific generation

### Evaluation reports

- Auto-provisioned default report configuration per evaluation
- Count-based: generates after 100 evaluation runs (configurable)
- Cooldown: min 1 hour between count-triggered reports (1–24h configurable)
- Daily cap: 10 report runs per day
- Optional delivery targets: email or Slack

### Error states

Automatic disable on: trial limit reached (100 free runs), model not allowed on trial, provider key deleted. Error pills on list page, banner on detail page with recovery steps.

### Pricing

- Each evaluation run = 1 AI Observability event toward quota
- LLM judge: first 100 runs free, then BYO API key (OpenAI, Azure, Google Gemini, Anthropic, OpenRouter, Fireworks, Together AI)
- Code-based and sentiment: free (local execution, no external API calls)
- Recommended sampling: 5–10% for sufficient signal

## Concepts

- [[concepts/agent-loop]] — Agent loops require evaluation as their third component. PostHog AI Evals provides concrete tooling for the evaluation requirement in production agent loops.
- [[web-posthog-com-blog-stop-ai-slop]] — Companion blog post introducing LLM-as-a-Judge conceptually; this docs page is the official reference implementation.

## Entities

- [[posthog]] — The company and platform behind AI Evals

## Related

- [[posthog]] — PostHog entity page
- [[web-posthog-com-blog-stop-ai-slop]] — Blog post introduction to LLM-as-a-Judge evals
- [[concepts/agent-loop]] — The evaluation requirement for agent loops
