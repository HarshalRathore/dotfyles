---
title: "AI News Pipeline"
tags:
  - ai-news
  - pipeline
  - scraping
  - summarization
  - workflow
  - ai-intensive
sources:
  - "[[sources/watchv=ihkyfhu6jey]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AI News Pipeline

The AI News pipeline is a daily automated workflow that curates AI developments for over 70,000 readers. Created by [[entities/swyx|swyx]], it scrapes Discord, Reddit, and Twitter, then runs a structured pipeline of plan, recursive summarize, format, and evaluate.

## Architecture

swyx described the pipeline as "three kids in a trench code" — simple scripts that always follow the same process:

1. **Scrape** — Collect data from Discord, Reddit, and Twitter
2. **Plan** — Organize what was found
3. **Recursively Summarize** — Process and condense content
4. **Format** — Structure for delivery
5. **Evaluate** — Assess quality

The pipeline runs every day and is improved incrementally while swyx also runs the AIEF conference.

## SPADE Mapping

The AI News pipeline is the concrete implementation that led to the [[concepts/spade-pattern|SPADE pattern]]:

- **Sync** = Scrape Discord, Reddit, Twitter
- **Plan** = Organize findings
- **Analyze** = Recursively summarize
- **Deliver** = Format for readers
- **Evaluate** = Assess quality

## Agent vs. Workflow

[[entities/sumith|Sumith]] (PyTorch lead) provided a key insight: AI News is **not an agent** — it's a workflow. Despite delivering value to readers, it lacks the defining characteristics of agentic systems (autonomous goal-directed behavior, self-modifying plans). This distinction was pivotal in swyx's development of the SPADE framework and the input-output ratio mental model.

## Implementation Notes

- The pipeline has been rewritten three times (Discord scrape, Reddit scrape, Twitter scrape) but always follows the same five-phase structure
- swyx runs it daily alongside organizing AIEF2025, demonstrating the practical viability of simple pipelines
- The newsletter has grown to over 70,000 readers

## Related

- [[concepts/spade-pattern]] — SPADE formalized from this pipeline
- [[concepts/ai-intensive-applications]] — AI News as an AI-intensive application
- [[concepts/agent-vs-workflow]] — AI News as the canonical workflow example
- [[entities/swyx]] — Creator of AI News
- [[references/aief2025-designing-ai-intensive-applications-swyx]] — Full keynote discussing the pipeline
