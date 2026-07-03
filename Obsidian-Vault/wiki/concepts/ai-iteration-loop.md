---
title: "AI Iteration Loop"
category: concepts
tags:
  - ai
  - operations
  - evaluation
  - methodology
  - reliability
aliases: [monitor-experiment-test-evaluate loop, Gen AI iteration loop]
sources:
  - "AI Engineer World's Fair 2025 talk — The Build-Operate Divide: Bridging Product Vision and AI Operational Reality — Jeremy (Freeplay) & Chris Hernandez (Chime) - https://www.youtube.com/watch?v=1__V4KTv_Gw"
  - "AI Engineer World's Fair 2025 — How to build world-class AI products — Sarah Sachs (AI lead @ Notion) & Carlos Esteban (Braintrust) - https://www.youtube.com/watch?v=6YdPI9YbjbI"
summary: "The operational cycle of monitoring, experimentation, testing, and evaluation that determines AI product quality. Product quality is a direct function of iteration speed through this loop."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# AI Iteration Loop

The AI iteration loop is the operational cycle that determines AI product quality: monitor → experiment → test → evaluate → repeat. The core insight from the [[concepts/build-operate-divide]] framing is that "your product quality becomes a direct function of your ability to move through this loop" — the faster you can iterate, the better your product becomes. ^[extracted]

## The Loop Stages

1. **Monitor** — Track production AI outputs for performance, hallucinations, and quality drift. This is the sensing phase that identifies where the model is falling short. ^[inferred]

2. **Experiment** — Formulate and run changes to prompts, models, logic, or data sources intended to address identified issues. ^[inferred]

3. **Test** — Run experiments against evaluation criteria and golden datasets to measure impact. This includes both automated evaluation and structured human review. ^[inferred]

4. **Evaluate** — Interpret results to determine whether the change improved quality. Feed findings back into monitoring to close the loop. ^[inferred]

## Why Speed Matters

The talk argues that the decreased barrier to entry in Gen AI increases iteration speed, which in turn "starts to accentuate the need for a high quality ops function." ^[extracted] As iteration speed accelerates, the operational overhead of managing each cycle becomes the bottleneck. Teams that can maintain high iteration velocity without sacrificing evaluation rigor cross the [[concepts/quality-chasm-in-ai]] from V1 to production-grade V2. ^[inferred]

## The Ops Foundation

"Your ability to move through this loop ends up being an ops function." ^[extracted] This means:

- [[concepts/ai-ops-evolution]] — Traditional QA teams need to evolve from auditors to active participants in the loop
- Automated evaluation (model-graded evals, [[concepts/checklist-based-evaluation]]) enables faster iterations by reducing the human review burden on routine checks
- Human review remains essential for nuanced judgments, edge cases, and high-risk decisions — each human correction is a signal for the next iteration ^[extracted]

## The Notion-Braintrust Operational Flywheel

[[entities/sarah-sachs|Sarah Sachs]] ([[entities/notion|Notion]]) and [[entities/braintrust|Braintrust]] presented a concrete instantiation of the iteration loop centered on evaluation data:

1. **Curate targeted datasets** — Data specialists handcraft small (often 10-30 data points) datasets from internal dogfooding logs, thumbs-down feedback, and specific feature requirements. Structure and format quality matters more than volume. ^[extracted]
2. **Define scoring functions** — After examining the data thoroughly, tie them to scoring functions specific to the product. Notion relies primarily on [[concepts/per-element-llm-judge|per-element LLM-as-judge]] prompts rather than generic scorers — though they also use heuristic checks (e.g., verifying a tool call contains the expected query prefix). ^[extracted]
3. **Run evals** — Execute experiments via the [[entities/braintrust|Braintrust]] playground or SDK. Scores are 0-100 normalized across scorers. ^[extracted]
4. **Inspect results** — Engineers, PMs, and data specialists examine failure outputs. For large eval runs, failures are passed to another LLM for theme summarization, generating a quick report for the engineer triaging the results. ^[extracted]
5. **Improve** — Change the prompt, model, logic, scoring function, or dataset based on findings. ^[extracted]
6. **Close the loop** — Add the new edge cases from production logs or human review back into the curated datasets, enriching the eval suite for future iterations. ^[extracted]

This flywheel is how Notion achieves rapid model switching: "Anytime a new model is released, within usually less than a day, we're able to give that to all of our users in production." The evaluation infrastructure — not the prompts or the models — enables this velocity. ^[extracted]

### The 10/90 Engineering Ratio

Notion operationalizes the iteration loop with a specific allocation: 10% of engineering time on prompting, 90% on evals and iteration within this flywheel. This ratio reflects the reality that "the IP comes from how we evaluate it and how we build it" — the evaluation methodology, not the prompt strings, constitutes the durable competitive advantage. ^[extracted]

## Relationship to Evaluation-First Development

The iteration loop operationalizes [[concepts/evaluation-first-development]]. Where evaluation-first says "build evals first, then develop," the iteration loop describes the continuous cycle of running those evals, learning from failures, and improving. Together they form a complementary workflow: evaluation-first establishes the baseline, the iteration loop improves from it. ^[inferred]

## Related Concepts

- [[concepts/build-operate-divide]] — The framework this loop is part of
- [[concepts/quality-chasm-in-ai]] — The gap this loop is designed to cross
- [[concepts/ai-quality-lead]] — The role that orchestrates this loop
- [[concepts/human-in-the-loop-regulated-ai]] — HITL as a component of the evaluate stage
- [[concepts/ai-regression-testing]] — Testing methodology used within the loop
- [[concepts/evaluation-first-development]] — The baseline that feeds the loop
- [[concepts/curated-dataset-strategy]] — The dataset curation methodology feeding the loop
- [[concepts/per-element-llm-judge]] — The scoring methodology used within the loop
- [[entities/braintrust]] — The platform operationalizing the loop

## Sources

- [[references/build-operate-divide-freeplay-chime-2025|The Build-Operate Divide: Bridging Product Vision and AI Operational Reality — AI Engineer World's Fair 2025]]
- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — Conference talk
