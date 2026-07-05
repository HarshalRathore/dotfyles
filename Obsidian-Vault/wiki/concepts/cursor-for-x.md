---
title: "Cursor for X"
tags:
  - concept
  - ai
  - product-strategy
  - startups
aliases: [Cursor for every industry, vertical AI playbook]
sources:
  - "[[sources/watchv=3mzs5gnelzm]]"
summary: "The meta-playbook for building AI applications: apply the Cursor recipe (domain knowledge + workflow packaging + multi-model orchestration + thoughtful UX) to every professional vertical."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Cursor for X

"Cursor for X" is the playbook for building durable AI application companies, articulated by [[entities/sarah-guo|Sarah Guo]]. The idea: take the recipe that made [[entities/cursor-ai|Cursor]] successful in code and apply it to every other industry and profession.

## Why Code Was First

Code was the first domain for AI agents because of four converging factors: ^[extracted]

1. **Text with structure** — code is a logical language with formal structure. Much of coding is "sophisticated boilerplate," not novel algorithm work. You don't need AGI to write an API endpoint or React component.
2. **Deterministic validation** — you can automatically check if code works by running tests, compiling, and executing.
3. **Researcher investment** — researchers believe code is crucial for AGI, so they poured resources into it as a benchmark, training priority, and data collection area.
4. **Engineers built for engineers** — they understood the workflow intimately, and that made all the difference.

The last point is the playbook for every other industry. The winners won't just be AI experts learning those domains — they'll be problem-centric builders who understand AI and redesign workflows from first principles. ^[inferred]

## The Cursor Recipe

Generalized from [[entities/cursor-ai|Cursor]]'s architecture: ^[extracted]

1. **Domain knowledge as bootstrap** — if you know what users in an industry need, don't make them explain it. Build products that show up informed.
2. **Automatic context collection** — package context from multiple sources, not just natural language.
3. **Multi-model orchestration** — use the right model at the right time for each subtask.
4. **Thoughtful output presentation** — present results to users in a way that makes sense for their workflow.
5. **Make it safe to say yes** — clear diff visualization, familiar UI patterns, fast enough to not frustrate.

If you are building a generic text box, don't — OpenAI already won that. ^[extracted]

## The Thick Wrapper

Guo argues Cursor is not a thin wrapper but a "very nice, thick, perhaps $14-15B wrapper." The value is not in the model (the "protein") but in the company — the packaging, workflow, and experience. ^[extracted] This challenges the "thin wrapper" criticism of AI startups.

## Why This Matters Now

The labs are getting more competitive, not less, and models are rapidly commoditizing. The opportunity for application-layer companies is in domain knowledge, workflow expertise, and execution — areas where incumbents and startups have more advantage than the model providers. ^[inferred]

## Related

- [[concepts/execution-as-moat]] — Why execution beats technology defensibility
- [[concepts/ai-leapfrog-effect]] — Where the playbook is working first
- [[concepts/copilot-first-strategy]] — How to sequence the build
- [[concepts/prompt-is-a-bug]] — UX philosophy for Cursor-for-X products
- [[entities/cursor-ai]] — The archetypal implementation
- [[entities/harvey-ai]] — Legal AI example
- [[entities/sierra-ai]] — Customer service example
- [[entities/open-evidence]] — Healthcare example

## Sources
- AI Engineer World's Fair 2025 — State of Startups and AI 2025, Sarah Guo, Conviction. https://www.youtube.com/watch?v=3MZS5gNElZM
