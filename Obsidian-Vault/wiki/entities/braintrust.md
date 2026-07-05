---
title: "Braintrust"
tags:
  - company
  - evaluation
  - ai-platform
  - tooling
  - observability
sources:
  - "[[sources/watchv=6ydpi9ybjbi]]"
  - "[[sources/watchv=9in-cpnp7xg]]"
  - "[[sources/watchv=cqguvf6gsrm]]"
  - "[[sources/watchv=mc55hdwlq4o]]"
summary: "Enterprise AI evaluation and observability platform providing prompt management, automated evals, production logging, online scoring, and human-in-the-loop review workflows."
- "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
  - "AIEF2025 - Why should anyone care about Evals? — Manu Goyal, Braintrust - https://www.youtube.com/watch?v=jJ45Yz1lJao"
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-05
---

# Braintrust

Braintrust is an enterprise AI evaluation and observability platform. It provides prompt management, automated evaluation scoring, production logging and tracing, online scoring, and human-in-the-loop review workflows. ^[extracted]

## Market Position

Braintrust is one of several AI evaluation and observability companies seeing hockey-stick revenue growth in 2025 as enterprises scale agentic AI deployments. [[entities/john-dickerson|John Dickerson]] (CEO, [[entities/mozilla-ai|Mozilla AI]]) notes that leaked revenue numbers for evaluation startups — including Braintrust, Weights & Biases, and Galileo — were already outdated by mid-2025, having been "lagged by about six months or eight months" at publication. ^[extracted] The broader market context: three converging forces (ChatGPT, enterprise budget freezes channeling all IT spend to gen AI, and the rise of agentic systems) have made evaluation infrastructure a C-suite priority rather than a niche engineering concern. ^[extracted] See [[concepts/ai-evalua…

## Platform Architecture

Braintrust organizes AI development into three interconnected pillars: ^[extracted]

1. **Prompt engineering**: A playground for rapid prompt iteration with versioning, A/B comparison, and team collaboration. Prompts support mustache templating for dynamic inputs, multi-turn conversation contexts, tool definitions, and chained (agent) prompts. ^[extracted]
2. **Automated evals**: An experiment framework that runs tasks against datasets with scoring functions. Scores can be LLM-as-judge (subjective, qualitative) or heuristic/code-based (deterministic, quantitative). Experiments can be run via the playground UI, the TypeScript/Python SDK, or CI pipelines. ^[extracted]
3. **Production observability**: Automatic tracing of LLM calls via wrapping the client (OpenAI SDK, Vercel AI SDK). Captures metrics (tokens, latency, cost), enables online scoring on live traffic with configurable sampling rates, and surfaces production logs for debugging. ^[extracted]

## Key Differentiators

- **Performance**: Built on a custom storage engine (Braintrust's founders have deep database background from SingleStore/MemSQL), cited as unmatched for full-text search and evaluation data queries. ^[extracted]
- **UI/UX**: Positioned as cleaner and more intuitive than competitors like LangSmith. ^[extracted]
- **Remote evals**: A feature that exposes complex SDK-defined tasks with custom code steps and intermediate processing to the playground UI, bridging the gap between engineering and non-technical reviewers. ^[extracted]
- **Auto-evals**: An automated evaluation package for out-of-the-box scoring. ^[extracted]

## Online Scoring & Production Workflow

Braintrust's online scoring evaluates live production traffic against defined score functions: ^[extracted]

- **Configurable sampling rate** — Start at 1-10%, increase as trust in metrics grows
- **Span-targeted scoring** — Score the root trace or drill into a nested child span for granular measurement
- **Regression alerts** — Set thresholds that notify teams when scores drop below baseline
- **Custom views** — Filter, sort, and save log views (e.g., "all traces where completeness < 50%") for team-wide access. Teams create saved views for specific reviewer roles. ^[extracted]
- **Span-to-dataset pipeline** — Add any production trace to an offline dataset with one click, closing the feedback loop between production observations and development evals ^[extracted]

## SDK-First Workflow

In addition to the playground UI, Braintrust provides TypeScript and Python SDKs for defining prompts, datasets, and scores in version-controlled code: ^[extracted]

- `braintrust.resources.ts` files define prompts, datasets, and scorer configurations
- `braintrust push` pushes these resources to the platform
- `braintrust eval` runs evaluations defined in `.eval.ts` files from the command line or CI
- The same scoring functions can be reused for both offline evals and online scoring
- Results from both UI and SDK aggregate into the same experiment views

### Loop

Loop is Braintrust's automated optimization agent for prompts, datasets, and scorers. It is built into Braintrust and available via a feature flag. ^[extracted]

- Powered by Cloud 4, a frontier model that performs nearly six times better than its predecessor at improving prompts, datasets, and scorers ^[extracted]
- Agentically iterates on all three eval ingredients (prompts, datasets, scorers), not just prompts ^[extracted]
- Has access to previous experiment results to understand whether each change is an improvement ^[extracted]
- Side-by-side UI: every suggestion is shown alongside the original, preserving the ability to inspect data and prompts ^[extracted]
- Auto-optimize toggle: an "adventurous" mode that runs optimization autonomously without human review ^[extracted]
- Model selection: defaults to Cloud 4 but allows any model — OpenAI, Gemini, or custom LLMs ^[extracted]
- Dogfooded: Braintrust uses Loop internally to evaluate its own AI features ^[extracted]
- Available to existing Braintrust users via a "Loop" feature flag ^[extracted]

## Evaluation Ingredient Model

Braintrust formalizes AI evaluation into three required [[concepts/eval-ingredients-task-dataset-score|ingredients]]: ^[extracted]

1. **Task** — The prompt or workflow being tested (single prompt, multi-turn chat, tool calls, chained agents)
2. **Dataset** — Test cases with input, optional expected output, and metadata
3. **Score** — Grading logic (LLM-as-judge or code-based), outputting 0-1

This model enables the [[concepts/eval-quality-matrix|Eval Quality Matrix]] diagnostic — a 2x2 framework mapping human judgment against automated scores to decide whether to improve the evals or improve the AI app. ^[extracted]

Scores follow [[concepts/llm-judge-best-practices|best practices]]: focused criteria per judge, higher-quality model as evaluator, judge evaluation against human ground truth, and trial averaging for non-determinism. ^[extracted]

The [[concepts/eval-playground-experiment-workflow|playground vs experiments workflow]] supports both rapid iteration (playground) and longitudinal tracking (experiments) using the same ingredient model. ^[extracted]

## Human-in-the-Loop Features

Braintrust supports two types of human evaluation: ^[extracted]

1. **Human review**: Annotators or subject matter experts manually score or audit specific data points, logs, or experiment results. Reviewers work through a dedicated pared-down interface optimized for evaluation speed. Custom score types: yes/no, slider, free text, A/B/C/D selection. Human review scores establish ground truth and calibrate LLM-as-judge prompts. ^[extracted]
2. **User feedback capture**: Direct thumbs-up/thumbs-down and free-text comments from real users, logged against specific spans in the trace via a `logFeedback()` function. These can be filtered into views (e.g., "all thumbs-down traces") and added to datasets for offline evals. ^[extracted]

## Evals in CI

[[entities/ido-pesok|Ido Pesok]] (Vercel) referenced Braintrust at AIEF2025 as a tool that supports CI-integrated evals: running eval tasks across the full dataset when PRs are submitted, generating reports that visualize improvements and regressions across the entire test "court." ^[extracted] This aligns with Braintrust's SDK-first workflow where `braintrust eval` can be invoked from CI pipelines. ^[inferred]

## Related

- [[entities/sarah-sachs|Sarah Sachs]] — AI lead at Notion and Braintrust customer, presented on their evaluation methodology
- [[entities/carlos-esteban|Carlos Esteban]] — Braintrust Solutions Engineer who co-presented the evals workshop
- [[entities/ido-pesok|Ido Pesok]] — Referenced Braintrust for CI eval integration at AIEF2025
- [[concepts/per-element-llm-judge|Per-Element LLM Judge]] — the evaluation methodology built on top of Braintrust
- [[concepts/evaluation-first-development|Evaluation-First Development]] — the development paradigm Braintrust enables
- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — Braintrust's evaluation model
- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — diagnostic framework used with Braintrust scores
- [[concepts/llm-judge-best-practices|LLM-as-Judge Best Practices]] — design principles for Braintrust scorers
- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization Agent]] — Braintrust's built-in eval optimization agent
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — production tracing via Braintrust
- [[concepts/eval-playground-experiment-workflow|Playground vs Experiments Workflow]] — Braintrust's two-mode workflow
- [[concepts/eval-dataset-strategy|Eval Dataset Strategy]] — dataset bootstrapping on Braintrust
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — the operational flywheel Braintrust supports

## Sources

- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — Ankur Goyal, Braintrust]] — AIEF2025 talk introducing Loop and Cloud 4
- [[references/aief2025-five-hard-earned-lessons-evals-ankur-goyal-braintrust|Five Hard Earned Lessons About Evals — Ankur Goyal, Braintrust]] — AIEF2025 talk covering five lessons on eval value, engineering, system optimization, and Loop
- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
