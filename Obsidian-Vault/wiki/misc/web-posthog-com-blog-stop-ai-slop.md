---
title: 'Stop AI slop: Run evals with LLM-as-a-Judge'
category: misc
tags:
- ai
- evals
- llm
- observability
- product-engineering
sources:
- '[[sources/stop-ai-slop]]'
source_url: https://posthog.com/blog/stop-ai-slop
created: 2026-06-30 23:50:00+00:00
updated: 2026-06-30 23:50:00+00:00
summary: PostHog guide to AI evaluations using LLM-as-a-Judge — why manual review doesn't scale, how to write evals, five pre-built templates, and the AI product improvement loop connecting observability, s...
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-06-30
tier: supporting
---

# Stop AI slop: Run evals with LLM-as-a-Judge

> Author: Cleo Lant (PostHog). January 15, 2026.

## Overview

!
*AI product improvement loop: observe → eval → session replay → product analytics → improve.*

PostHog's guide to running AI evaluations using LLM-as-a-Judge — using one language model to automatically score another model's outputs against criteria like relevance, helpfulness, or toxicity. The article covers why manual review doesn't scale, how to write effective evaluation prompts, pre-built eval templates, and the feedback loop connecting AI observability, session replay, and product analytics.

## Key Points

!
*Eval configuration UI in PostHog: template selector, sampling rate, pass/fail criteria.*

- **Eval mechanics:** Write a short evaluation prompt, choose a sampling rate (0.1%–100%), define pass/fail criteria, optionally filter by property. N/A is used when the eval prompt isn't relevant to a generation (e.g., a math accuracy eval on a non-math response).
- **Manual review doesn't scale:** 10 traces = 2.5 hours, 100 = half a week, 10,000 = impossible. The average AI product has tens or hundreds of thousands of generations per day.
- **Real-world failure cases:** DPD's chatbot was manipulated to swear at users and criticize the company (1.3M views, bot disabled). Air Canada's chatbot promised non-existent bereavement fares; the airline argued the chatbot was "a separate legal entity" but a tribunal ordered $812 in damages.
- **Five pre-built eval templates:** Relevance (does output address input), Helpfulness (is it useful/actionable), Jailbreak (bypassing guardrails), Hallucination (made-up facts), Toxicity (harmful content).
- **Writing good evals:** Set domain expertise, be specific about pass/fail, include examples of good/bad/edge cases, keep prompts concise. One behavior per eval.
- **Eval template pattern:** You are a [DOMAIN] evaluator. Requirement: [single behavior]. Guidelines: strict binary, evaluate only the requirement, don't assume missing info. Return true/false.
- **AI slop examples:** Fake product capabilities, creepy name overuse ("Hey Daniel 😊"), made-up policies, off-brand responses, lazy outputs ignoring instructions.
- **Positive signal evals:** Discovering creative use cases, happy users for case studies, power users hitting rate limits (upsell opportunities), feature discovery moments.
- **The AI product improvement loop:** (1) AI Observability shows what the AI is doing, (2) Session Replay shows what users see, (3) Product Analytics connects AI quality to retention and revenue.
- **AI retention problem:** Generous free tiers and easy cancellation attract "AI tourists" who extract value then disappear. Connecting eval results to user behavior reveals which AI outputs actually affect retention.

## Concepts

- [[concepts/agent-loop]] — The AI product improvement loop described here (observe → eval → improve) is an agent-loop applied to product quality; see also the evaluation section
- [[concepts/ralph-coding-technique]] — The eval pattern (test-driven development for AI) parallels Ralph's "implements, then tests it" loop

## Entities

- [[entities/posthog]] — The company behind this guide and the eval tool described

## Open Questions

- How well does LLM-as-a-Judge correlate with human judgment across different domains? The article assumes strong correlation but doesn't present calibration data. ^[ambiguous]
- What's the false positive/negative rate of the pre-built eval templates in production?
- Does connecting evals to product analytics actually improve retention, or is it just measurable?

## Related

- [[misc/web-posthog-com-newsletter-loops]] — PostHog's newsletter on engineering loops covers the broader agent-loop context that evals plug into
- [[misc/web-github-com-karpathy-autoresearch]] — The autoresearch pattern uses evaluation (benchmark improvement) as its core loop; evals are a general-purpose version of the same idea
