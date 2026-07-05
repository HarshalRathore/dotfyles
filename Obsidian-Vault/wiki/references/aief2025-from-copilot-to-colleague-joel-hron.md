---
title: "From Copilot to Colleague: Trustworthy Agents for High-Stakes"
category: references
tags: [aief2025, talk, thomson-reuters, enterprise-ai, evals, legacy-systems, agent-design]
summary: Joel Hron, CTO of Thomson Reuters, describes the company's evolution from helpful AI assistants to productive agents in high-stakes domains (law, tax, risk), covering agentic dials, eval challenges, and legacy decomposition.
sources:
  - "AIEF2025 - From Copilot to Colleague: Trustworthy Agents for High-Stakes - Joel Hron, CTO Thomson Reuters - https://www.youtube.com/watch?v=kDEvo2__Ijg"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/joel-hron]]"
    type: features
  - target: "[[entities/thomson-reuters]]"
    type: about
---

# From Copilot to Colleague: Trustworthy Agents for High-Stakes

**Speaker:** Joel Hron, CTO, Thomson Reuters
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=kDEvo2__Ijg

## TL;DR

Joel Hron describes Thomson Reuters' 2.5-year journey building AI assistance systems, tracing the shift from "helpful" to "productive" agents that make judgments in high-stakes domains (law, tax, compliance, risk). He introduces agentic AI as four tunable dials (autonomy, context, memory, coordination), discusses the unique challenges of evals in domains where even experts show 10%+ evaluation variability, and explains how legacy applications with 100+ years of domain logic are being decomposed as agent tools.

## Problem / Motivation

Thomson Reuters serves industries where the risks of being wrong are not acceptable: law, tax, global trade, risk, and fraud investigations. The company's north star shifted from building assistants that are "helpful" to assistants that "produce output, make judgments and decisions on behalf of users." ^[extracted]

Y Combinator's Summer 2025 startup letter encapsulated this shift: "don't build agentic tools for law firms, build law firms of agents." ^[extracted]

## Thomson Reuters Context

- 100+ year old company
- 97% of top 100 US law firms are customers
- 99% of Fortune 100 corporate customers in top 100 US CPA firms
- 4,500 domain experts; highest employer of lawyers in the world
- 1.5+ terabytes of proprietary content
- $3B+ in acquisitions over recent years
- 200+ scientists and engineers in applied research lab
- $200M+/year capital on AI product development

## Agentic AI as Dials

Hron frames agentic AI not as binary (agentic or not) but as four tunable dimensions:

1. **Autonomy** — From executing discrete tasks to self-evolving workflows with planning, execution, and re-planning
2. **Context** — From parametric knowledge → RAG with multiple sources → models that permute data sources and schemas
3. **Memory** — From stateless retrieval → shared workflow memory → persistent cross-session memory
4. **Coordination** — From atomic task execution → tool delegation → multi-agent collaboration

Each dial is adjusted based on use case risk tolerance. Exploratory use cases benefit from higher agency; precision-critical workflows need lower agency. ^[extracted]

## Lessons Learned

### Evals Are the Hardest Thing

- Users expect determinism from non-deterministic systems
- Even domain experts show 10%+ swings in accuracy on the same evaluations a week apart
- Expert evaluators are expensive; weekly iteration with humans is costly
- Agent drift makes it hard to identify where evaluations went wrong
- Reference quality becomes harder as agents gain more agency
- Rubrics help, but ultimate signal comes from user preference tracking

### Legacy Applications as Assets

- 100+ years of highly tuned domain logic are not baggage but unique assets
- Legacy systems are decomposed into tools that agents can use
- Users already expect this domain logic in their workflows
- This approach preserves decades of expertise while making it composable

### MVPs and Over-Indulgence

- The MVP mindset sometimes leads teams to over-indulge in features before establishing trust foundations. ^[extracted] (Talk truncated before full elaboration)

## Key Quotes

> "We're not asking assistance to just be helpful anymore. We're asking them to actually produce output, to make judgments and decisions on behalf of users." ^[extracted]

> "Don't build agentic tools for law firms, build law firms of agents." — Y Combinator Summer 2025 ^[extracted]

> "Our legacy applications are... in many ways enabling... we're finding new ways to leverage a lot of these legacy applications and infrastructure that previously we might have thought of as baggage." ^[extracted]

## Related Pages

- [[entities/joel-hron|Joel Hron]] — Speaker and CTO of Thomson Reuters
- [[entities/thomson-reuters|Thomson Reuters]] — Company context
- [[concepts/agentic-dials|Agentic Dials]] — The four-dial framework for agentic AI
- [[concepts/deterministic-trust-expectation|Deterministic Trust Expectation]] — User expectations vs system behavior
- [[concepts/legacy-as-agent-tools|Legacy as Agent Tools]] — Decomposing legacy systems as agent capabilities
- [[concepts/domain-specific-evals|Domain-Specific Evals]] — Evaluation challenges in high-stakes domains
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — The broader reliability problem
