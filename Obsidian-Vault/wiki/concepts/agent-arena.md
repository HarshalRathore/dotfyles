---
title: Agent Arena
category: concepts
tags: [evaluations, benchmarking, production-telemetry, agent-evaluation, leaderboard]
aliases: [Agent Arena, arena.ii, agent evaluation platform]
relationships:
  - target: '[[concepts/evaluate-pyramid]]'
    type: implements
  - target: '[[concepts/agent-as-judge]]'
    type: uses
  - target: '[[concepts/life-leaderboard]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: The largest agent evaluation platform — 1M+ traces, 50M+ lines of code read, 5.7M tool calls/week — using three signal types and five metrics to rank agents in real-world tasks.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Agent Arena

**Agent Arena** is a large-scale agent evaluation platform presented at the AI Engineer World's Fair 2026. It provides real-world agent-as-product evaluation — users submit tasks and agents compete to complete them, producing a comprehensive ranking across diverse capabilities. ^[extracted]

## Scale

- **1M+ traces** — an extensive dataset of agent behavior
- **50M+ lines of code read** — agents analyze massive codebases
- **5.7M tool calls per week** — sustained production load ^[extracted]

## Evaluation Method

Agent Arena uses **three signal types** to produce **five evaluation metrics**: ^[extracted]

### Signal Types

1. **Explicit signals** — direct user feedback and ratings
2. **Implicit signals** — behavioral indicators inferred from agent actions
3. **Environment signals** — objective outcomes from the task environment

### Metrics

The three signals are aggregated into five metrics that capture different dimensions of agent quality, including correctness, efficiency, reliability, and user satisfaction. ^[inferred]

## Leaderboard Results

**Fable 5** ranked #1 on Agent Arena, achieving **+14% over average** performance. ^[extracted]

## Live Demo

At WF2026, Agent Arena was demonstrated live with a real-world agent task: ^[extracted]

> "Download Google's Q1 earnings report and create a slide deck summarizing these in output in PowerPoint."

The agent:
1. Searched the web for the report
2. Pulled the right website
3. Structured the slide deck
4. Used batch tools and Python code to generate the PowerPoint artifact


### Cost and Efficiency Analysis

Agent Arena also tracks cost per session and real-world token usage. Fable 5 costs about $10 per session with a +14% net improvement over average. The analysis revealed that **list price does not correlate with real-world token usage** — some models with similar list prices consume very different token budgets for the same task. For example, GPT 5.5 has a similar list price to Opus but uses fewer tokens to achieve the same task, making it more efficient in practice. ^[extracted]

The platform enables Pareto frontier analysis: users can plot performance against average cost to find the best model for their budget. GLM 5.2 / Gemini is noted as the most cost-efficient option. The data also reveals task-distribution specialization — GPT 5.5 performs relatively better on GDP/economically-valuable professional tasks, while GLM / Gemini tends to do better on consumer use cases. ^[extracted]

### Under the Hood

Arena provides models with a standard toolset: file system tools (read, write, edit), web search, web fetching, image generation, speech, and terminal access for running code. The tool usage distribution shows bash as the most-used tool at 46%, followed by file I/O and web tools. Over one week, the platform handles 5.7 million tool calls. Users are pushing toward harder tasks — building movie watchlist apps, debugging control systems for autonomous vehicles, architecting RAG pipelines — with sessions spanning hundreds of turns and tool calls. ^[extracted]

### Signals and Ranking Method

The ranking methodology uses three signal types — explicit (user feedback on task success/failure), implicit (downloading files, complaining about or praising output), and environment (command success/failure) — aggregated into five metrics: success rate, praise over complaints, durability, bash recovery, and tool hallucination. The core design is a randomized control trial that intervenes on the agent component and measures the causal effect on task outcome, extensible to measuring interaction effects between different components (harness, system prompt, etc.). ^[extracted]

## Related

- [[concepts/evaluate-pyramid|Evaluation Pyramid]] — the framework Agent Arena implements at scale
- [[concepts/agent-as-judge|Agent as Judge]] — the paradigm Agent Arena uses for evaluation
- [[concepts/agent-evaluation-pipeline|Agent Evaluation Pipeline]] — the broader evaluation pipeline
- [[concepts/life-leaderboard|LIFE Leaderboard]] — another large-scale evaluation platform
- [[concepts/eval-scoring-flywheel|Eval Scoring Flywheel]] — how evaluation drives improvement

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
