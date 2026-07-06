---
title: Zapier
category: entities
tags:
- company
- automation
- ai-agents
- saas
- ai-first
aliases:
- Zapier
sources:
- 'AIEF2025 - Turning Fails into Features: Zapier''s Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o'
- AIEF2025 - The rise of the agentic economy on the shoulders of MCP — Jan Curn, Apify - https://www.youtube.com/watch?v=blW-lSd5CYQ
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/braintrust|Braintrust]]'
  type: uses
- target: '[[concepts/evals-testing-pyramid|Evals Testing Pyramid]]'
  type: provides-case-study
- target: '[[concepts/ai-first-company-announcements|AI-First Company Announcements]]'
  type: example-of
summary: Zapier
---

# Zapier

Zapier is an automation software platform that connects applications through workflows (called "Zaps"), enabling non-technical users to automate business processes without coding. ^[extracted]

## Zapier Agents

Zapier Agents is the company's agentic alternative to traditional Zap automation. Rather than requiring users to manually wire together triggers and actions, users describe what they want and the agent proposes tools, triggers, and workflows to automate the entire business process. ^[extracted]

After two years building AI agents, Zapier's key lesson is that building good AI agents is hard, and building a platform that enables non-technical people to build AI agents is even harder. This difficulty stems from two compounding sources of non-determinism: AI itself is probabilistic, and users interact with products in unpredictable ways that developers cannot anticipate up front. ^[extracted]

## MCP Integration

Zapier maintains an MCP server that exposes its 5,000+ tool integrations to AI agents, enabling agents to discover and invoke workflows across the Zapier ecosystem. ^[extracted]

## AI-First Positioning

Zapier has announced itself as an "AI-first company," joining Shopify and Duolingo in declaring that AI capability must precede human hiring decisions. ^[extracted]

## Eval Lessons

Zapier's experience with AI agent evaluation — including their data flywheel, implicit feedback mining, eval hierarchy, and LLM Ops tooling — was presented at AI Engineer World's Fair 2025 by Rafal Willinski and Vitor Balocco. Their approach exemplifies the shift from prototype-first to data-flywheel-first thinking in production AI systems. ^[extracted]

## Related

- [[concepts/ai-first-company-announcements|AI-First Company Announcements]] — Zapier's AI-first declaration
- [[concepts/evals-testing-pyramid|Evals Testing Pyramid]] — Zapier's eval hierarchy
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — Zapier's data flywheel approach
- [[entities/braintrust|Braintrust]] — Platform Zapier uses for eval infrastructure

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
- AIEF2025 - The rise of the agentic economy on the shoulders of MCP — Jan Curn, Apify - https://www.youtube.com/watch?v=blW-lSd5CYQ
