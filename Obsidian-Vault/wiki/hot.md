---
title: Hot Cache
updated: 2026-07-01T09:49:00Z
---
## Recent Activity
- Ingested Matt Pocock's "Building Great Agent Skills: The Missing Manual" (AI Engineer 2026) — the Skills Checklist Framework (Trigger → Structure → Steering → Pruning) for evaluating and building high-quality agent skills. Created 3 concept pages (skills-checklist-framework, skill-hell, leading-words) + 1 misc source page. Updated Matt Pocock entity and agent-loop concept.

- **PostHog engineering cluster**: autoresearch (ClickHouse bug), engineering loops framework, AI evals, and now SQL parser rewrite — a coherent series from one engineering team

- **Pocock's Skills Checklist**: the missing shared rubric for evaluating agent skills — Trigger (model vs user invoked), Structure (steps + reference, external pointers for branches), Steering (leading words, leg work per step), Pruning (deletion tests, sediment removal)
- **Skill design tradeoffs**: model-invoked skills reduce user burden but increase context load and unpredictability; user-invoked skills keep context lean but need the user to know what's available
- **Leading words** (e.g. "vertical slice") pack meaning into compact phrases that agents adopt in reasoning traces — testable by checking whether the word appears in the model's thinking
- **Leg work increases when you hide future steps**: splitting "plan" into separate skills (grill-with-docs → to-prd) makes the agent focus on clarifying questions instead of rushing toward the plan
## Flagged Contradictions
