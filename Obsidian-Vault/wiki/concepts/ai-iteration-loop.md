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
  - "https://www.youtube.com/watch?v=1__v4ktv_gw"
  - "https://www.youtube.com/watch?v=6ydpi9ybjbi"
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
  - "AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao"
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

## Kenneth Auchenberg's Rapid Iteration Loop

Kenneth Auchenberg (ex-Stripe, VSCode) presents a complementary view of iteration loops in his AIEF2025 talk "Shipping something to someone always wins." ^[inferred]

His core argument: product success depends on the number of iterations you can crank out, not the number of big-bang launches. ^[extracted]

### The Skateboard-to-Car Metaphor

Kenneth contrasts two approaches: ^[extracted]

- **The tired way**: Build wheels → chassis → engine → car. No viable product until the end. No feedback along the journey.
- **The wired way**: Build a skateboard → scooter → bike → car. Every step is a continuously viable product that transports a person from A to B.

A continuously viable solution is "many, many orders of magnitude more valuable" than a solution that only becomes viable at the end. ^[extracted]

### The Loop-in-a-Day Standard

At Stripe, Kenneth's team aimed to run the full feedback loop (ship → feedback → iterate → ship improvement) in less than a day. ^[extracted] "If you cannot run your loop in a day, your process is broken." This does not mean shipping every day — it means being able to ship every day. ^[extracted]

### The Three Requirements

Kenneth's framework for enabling rapid iteration loops: ^[extracted]

1. **Real users** who can see something (not personas — actual people with names, emails, phone numbers)
2. **A way to get feedback** from them (direct observation, Slack, Discord, personal relationships)
3. **Ability to iterate and ship an improvement** (the technical and organizational capacity to act on feedback)

### Practical Tactics

- **Write the launch post first**: Before building anything, write the PRD or launch blog post. Push it to early users for feedback before prototyping. ^[extracted]
- **Design the best product first**: Design your ideal product before considering constraints like legal, compliance, and financials. Legal counterparts help you understand risks but should not shape the product. ^[extracted]
- **Prototype everything**: In 2025, there is "no excuse" not to prototype. AI tools (Bolt, Claude, coding agents) make it possible regardless of your role. ^[extracted]
- **Get high-quality feedback**: Don't just pull metrics from dashboards. Shadow customers, text with them directly, monitor API responses to see where they get stuck. ^[extracted]
- **Feel like a professional services firm**: When done well, you should feel like you're running a professional services firm — deeply invested in making a very few set of users extremely happy. ^[extracted]

### Relationship to AI

Kenneth argues this principle is "more relevant than ever in the age of AI." AI tools dramatically reduce the cost of prototyping and iteration, making rapid loops more achievable than ever before. The bottleneck shifts from technical capacity to organizational discipline and user access. ^[extracted]

## Sources

- [[references/build-operate-divide-freeplay-chime-2025|The Build-Operate Divide: Bridging Product Vision and AI Operational Reality — AI Engineer World's Fair 2025]]
- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — Conference talk
