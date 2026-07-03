---
title: "How to build world-class AI products — Sarah Sachs & Carlos Esteban"
tags:
  - ai
  - evaluation
  - notion
  - braintrust
  - product
  - conference
sources:
  - "AI Engineer World's Fair 2025 — How to build world-class AI products — Sarah Sachs (AI lead @ Notion) & Carlos Esteban (Braintrust) - https://www.youtube.com/watch?v=6YdPI9YbjbI"
summary: "Sarah Sachs (Notion AI lead) and Carlos Esteban (Braintrust) discuss how Notion builds world-class AI products through evaluation-driven development, per-element LLM-as-judge, curated datasets, and production observability."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)

> [!tldr] Notion's AI development philosophy centers on rigorous evaluation as the foundation for quality: 10% prompting, 90% evals. The talk covers the per-element LLM-judge methodology, curated small-dataset strategy, retrieval evaluation isolation, production observability, and the Braintrust platform for operationalizing these practices.

## Key Quotes

> "All of the rigor and excellence that comes from building great AI products comes from observability and good evals." — Sarah Sachs ^[extracted]

> "We spend maybe 10% of our time prompting and 90% of our time looking at evals and iterating on our evals." — Sarah Sachs ^[extracted]

> "Your product quality becomes a direct function of your ability to move through this loop." — Carlos Esteban ^[extracted]

## Speaker Context

**[[entities/sarah-sachs|Sarah Sachs]]** is the AI lead at [[entities/notion|Notion]], having joined 10 months before the talk. She leads a team that includes tech leads, engineers, data specialists, and human labelers.

**Carlos Esteban** is a Solutions Engineer at [[entities/braintrust|Braintrust]] with 6 weeks tenure at the time of the talk, previously at an infrastructure company.

## Notion AI Evolution

Notion's AI journey progressed through several product generations:

1. **AI Writer** — Inline text generation. Notion AI actually launched before ChatGPT, having early access to generative models. ^[extracted]
2. **AI Autofill** — AI that operates across database properties, triggered frequently, handling translations and cross-database operations. This was where unpredicted usage patterns first emerged. ^[extracted]
3. **Q&A / RAG solution** — The first full AI-data platform collaboration, offering Q&A to free users with embeddings for everyone and multilingual workspace support. ^[extracted]
4. **Enterprise Search** — Cross-app search across Slack, Jira, Google Drive, and Notion attachments. ^[extracted]
5. **AI Meeting Notes** — Speech-to-text, transcription, summaries with workspace awareness for action items. ^[extracted]
6. **Deep Research** — Parallel search execution with fine-tuned agentic capabilities — Notion's first "transition out of workflows into agents," where the AI has the reasoning capability to decide on different tools and spend longer on tasks. ^[extracted]

Key insight: "We didn't start with what I just showed you. We worked really with where the models were most capable." ^[extracted]

## Evaluation Methodology

### The 10/90 Split
Notion allocates 10% of engineering time to prompting and 90% to evals — running [[concepts/evaluation-first-development|evaluation-first development]] at production scale. This ensures consistency and catches regressions before users notice. ^[extracted]

### [[concepts/per-element-llm-judge|Per-Element LLM-as-Judge]]
Rather than one generic judge prompt, each data point has its own scoring prompt encoding specific criteria. This is more laborious to create but far more insightful. Particularly effective for:
- Search evals where the index is always changing
- Multilingual responses (60% of Notion Enterprise users are non-English speaking)
- Model switching eval: test a new model across all judges with one action ^[extracted]

### [[concepts/curated-dataset-strategy|Curated Datasets]]
Data specialists (hybrid PM/data/annotator role) create handcrafted datasets from internal dogfooding logs. "Let's make it 10 things first, and make sure it's formatted the way that you want." Quality over quantity. ^[extracted]

### [[concepts/retrieval-evaluation-isolation|Retrieval Evaluation Isolation]]
RAG evaluation separates retrieval and generation into independent pipelines. Retrieval is frozen at data point creation time for generation evals; stale data points are dropped rather than re-retrieved. ^[extracted]

### [[concepts/prompt-fallback-infrastructure|Prompt Fallback Infrastructure]]
Hundreds of prompts with per-prompt fallback configurations, cost-aware and capability-aware. Implemented late — required a "tribal of elders" knowledge-gathering process. ^[extracted]

## Lessons Learned

- **Over-reliance on LLM-as-judge**: Judges that start narrow (e.g., only checking markdown formatting) accumulate power without scrutiny. Few people investigate losses. "We used to use them just to catch specific regressions… all of a sudden, we weren't catching that it would switch languages." ^[extracted]
- **Scope your judges**: Either have judges scoped to a specific task (separate judges for formatting, language-following, completeness) and commit to looking at the losses, or keep a very small set. ^[extracted]
- **Start small**: Creating lots of poorly-structured data is worse than 10 well-structured data points. ^[extracted]
- **Dogfooding advantage**: Notion's ability to use its own product at scale generates natural, high-quality evaluation data. ^[extracted]

## The Braintrust Platform

[[entities/braintrust|Braintrust]] provides the evaluation infrastructure Notion built on:

### Components
- **Playground** — Quick iteration with prompts, datasets, and scores; ephemeral by default ^[extracted]
- **Experiments** — Persistent, comparable evaluation runs traceable over time ^[extracted]
- **Datasets** — Three-column structure (input, expected output, metadata); small starting size recommended ^[extracted]
- **Scores** — LLM-as-judge (subjective) or heuristic/code-based (deterministic) ^[extracted]
- **Online scoring** — Production evals at configurable sampling rates (1% to 100%) ^[extracted]
- **Human review** — Configurable review forms (options, sliders, free text) for annotators ^[extracted]
- **Remote evals** — Expose complex SDK tasks to the playground for non-technical reviewers ^[extracted]

### Evaluation Matrix
| | High Score | Low Score |
|---|---|---|
| **Looks good** | Great place to be | Improve evals (rater doesn't match your judgment) |
| **Looks bad** | Improve evals (rater gives high marks for bad output) | Improve the app |

## Related Pages

- [[concepts/per-element-llm-judge|Per-Element LLM Judge]] — the core methodology
- [[concepts/curated-dataset-strategy|Curated Dataset Strategy]] — how Notion builds datasets
- [[concepts/retrieval-evaluation-isolation|Retrieval Evaluation Isolation]] — RAG eval pattern
- [[concepts/prompt-fallback-infrastructure|Prompt Fallback Infrastructure]] — model management
- [[concepts/evaluation-first-development|Evaluation-First Development]] — the broader paradigm
- [[concepts/task-specific-evals|Task-Specific Evals]] — how criteria are derived
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — the operational cycle
- [[entities/sarah-sachs|Sarah Sachs]] — speaker
- [[entities/braintrust|Braintrust]] — the platform

## Source

- <https://www.youtube.com/watch?v=6YdPI9YbjbI> — AI Engineer World's Fair 2025
