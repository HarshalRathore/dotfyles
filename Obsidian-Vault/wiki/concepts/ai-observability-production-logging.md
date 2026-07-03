---
title: "AI Observability & Production Logging"
tags:
  - concept
  - ai
  - observability
  - logging
  - production
  - monitoring
  - tracing
aliases: [AI observability, production logging for AI, LLM tracing, AI monitoring infrastructure]
sources:
  - "AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production - https://www.youtube.com/watch?v=9iN-cPnp7xg"
summary: "Infrastructure for logging, tracing, and monitoring AI applications in production: wrapping LLM clients for automatic capture, online scoring, custom views, and human review workflows."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# AI Observability & Production Logging

Once an AI application reaches production, observability becomes critical. Logging captures prompts, responses, metrics (tokens, latency, cost), and enables [[concepts/online-evals|online scoring]], debugging, and the continuous improvement feedback loop. ^[extracted]

## How Production Logging Works

The standard pattern is to **wrap the LLM client** with a thin instrumentation layer that automatically captures every interaction: ^[extracted]

- **Wrap OpenAI SDK**: `wrapOpenAI(client)` — all communication gets logged automatically
- **Wrap Vercel AI SDK**: Similar one-line instrumentation for the Vercel AI SDK
- **OpenTelemetry (Otel)**: Platform-agnostic integration using standard OTEL instrumentation
- **Trace arbitrary functions**: Use a `@trace` decorator on any function to log its inputs, outputs, and duration

> "Some great ways to get started with really one line of code is to wrap your LLM client." ^[extracted]

## What Gets Captured

| Data Point | Source |
|------------|--------|
| Prompt text | Automatic from wrapped client |
| Response text | Automatic from wrapped client |
| Token counts | Automatic from wrapped client |
| Latency | Automatic from wrapped client |
| Cost estimate | Calculated from model + tokens |
| Errors | Automatic from wrapped client |
| Custom metadata | Via `span.log()` or decorator arguments |
| User feedback | Via `logFeedback()` API |

## Custom Views

Once production logs accumulate, teams need to slice and filter them efficiently. Custom views allow: ^[extracted]

- Filtering logs by score thresholds (e.g., "completeness score < 50%")
- Customizing visible columns (specific scores, metadata fields)
- Saving views for team-wide access — human reviewers open a curated view without reconfiguring filters
- A/B comparison — tag traces by prompt version and compare across cohorts

> "You can apply filters, sorts. You can customize columns on the logs with whatever information you'd like. And now you can start saving those views and making them available for the rest of your team." ^[extracted]

## The Span-to-Dataset Pipeline

A key capability is adding production traces directly to an offline dataset with one click: ^[extracted]

1. Find a production trace with a problematic or interesting output
2. Click "Add this span to dataset"
3. The span becomes a new row in the evaluation dataset
4. It now participates in offline eval runs, ensuring that regression is tracked

This closes the flywheel: production observations feed back into the development eval cycle. ^[inferred]

## Logging vs. Evaluation

Production logging and [[concepts/online-evals|online evals]] are complementary but distinct:

- **Logging**: Capture everything — every prompt, response, metric, and error
- **Online scoring**: Evaluate a configurable subset of logged traces using defined score functions
- **Dataset enrichment**: Curated selection of logs added back to the offline eval dataset

The sampling rate for online scoring is configurable — start low (1-10%) and increase as trust in the metrics grows. ^[extracted]

## Related

- [[concepts/online-evals|Online Evals]] — what runs on top of production logs
- [[concepts/eval-dataset-strategy|Eval Dataset Strategy]] — how production logs feed dataset improvement
- [[concepts/eval-playground-experiment-workflow|Playground vs Experiments]] — how production insights inform development iteration
- [[concepts/agent-evaluation-pipeline|Agent Evaluation Pipeline]] — platform-level evaluation including observability
- [[entities/braintrust|Braintrust]] — platform implementing this logging pattern

## Sources

- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
