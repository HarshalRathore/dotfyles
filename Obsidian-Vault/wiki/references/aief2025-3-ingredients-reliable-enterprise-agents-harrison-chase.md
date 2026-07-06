---
title: 3 Ingredients for Building Reliable Enterprise Agents — Harrison Chase, LangChain/LangGraph
category: references
tags:
- aief2025
- enterprise-ai
- agent-reliability
- langgraph
- langsmith
- agent-workflows
- evals
- observability
- talk
sources:
- AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg
summary: 'Harrison Chase distills enterprise agent adoption into a first-principles equation: value when right, cost when wrong, and probability of success. Argues for deterministic workflows over pure promp...'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/enterprise-agent-adoption-equation]]'
  type: defines
- target: '[[concepts/workflow-agent-spectrum]]'
  type: defines
- target: '[[concepts/agent-reliability-challenge]]'
  type: related_to
- target: '[[concepts/observability-for-enterprise-trust]]'
  type: defines
---

# 3 Ingredients for Building Reliable Enterprise Agents — Harrison Chase, LangChain/LangGraph

Harrison Chase, founder of LangChain, presents a first-principles framework for understanding what makes AI agents succeed or fail in enterprise settings. The talk was delivered at the AI Engineer World's Fair 2025 and draws on conversations with practitioners including Asaf (head of AI at Monday and creator of GPT Researcher).

## The Adoption Equation

Chase proposes a simple equation for enterprise agent adoption:

$$\text{Adoption} = (\text{probability of success} \times \text{value when right}) - (\text{cost when wrong})$$

This must exceed the cost of running the agent for it to be worth deploying. The three ingredients map directly to the terms:

1. **Value when right** — the greater the value of a correct agent output, the more likely it will be adopted
2. **Cost when wrong** — the higher the cost of errors, the less likely adoption
3. **Probability of success** — the reliability of the agent in producing correct outputs

## Ingredient 1: Maximizing Value When Right

Chase identifies two levers for increasing value:

- **Choosing high-value tasks** — Legal research (Harvey), finance research, and summarization are examples of high-value work where organizations already pay significant money for human labor.
- **Shifting interaction patterns to long-running work** — A trend toward "deep research" agents that run for extended periods, and "ambient agents" that work in the background for hours. This contrasts with traditional RAG/QA systems that respond within seconds. ^[extracted]

## Ingredient 2: Reducing Cost When Wrong

Implicit in the framework: reducing cost when wrong means building agents whose failures are low-stakes, detectable, and recoverable. The enterprise context amplifies this because organizations need predictability and control over agent behavior. ^[inferred]

## Ingredient 3: Increasing Probability of Success

This is the talk's central technical contribution. Chase argues that the core challenge is **reliability** — easy to get working once in a prototype, hard to make production-ready. The solution: make more of the agent **deterministic**.

Chase introduces the **workflow-agent spectrum**: rather than "workflows versus agents," the reality is "workflows **and** agents." Parts of an agentic system may loop and call tools, while other parts follow deterministic sequences (A → B → C). The right balance depends on the application.

This is the thesis behind **LangGraph**, an agent framework designed to operate anywhere on this spectrum — allowing developers to mix deterministic workflow steps with LLM-driven decision points in the same system.

### Observability as Trust-Building

Chase describes a second role for observability and evals beyond developer debugging: **communicating agent performance to enterprise stakeholders**. LangSmith (LangChain's observability platform) serves two audiences:

1. **Developers** — seeing what's happening inside their agent
2. **External stakeholders** — review panels, CISOs, management — who need to understand agent behavior and risk

A specific example: a user showed LangSmith to a review panel during an approval meeting and finished under time — "which almost never happens" at these panels. The observability data reduced the perceived risk of deploying the agent.

## Key Entities Mentioned

- **LangChain** — the company Chase founded, building agent frameworks and tooling
- **LangGraph** — an agent framework that leans into the workflow-agent spectrum
- **LangSmith** — observability and evals platform for agents
- **Harvey** — legal AI agent cited as a successful enterprise example
- **Monday** — Asaf's employer; head of AI is Asaf, creator of GPT Researcher
- **Anthropic** — referenced for their blog post on workflows vs agents
- **Cursor** — cited as an example of the shift toward ambient, long-running agents

## Related

- [[concepts/enterprise-agent-adoption-equation]] — The adoption equation formalized
- [[concepts/workflow-agent-spectrum]] — The spectrum between deterministic workflows and autonomous agents
- [[concepts/observability-for-enterprise-trust]] — Observability as a trust-building mechanism for enterprise stakeholders
- [[concepts/agent-reliability-challenge]] — The broader challenge of making agents production-ready
- [[concepts/ambient-agents]] — The trend toward background, long-running agents
- [[concepts/deep-research-agents]] — Deep research as a high-value, long-running agent pattern
