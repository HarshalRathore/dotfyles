---
title: SPADE Pattern
tags:
- ai-intensive
- pattern
- architecture
- workflow
- orchestration
- multi-step
sources:
- 'https://www.youtube.com/watch?v=ihkyfhu6jey'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: concepts
summary: SPADE Pattern
---

# SPADE Pattern

The SPADE pattern is a mental model for designing **AI-intensive applications** — systems that make thousands of AI calls to serve a particular purpose. Proposed by [[entities/swyx|swyx]] in his AIEF2025 opening keynote, SPADE stands for **Sync, Plan, Analyze, Deliver, Evaluate** and forms a complete pipeline from data ingestion to user-facing output.

## The SPADE Pipeline

### Sync

Scrape and ingest data from multiple sources. In swyx's AI News implementation, this means scraping Discord, Reddit, and Twitter simultaneously. The sync phase collects raw signals from the ecosystem.

### Plan

Organize what was found. After collection, the system structures the raw data into a coherent plan — determining what's relevant, what needs deeper analysis, and how to prioritize.

### Analyze

Recursively summarize and process. This is the parallel processing phase where the system reduces many inputs to one coherent output. The analyze step can incorporate knowledge graphs, structured outputs, and code generation.

### Deliver

Format and deliver to the user. Output can be text, code artifacts (like ChatGPT Canvas or Claude Artifacts), or any other format. The delivery mechanism is flexible — the key is that it serves the user's needs.

### Evaluate

Assess quality and iterate. The evaluation phase closes the loop, determining whether the output met its purpose and what should change for the next iteration.

## AI-Engineering Elements

SPADE accommodates several AI engineering patterns within its phases:

- **Knowledge graphs** can be built during the Analyze phase to connect related information
- **Structured outputs** can be generated during Plan or Analyze
- **Code generation** can be part of Deliver (e.g., ChatGPT Canvas, Claude Artifacts deliver code as the output artifact rather than plain text)

## Relationship to Other Patterns

SPADE is distinct from [[concepts/agent-loop|agent loops]] in that it describes a **fixed pipeline** rather than an iterative self-improving cycle. An agent loop runs per-task with evaluation determining whether to continue; SPADE runs as a complete end-to-end pipeline where each phase has a specific responsibility.

The pattern is closely related to [[concepts/ai-intensive-applications]] — SPADE is the operational model for building such applications. It's also complementary to [[concepts/workflow-vs-agent]] — SPADE is a workflow pattern, and swyx argues that workflows (not agent labels) are what deliver value.

## Origin

SPADE was distilled from swyx's daily AI News pipeline, which runs every day to curate AI developments for over 70,000 readers. The acronym emerged organically from the five phases of the pipeline. swyx presented it as his "current hypothesis" for the standard model of AI-intensive application design.

## Related

- [[concepts/ai-intensive-applications]] — The category of applications SPADE is designed for
- [[concepts/agent-loop]] — Complementary pattern: agent loops for iterative work, SPADE for pipeline work
- [[concepts/standard-models-ai-engineering]] — SPADE as one candidate standard model
- [[concepts/workflow-vs-agent]] — SPADE as a workflow pattern that delivers value
- [[references/aief2025-designing-ai-intensive-applications-swyx]] — Full keynote where SPADE was introduced
