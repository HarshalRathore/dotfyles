---
title: "Agentic AI — Andrew Ng / DeepLearning.AI"
category: references
tags:
  - agentic-ai
  - agent-workflows
  - agent-evaluation
  - planning
  - multi-agent
  - education
aliases:
  - Andrew Ng Agentic AI course
sources:
  - "https://www.deeplearning.ai/courses/agentic-ai"
  - "https://www.youtube.com/watch?v=w7vqXL4PWEE"
  - "https://x.com/i/status/2083255916221370588"
  - "https://video.twimg.com/amplify_video/2083253506568564736/vid/avc1/1280x720/dxl2s8XTKaJqYgyt.mp4"
summary: "Official DeepLearning.AI course by Andrew Ng on agentic workflows, reflection, tool use, planning, multi-agent systems, evals, and production optimization; the X clip is only a selected 1h45m excerpt."
provenance:
  extracted: 0.88
  inferred: 0.09
  ambiguous: 0.03
base_confidence: 0.86
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-08-02T13:04:14Z"
updated: "2026-08-02T13:04:14Z"
relationships:
  - target: "[[entities/andrew-ng|Andrew Ng]]"
    type: derived_from
  - target: "[[concepts/agent-workflows|Agent Workflows]]"
    type: related_to
  - target: "[[concepts/agent-evaluations|Agent Evaluations]]"
    type: extends
  - target: "[[concepts/multi-agent-architecture|Multi-Agent Architecture]]"
    type: related_to
---

# Agentic AI — Andrew Ng / DeepLearning.AI

> [!tldr] The official course teaches agentic systems as multi-step LM applications built from workflows, tools, evaluation, and iteration; the captured X clip is a selected excerpt rather than the complete course. ^[extracted]

## Official Course

DeepLearning.AI lists this as an intermediate course taught by [[entities/andrew-ng|Andrew Ng]]. The official page advertises 9h55m of material, 31 video lessons, and 7 code examples. It describes a raw-Python, framework-neutral approach intended to expose the workflow mechanics rather than hide them behind a framework. ^[extracted]

The course outline has five modules:

1. **Introduction to Agentic Workflows** — agent definitions, autonomy degrees, applications, task decomposition, evals, and design patterns.
2. **Reflection Design Pattern** — generate, critique, and improve outputs.
3. **Tool Use** — functions, tool syntax, code execution, and MCP.
4. **Practical Tips for Building Agentic AI** — evals, error analysis, component-level diagnosis, model choice, and latency/cost optimization.
5. **Patterns for Highly Autonomous Agents** — planning, code-based plans, multi-agent workflows, and communication patterns. ^[extracted]

## Captured Clip Timeline

The X post's embedded media is 6,351.424 seconds (1:45:51.424). Remote ASR produced approximate 60-second-window timing. The timeline below is a distillation of the transcript, not a verbatim caption file:

| Approx. range | Captured material |
|---|---|
| 00:00–38:00 | What agentic AI is, degrees of autonomy, benefits, task decomposition, building blocks, eval overview, and reflection/tool-use/planning/multi-agent patterns |
| 38:00–80:00 | Practical development: build a quick end-to-end system, inspect outputs and traces, perform error analysis, add small evals, improve components, select models, then measure latency and cost |
| 80:00–90:00 | Planning with tools; structured JSON/XML plans and code as a plan; separate planning from execution |
| 90:00–104:00 | Multi-agent decomposition into specialized roles, linear and hierarchical coordination, and more chaotic all-to-all communication |
| 104:00–105:51 | Course conclusion and responsible-use reminder |

The clip jumps between course modules. It introduces reflection and tool use but does not contain the full lessons represented in the official outline. ^[extracted] ^[ambiguous]

## Distilled Principles

### Start with decomposition, not a framework

Take a complex task and identify discrete steps. For each step, ask whether it is best implemented by an LM, ordinary code, retrieval, or an external tool such as an API or database. A workflow is a composition of these building blocks, not a synonym for “one large prompt.” ^[extracted]

### Build before theorizing; improve through error analysis

Andrew Ng recommends building a safe, quick end-to-end system, looking at what it actually produces, and then using disciplined error analysis to decide what to improve. Read intermediate outputs and traces; count which components fail and how often. This prevents spending weeks optimizing a component that does not control end-to-end quality. ^[extracted]

### Evals need two axes

The clip presents a useful 2×2 evaluation frame:

- **Objective vs. subjective:** code checks facts, formats, lengths, or forbidden terms; an LM judge scores qualities such as coherence or coverage.
- **Per-example ground truth vs. shared rubric:** invoice dates need different expected values per example; a ten-word limit can use the same rule for every example.

Start with a small set of roughly 10–20 examples, combine automated checks with human inspection, and refine the eval as understanding improves. Component-level evals help localize the problem before relying only on end-to-end scores. ^[extracted]

### Optimize in the right order

First make the output good enough. Then compare models and components using evals, decompose difficult steps, and reserve fine-tuning for the remaining gap. Once quality is acceptable, measure latency and cost per step; optimize the steps that materially contribute rather than guessing from the overall average. ^[extracted]

### Planning and multi-agent coordination

A planner can inspect available tools and produce a sequence for the executor. Structured JSON or XML makes the plan easier for downstream code to parse; code can express more complex branching and parallelism. Multi-agent systems then split a complex job into role-specific agents. Common communication topologies are linear handoffs, a manager coordinating workers, deeper hierarchies, and all-to-all messaging; the last offers flexibility at the cost of chaos and unpredictability. ^[extracted]

## Limits and Provenance

The transcript is an approximate BharatCode remote transcription of the X-hosted clip and contains recognition errors. The official course page is the authority for course length, lesson count, module structure, and instructor attribution. The X caption's “1 hour” description is not accurate for the captured 1:45:51 clip and should not be used as the course's total duration. ^[extracted] ^[ambiguous]

## Related

- [[misc/web-x-com-i-status-2083255916221370588|Andrew Ng Agentic AI Course X Source]] — post, media measurement, and linked article provenance
- [[entities/andrew-ng|Andrew Ng]] — instructor
- [[concepts/agent-workflows|Agent Workflows]] — orchestration layer and workflow spectrum
- [[concepts/agent-evaluations|Agent Evaluations]] — evaluation as the improvement signal
- [[concepts/ai-agent-observability|AI Agent Observability]] — traces and intermediate outputs
- [[concepts/planning-in-llms|Planning in Reasoning Models]] — planning and decomposition
- [[concepts/multi-agent-architecture|Multi-Agent Architecture]] — specialized agents and coordination boundaries
