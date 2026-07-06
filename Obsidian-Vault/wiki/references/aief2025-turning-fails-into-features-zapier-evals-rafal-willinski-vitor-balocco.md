---
title: 'Turning Fails into Features: Zapier''s Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier'
category: references
tags:
- reference
- talk
- aief2025
- zapier
- evaluation
- ai-agents
- feedback
- instrumentation
- eval-pyramid
sources:
- 'AIEF2025 - Turning Fails into Features: Zapier''s Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o'
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/rafal-willinski|Rafal Willinski]]'
  type: features
- target: '[[entities/vitor-balocco|Vitor Balocco]]'
  type: features
- target: '[[entities/zapier|Zapier]]'
  type: about
summary: 'Turning Fails into Features: Zapier''s Hard-Won Eval Lessons'
---

# Turning Fails into Features: Zapier's Hard-Won Eval Lessons

**Speakers:** Rafal Willinski, Vitor Balocco  
**Organization:** Zapier  
**Conference:** AI Engineer World's Fair 2025  
**Video:** https://www.youtube.com/watch?v=blrovBxxN9o

## Summary

Rafal Willinski and Vitor Balocco from Zapier present the evaluation lessons learned over two years of building AI agent infrastructure for non-technical users. The talk covers the full pipeline from production instrumentation and feedback mining (both explicit and implicit) through LLM Ops tooling to the eval testing pyramid, arguing that building good AI agents is hard and building a platform for non-technical users to build AI agents is even harder due to compounding non-determinism.

## Key Topics

- **The non-determinism double-bind** — AI is probabilistic, and users are unpredictable; prototypes are only the beginning
- **Data flywheel** — Once you ship, responsibility shifts to building the feedback loop that continuously improves the product
- **Deep instrumentation** — Record more than LLM calls: pre/post-processing, errors, side effects, and make runs repeatable for evals
- **Explicit feedback strategies** — Context-aware feedback requests outperform generic thumbs-up/down buttons
- **Implicit feedback mining** — Turning on an agent, copying responses, re-phrasing prompts, cursing, and churn patterns all signal quality
- **LLM Ops tooling** — Build vs buy; internal tooling pays dividends for domain-specific understanding and one-click eval conversion
- **Reasoning models for failure analysis** — LLMs can explain traces and find root causes
- **Eval testing pyramid** — Unit test evals (base), trajectory evals (middle), A-B testing with stage rollouts (top)

## Related Pages

- [[entities/zapier|Zapier]] — Company
- [[entities/rafal-willinski|Rafal Willinski]] — Speaker
- [[entities/vitor-balocco|Vitor Balocco]] — Speaker
- [[concepts/evals-testing-pyramid|Evals Testing Pyramid]] — Eval hierarchy
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — Data flywheel concept
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — Instrumentation
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — Continuous improvement cycle
- [[entities/braintrust|Braintrust]] — Eval platform mentioned
