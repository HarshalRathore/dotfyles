---
title: "Agent Systemic Evaluation"
category: concepts
tags:
  - evaluation
  - agents
  - end-to-end
  - systemic
  - integration-testing
aliases: [systemic eval, end-to-end agent eval, agent integration testing]
relationships:
  - target: "[[concepts/manual-vs-automated-evals]]"
    type: implements
  - target: "[[concepts/agent-evaluation-pipeline]]"
    type: related_to
sources:
  - "[[sources/watchv=j4vpq2i0qze]]"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Agent Systemic Evaluation

Agent systemic evaluation is the process of testing a complete AI agent — model, tools, prompts, and orchestration — end-to-end on specific inputs, rather than evaluating individual components in isolation. ^[extracted] It validates that the full agentic pipeline produces correct outputs when all parts work together. ^[extracted]

## Distinction from Model Evaluation

Model evaluation tests the LLM alone on prompts. Systemic evaluation tests the agent as a whole system, including:

- Tool calls (MCP servers, web scrapers, APIs)
- Multi-step reasoning and data aggregation
- Response formatting and output structure
- Cross-system data integration (e.g., combining data from multiple sources) ^[extracted]

## Example: Web Scraping Agent

A web scraping agent that extracts event information from a webpage demonstrates systemic evaluation: the agent must navigate to a URL, parse HTML, extract relevant fields (name, date, location, attendee count), and format the output. The attendee count may not appear on the primary page but on a linked registration page — the agent must discover and follow that link. ^[extracted]

This requires:
1. Correct tool selection (playwright for web navigation)
2. Proper data extraction from HTML
3. Cross-page data aggregation
4. Correct output formatting ^[inferred]

## Evaluation Process

1. Build the agent with tools and system prompt
2. Define specific test inputs (URLs, queries, tasks)
3. Run the agent on each input
4. Manually review each output for correctness
5. Thumbs up/down scoring for batch results ^[extracted]

## Role in Evaluation Progression

Systemic evaluation is Phase 2 of the [[concepts/manual-vs-automated-evals|evaluation progression]] — after manual model evaluation (Phase 1) and before batch evaluation (Phase 3). It bridges the gap between testing individual models and testing the agent at scale. ^[inferred]

## Related

- [[concepts/manual-vs-automated-evals]] — The evaluation progression framework
- [[concepts/agent-evaluation-pipeline]] — CI/CD integration for continuous systemic evaluation
- [[concepts/layered-agent-safety]] — Safety considerations for agentic systems

## Sources

- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
