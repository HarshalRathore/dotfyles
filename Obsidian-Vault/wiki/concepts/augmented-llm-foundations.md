---
title: Augmented LLM Foundations
category: concepts
tags:
- augmented-llm
- llm-fundamentals
- agentic-systems
- tool-use
- memory
- definitions
aliases:
- augmented language models
- LLM augmentation
- what is an augmented LLM
sources:
- AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/agent-architecture|Agent Architecture]]'
  type: foundational_to
- target: '[[concepts/agent-workflows|Agent Workflows]]'
  type: foundational_to
- target: '[[concepts/agent-autonomy|Agent Autonomy]]'
  type: foundational_to
summary: Augmented LLM Foundations
---

# Augmented LLM Foundations

Foundational definitions for understanding how LLMs are enhanced into agentic systems. These terms form the vocabulary for discussing AI application architecture.

## Key Definitions

### LLMs Are Limited by Training Data

LLMs are limited by their knowledge at the time of training. Their knowledge is frozen at the cutoff date and cannot be updated without retraining. This is the fundamental problem that augmentation solves. ^[extracted]

### Augmented LLM

An **augmented LLM** is an LLM enhanced with two capabilities:
1. **Tools** — Extending functionality beyond text generation (APIs, calculators, databases, etc.)
2. **Memory** — Persistent state across interactions

The combination of LLM + tool + memory = augmented LLM. ^[extracted]

### Workflow

When an augmented LLM is placed on a **static and predefined path**, it becomes a **workflow**. The path is fixed, known in advance, and does not change between runs. ^[extracted]

### Agent

When augmented LLMs have **high autonomy and a feedback loop**, they become **agents**. Unlike workflows, agents can adapt their behavior based on context and outcomes. ^[extracted]

## The Progression

```
LLM (limited by training)
  ↓ + tools + memory
Augmented LLM
  ↓ + static predefined path
Workflow (controllable, reliable)
  ↓ + high autonomy + feedback loop
Agent (flexible, autonomous)
```

## Characteristics Comparison

| Property | Workflow | Agent |
|----------|----------|-------|
| Control | Workflow is in control | Agent is in control |
| Path | Static, predefined | Dynamic, planned |
| Reliability | High | Variable |
| Flexibility | Low | High |
| Predictability | High | Lower | ^[extracted]

## Agentic Workflows: Best of Both Worlds

**Agentic workflows** combine the planning and execution of workflows with the flexibility of agents. They plan and execute workflows based on goal, context, and feedback — getting the best of both worlds: controllability from workflows and adaptability from agents. ^[extracted]

## Related

- [[concepts/agent-architecture|Agent Architecture]] — Four-component framework
- [[concepts/agent-workflows|Agent Workflows]] — Workflow orchestration
- [[concepts/agent-autonomy|Agent Autonomy]] — The autonomy dimension
- [[concepts/agentic-workflow-vs-workflow-agent|Agentic Workflow vs Workflow Agent]] — The key distinction
