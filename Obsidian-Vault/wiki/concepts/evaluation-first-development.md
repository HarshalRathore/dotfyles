---
title: "Evaluation-First Development"
tags:
  - ai
  - evaluation
  - methodology
  - testing
  - development
sources:
  - "AI Engineer World's Fair 2025 talk — HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA - https://www.youtube.com/watch?v=-tgQa8Fzf80"
  - "AI Engineer World's Fair 2025 talk — The Build-Operate Divide: Bridging Product Vision and AI Operational Reality — Jeremy (Freeplay) & Chris Hernandez (Chime) - https://www.youtube.com/watch?v=1__V4KTv_Gw"
  - "AI Engineer World's Fair 2025 — How to build world-class AI products — Sarah Sachs (AI lead @ Notion) & Carlos Esteban (Braintrust) - https://www.youtube.com/watch?v=6YdPI9YbjbI"
  - "AIEF2025 - Strategies for LLM Evals (GuideLLM, lm-eval-harness, OpenAI Evals Workshop) — Taylor Jordan Smith - https://www.youtube.com/watch?v=89NuzmKokIk"
  - "AIEF2025 - The New Code — Sean Grove, OpenAI - https://www.youtube.com/watch?v=8rABwKRsec4"
  - "AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production - https://www.youtube.com/watch?v=9iN-cPnp7xg"
  - "AIEF2025 - 2025 is the Year of Evals! Just like 2024, and 2023, and … — John Dickerson, CEO Mozilla AI - https://www.youtube.com/watch?v=CQGuvf6gSrM"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.58
lifecycle: draft
created: 2026-07-03
updated: 2026-07-03
---

# Evaluation-First Development

Traditional software development follows a linear flow: design, develop, test, deploy. For AI applications, this sequence is inverted. Building a proof-of-concept that works 50% of the time is straightforward, but making it reliable the other 50% requires a fundamentally different approach centered on early, continuous evaluation. ^[extracted]


## Market Forces Driving Evaluation-First

The urgency of evaluation-first development has been shaped by three converging market forces identified by [[entities/john-dickerson|John Dickerson]] (CEO, [[entities/mozilla-ai|Mozilla AI]]): ChatGPT's 2022 launch made AI tangible to non-technical executives, coincident enterprise budget freezes channeled all new IT spending exclusively into gen AI projects, and the rise of agentic systems — AI now acting *for* humans rather than providing inputs into larger systems — creates direct risk that demands quantitative measurement. ^[extracted]

This means evaluation is no longer just a technical best practice. By 2025, every C-level role has a reason to care: CEO (strategy, board communication), CFO (ROI quantification), CISO (security risk), CIO (operations), CTO (standards). The evaluation-first methodology, once a niche engineering discipline, has become a business necessity. ^[extracted]

The three-year industry arc — science projects (2023) → production (2024) → scale (2025) — has made evaluation infrastructure a competitive differentiator rather than an afterthought. ^[extracted] See [[concepts/ai-evaluation-market-history]] for the full historical analysis.


## Why Evaluation-First

AI models are non-deterministic — changing a prompt, model, logic, or data source can impact the solution in unpredictable ways. Standard data science metrics (groundedness, factuality, bias) don't measure whether the solution actually works for users. Building evaluations from the start prevents wasted effort and provides an objective measure of progress. ^[extracted]

## The Process

The evaluation-first workflow is an iterative loop:

1. Build the first version of your proof-of-concept
2. Define the first version of tests and evaluations, reverse-engineered from business outcomes
3. Run them and examine the details of each failure — not just aggregate scores
4. Change either the solution (prompt, model, logic, data) or the eval as needed
5. Repeat — each change may break something that previously worked

Over time, this process converges on a benchmark baseline that represents the known-working state of the solution. ^[extracted]

## Continuous Improvement

Once a baseline is established, you can confidently experiment with:
- Different models (e.g., testing if a cheaper model performs equivalently)
- Architecture changes (RAG, agentic approaches, logic simplifications)
- Prompt and data optimizations

The eval suite provides a [[concepts/checklist-based-evaluation|checklist-based safety net]] against [[concepts/ai-regression-testing|regressions]].

## Explainability Through Evaluation

A correctly-defined evaluation suite makes AI applications explainable: you know exactly what the system does and how it does it, because you have specific tests for every capability. This is a form of [[concepts/pit-of-success-design|pit-of-success design]] — the evaluation framework guides development toward the right outcomes. ^[inferred]

## The Operational Dimension: The AI Iteration Loop

Evaluation-first development establishes the baseline and methodology for measuring quality. The [[concepts/ai-iteration-loop|AI Iteration Loop]] (monitor → experiment → test → evaluate) operationalizes this methodology as a continuous cycle. The Build-Operate Divide talk frames product quality as "a direct function of your ability to move through this loop" — evaluation-first provides the measurement framework, while the iteration loop provides the operational engine for executing it at scale. ^[extracted]

This operational dimension introduces a key insight: iteration speed becomes the binding constraint on quality, and ops infrastructure determines iteration speed. Without operational support — human reviewers, evaluation infrastructure, iteration management — even a well-designed evaluation-first baseline can stall at V1 quality. ^[inferred]

## The 10/90 Split in Practice

[[entities/sarah-sachs|Sarah Sachs]] (AI lead at [[entities/notion|Notion]]) offers a concrete operationalization of the evaluation-first ratio: "We spend maybe 10% of our time prompting and 90% of our time looking at evals and iterating on our evals and looking at our usage." ^[extracted]

This 10/90 split represents a deliberate allocation of engineering effort. The prompting work — crafting the system prompt, few-shot examples, and output formatting — is the visible generation of the AI product. But the 90% on evals is what makes it production-grade: building [[concepts/curated-dataset-strategy|curated datasets]], authoring [[concepts/per-element-llm-judge|per-element judge prompts]], running experiments, inspecting failure cases, and tying scores back into an iteration loop. ^[extracted]

The key insight from Notion's experience: "Everything that we build, the IP comes from how we evaluate it and how we build it." The evaluation infrastructure and methodology become the competitive moat, not the prompts themselves. ^[extracted]

This framing refines the general evaluation-first approach with a specific metric: if your team is spending more than 10% of its time on prompting, you're likely under-investing in the evaluation infrastructure that determines real product quality. ^[inferred]

## Relationship to Other Approaches

- [[concepts/voice-agent-evals|Voice Agent Evals]] — a domain-specific application of similar evaluation principles
- [[concepts/agent-loop|Agent Loop]] — the iterative feedback cycle that evaluation-first depends on
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — the operational engine that runs evaluation-first at scale; evaluation-first defines the baseline, the iteration loop drives continuous improvement
- [[concepts/build-operate-divide|Build-Operate Divide]] — the gap between establishing a baseline (evaluation-first) and sustaining the iteration needed to cross the quality chasm

### The Evaluation Pyramid

A complementary framing from [[entities/taylor-jordan-smith|Taylor Jordan Smith]] (Red Hat) is the [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]], which tiers evaluation into system performance, formatting, factual accuracy, safety/bias, and custom evals — mirroring the software testing pyramid (unit → integration → end-to-end). Evaluation-first development provides the methodology; the pyramid provides the scope and priority order. ^[extracted]

### The Eval Ingredients Model

[[entities/braintrust|Braintrust]] formalizes evaluation-first development through the [[concepts/eval-ingredients-task-dataset-score|three-ingredient eval model]]: a task (the prompt/workflow being tested), a dataset (real-world or synthetic test cases), and scores (LLM-as-judge or code-based grading functions). This model provides a concrete implementation framework for the evaluation-first methodology — the three ingredients are what teams actually build and iterate on during the 90% eval effort. ^[extracted]

The [[concepts/eval-quality-matrix|Eval Quality Matrix]] operationalizes the evaluation-first decision cycle: when an eval returns a score that conflicts with human judgment (good output × low score, or bad output × high score), the evaluation criteria need refinement. When scores and judgment align on bad outputs, the AI app itself needs improvement. This gives teams a clear, data-driven answer to "should I improve my evals or improve my app?" — the core question evaluation-first development constantly faces. ^[extracted]

The same workshop provides practical guidance on [[concepts/eval-dataset-strategy|dataset bootstrapping]] (start synthetic, ground in logs) and [[concepts/llm-judge-best-practices|LLM-as-judge design]] (focused criteria, higher-quality judge model, trial averaging) — both essential skills for executing evaluation-first methodology in practice. ^[inferred]

### Playground vs Experiments

Evaluation-first development relies on rapid iteration cycles. The [[concepts/eval-playground-experiment-workflow|playground vs experiments workflow]] supports this with two modes: a playground for ephemeral A/B comparison (change prompt/model, run dataset, review scores) and experiments for longitudinal tracking (compare scores across weeks, integrate with CI). Both modes use the same three-ingredient model. ^[extracted]

### Online Evals and Production Monitoring

The evaluation-first cycle extends beyond development. [[concepts/online-evals|Online evals]] score live production traffic, while [[concepts/ai-observability-production-logging|production logging]] captures traces, metrics, and user feedback. Low-scoring production traces can be added to offline datasets with one click, closing the feedback loop. ^[extracted]

### CI/CD Integration for Evals

A related insight from the same talk: evaluations should be automated and run continuously through a CI/CD pipeline, just like unit tests in traditional software engineering. This is the natural extension of evaluation-first into deployment — the eval suite becomes a gate that every change must pass before reaching production, catching regressions automatically. ^[extracted]

### Agent Evaluation Pipeline

[[entities/microsoft|Microsoft]] extends evaluation-first to the platform level with an [[concepts/agent-evaluation-pipeline|agent evaluation pipeline]]: evaluation SDK integrated directly into CI/CD, dedicated red teaming agents for adversarial testing, and continuous observability via OpenTelemetry — regardless of where the agent was built or deployed. ^[extracted] The Build Events demo at AI Engineer World's Fair 2025 showed agents being evaluated on every update through the CI/CD pipeline, with full thread-level transparency into tool calls, prompts, and tokens. ^[extracted] This makes evaluation a built-in infrastructure capability rather than a per-project choice. ^[inferred]

### Specification-Driven Evaluation

[[concepts/deliberative-alignment|Deliberative alignment]] (from [[entities/openai|OpenAI]]'s [[entities/sean-grove|Sean Grove]] at AI Engineer World's Fair 2025) extends evaluation-first development to the model training level. Rather than evaluating just the application output (prompts, RAG, logic), it evaluates the model's behavioral alignment against a written specification and reinforces compliance during post-training. ^[extracted]

This connects evaluation-first to [[concepts/specifications-as-code|specifications as code]]: the specification document becomes both the training material and the evaluation criteria. Each clause in the spec can have associated test prompts that serve as the evaluation suite for that behavioral requirement. ^[inferred] Where evaluation-first establishes the measurement framework for application behavior, deliberative alignment embeds the evaluation criteria directly into the model's weights — making compliance automatic rather than relying on inference-time prompting. ^[inferred]

### RAG-Specific Evaluation

For RAG systems specifically, dedicated evaluation libraries like [[entities/ragas|Ragas]] provide end-to-end measurement across response quality, retrieval quality, and query interpretation — evaluating metrics like faithfulness, answer relevancy, precision, and recall. Ragas uses an LLM under the hood and supports bringing custom models. This complements task-specific evals by providing standardized RAG-quality metrics alongside domain-specific business-outcome criteria. ^[extracted]

## Sources

- [[references/ai-eng-worlds-fair-2025-talk-practical-tactics-reliable-ai|Practical tactics to build reliable AI apps — Dmitry Kuchin, Multinear]] — Conference talk
- [[references/hybridrag-fusion-graph-vector-retrieval-mitesh-patel|HybridRAG: A Fusion of Graph and Vector Retrieval — Mitesh Patel, NVIDIA]] — Conference talk
- [[references/build-operate-divide-freeplay-chime-2025|The Build-Operate Divide: Bridging Product Vision and AI Operational Reality — AI Engineer World's Fair 2025]]
- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — Conference talk
- [[references/the-new-code-sean-grove-openai|The New Code — Sean Grove, OpenAI (AI Engineer World's Fair 2025)]] — Specification-driven evaluation and deliberative alignment
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma|Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft]] — Keynote at AI Engineer World's Fair 2025
- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
