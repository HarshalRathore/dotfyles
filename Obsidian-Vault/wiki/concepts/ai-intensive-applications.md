---
title: "AI-Intensive Applications"
tags:
  - ai-intensive
  - architecture
  - multi-step
  - orchestration
  - pattern
sources:
  - "[[sources/watchv=ihkyfhu6jey]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AI-Intensive Applications

AI-intensive applications are systems that make **thousands of AI calls** to serve a particular purpose. They represent a category of AI applications where the value comes not from a single model interaction, but from orchestrating many AI calls across a pipeline or workflow.

## Defining Characteristics

- **High call volume:** Thousands of API calls per execution cycle
- **Multi-step orchestration:** Multiple phases of processing, each potentially involving AI
- **Pipeline architecture:** Data flows through sequential phases (collect, plan, analyze, deliver, evaluate)
- **Purpose-driven:** Each AI call serves a specific role in the overall pipeline

## The SPADE Architecture

The canonical architecture for AI-intensive applications is the [[concepts/spade-pattern|SPADE pattern]] (Sync, Plan, Analyze, Deliver, Evaluate), proposed by [[entities/swyx|swyx]] at AIEF2025. SPADE provides a complete pipeline model where:

1. **Sync** collects raw data from multiple sources
2. **Plan** organizes and prioritizes findings
3. **Analyze** recursively summarizes and reduces many inputs to one output
4. **Deliver** formats and presents results to the user
5. **Evaluate** assesses quality and drives iteration

## Examples

- **AI News** — swyx's daily newsletter that scrapes Discord, Reddit, and Twitter, then runs a SPADE pipeline to curate AI developments for 70,000+ readers
- **Deep research systems** — systems that scrape, plan, analyze, and synthesize from multiple research sources
- **Automated content pipelines** — systems that ingest, summarize, and deliver content at scale

## Relationship to Agent Patterns

AI-intensive applications can be implemented as workflows, agents, or hybrid patterns. [[entities/swyx|swyx]] argues that the terminology distinction is less useful than tracking the ratio of human input to AI output. The SPADE pattern itself is a **workflow pattern** — it has a fixed pipeline structure rather than iterative self-directed behavior.

However, individual phases within SPADE can use agents. For example, the Analyze phase might use an [[concepts/agent-loop|agent loop]] to recursively summarize content, while the Evaluate phase might use an agent to assess quality.

## Engineering Considerations

Building AI-intensive applications requires:

- **Parallel processing** — running multiple sync/analyze tasks concurrently
- **Error handling** — individual AI calls can fail; the pipeline must be resilient
- **Cost management** — thousands of calls means significant API costs
- **Observability** — tracking which phase produced which result for debugging
- **Evaluation** — measuring output quality across the entire pipeline, not just individual calls

## Related

- [[concepts/spade-pattern]] — The canonical pipeline architecture for AI-intensive applications
- [[concepts/agent-loop]] — Iterative pattern that can be used within SPADE phases
- [[concepts/workflow-vs-agent]] — SPADE as a workflow pattern
- [[concepts/standard-models-ai-engineering]] — AI-intensive apps as a candidate standard model
- [[references/aief2025-designing-ai-intensive-applications-swyx]] — Full keynote introducing the concept
