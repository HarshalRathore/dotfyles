---
title: swyx
tags:
- person
- ai-engineer
- ai-news
- conference-organizer
- open-source
- ai-intensive
sources:
- 'https://www.youtube.com/watch?v=ihkyfhu6jey'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: entities
summary: swyx
---

# swyx

swyx is an AI engineer, conference organizer, and creator of AI News — a daily newsletter with over 70,000 readers that curates and summarizes the latest AI developments. He is also the organizer of the AI Engineer World's Fair (AIEF), one of the most technical AI engineering conferences.

## AI News

AI News is a daily newsletter built by swyx as a personal tool. It scrapes Discord, Reddit, and Twitter, then runs a pipeline of plan, recursive summarize, format, and evaluate to deliver curated AI content. swyx described the pipeline as "three kids in a trench code" — simple scripts that always follow the same process. The newsletter has grown to over 70,000 readers.

[[entities/sumith|Sumith]] (PyTorch lead) provided a key insight: AI News is not actually an agent — it's a workflow. Despite delivering value to readers, it lacks the defining characteristics of agentic systems. This distinction led swyx to develop the SPADE framework as a more useful mental model. ^[extracted]

## AIEF2025 Opening Keynote

At the AI Engineer World's Fair 2025 opening keynote, swyx traced the evolution of AI engineering from low-status GPT wrappers to a mature field. He proposed several candidate "standard models" for AI engineering and introduced the SPADE framework as a practical mental model for designing AI-intensive applications.

Key contributions from the talk:
- The standard models thesis for AI engineering
- The SPADE framework (Sync, Plan, Analyze, Deliver, Evaluate)
- The human-input-to-AI-output ratio mental model for understanding agents vs workflows
- The Solvay Conference analogy for the current moment in AI engineering

## Conference Organization

swyx has organized AIEF since 2023, with each year focusing on a different theme:
- **2023:** Three types of AI engineer
- **2024:** Multidisciplinary AI engineering (leading to the World's Fair format)
- **2025:** Agent engineering

The conference positioned itself as "more responsive than NeurIPS, more technical than TED." For AIEF2025, every track was doubled from the previous year.

## Design Philosophy

A recurring theme in swyx's work: simplicity wins. He has cited Anthropic's Eric Stuntz beating SWE-bench with a "very simple scaffold" and OpenAI's Greg Brockman making similar points about deep research. The field is still early with plenty of "alpha to mine."

## Related

- [[concepts/spade-pattern]] — SPADE framework from swyx's AIEF2025 keynote
- [[concepts/standard-models-ai-engineering]] — standard models thesis proposed by swyx
- [[concepts/agent-vs-workflow]] — agent vs workflow debate discussed by swyx
- [[references/aief2025-designing-ai-intensive-applications-swyx]] — Full AIEF2025 keynote transcript
