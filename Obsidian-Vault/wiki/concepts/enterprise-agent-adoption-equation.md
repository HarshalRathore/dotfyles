---
title: Enterprise Agent Adoption Equation
category: concepts
tags:
- enterprise-ai
- agent-adoption
- agent-reliability
- risk-reward
- first-principles
- langchain
sources:
- AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg
summary: 'A first-principles equation for enterprise AI agent adoption: (probability of success × value when right) − cost when wrong > cost of running. The three terms define the design space for enterprise...'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/agent-reliability-challenge]]'
  type: related_to
- target: '[[concepts/workflow-agent-spectrum]]'
  type: related_to
- target: '[[concepts/assistive-vs-automation-agents]]'
  type: related_to
---

# Enterprise Agent Adoption Equation

The **enterprise agent adoption equation** is a first-principles framework for understanding what determines whether an AI agent will be adopted in an enterprise setting. Proposed by [[entities/harrison-chase|Harrison Chase]] at AI Engineer World's Fair 2025.

## The Equation

$$\text{Adoption} = (\text{P(success)} \times \text{Value|success}) - (\text{Cost|error})$$

For an agent to be worth deploying, this value must exceed the cost of running it.

## Three Levers

Each term in the equation maps to a design lever:

### 1. Value When Right

The greater the value of a correct agent output, the more likely adoption. High-value tasks include legal research (Harvey), finance research, and summarization — areas where organizations already pay significant money for human labor.

Value can also be increased by **shifting interaction patterns**: moving from quick Q&A responses to long-running agents that do more substantial work (deep research, ambient coding agents). ^[extracted]

### 2. Cost When Wrong

The higher the cost of errors, the less likely adoption. This is the risk side of the equation. Enterprise environments amplify this because organizations need predictability and control. ^[inferred]

### 3. Probability of Success

The reliability of the agent. This is where [[concepts/workflow-agent-spectrum|workflow design]] and [[concepts/observability-for-enterprise-trust|observability]] come in — deterministic workflows increase reliability, and observability reduces the *perceived* unreliability that blocks adoption. ^[inferred]

## Relation to Enterprise AI Adoption

This equation complements the broader [[concepts/enterprise-ai-adoption|enterprise AI adoption]] literature by providing a concrete, decomposable framework. Rather than vague "trust" or "reliability" concerns, it breaks them into measurable terms.

## Related

- [[concepts/agent-reliability-challenge]] — The reliability problem this equation addresses
- [[concepts/workflow-agent-spectrum]] — How workflow design affects P(success)
- [[concepts/assistive-vs-automation-agents]] — Different agent types score differently on this equation
- [[concepts/ciso-approval]] — The cost-when-wrong concern that drives CISO scrutiny
