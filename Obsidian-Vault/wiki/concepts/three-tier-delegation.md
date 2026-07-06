---
title: Three-Tier Delegation
category: concepts
tags: [delegation, human-agent-collaboration, decision-making, code-vs-agent-vs-human]
aliases: [three tier delegation, delegation hierarchy, code-agent-human]
relationships:
  - target: '[[concepts/agency-ladder]]'
    type: related_to
  - target: '[[concepts/structured-output]]'
    type: related_to
  - target: '[[concepts/discernment]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A delegation hierarchy: exact answers → code, interpretation/judgment → agents, authority → humans. Each tier matches the right tool to the right kind of decision.
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Three-Tier Delegation

The **three-tier delegation model** matches the right tool to the right kind of decision: ^[extracted]

| Tier | Task Type | Tool |
|------|-----------|------|
| 1. Exact answer | Deterministic, has a right answer | **Code** |
| 2. Interpretation | Needs judgment, no single right answer | **Agent** |
| 3. Authority | Requires final decision, accountability | **Human** |

This was presented at the AI Engineer World's Fair 2026. ^[extracted]

## Rule of Thumb

> If a task has an exact answer, reach for code. If it needs interpretation or judgment, use the agent. Use humans for authority. ^[extracted]

### Examples

- **Code**: filtering listings, crunching commute data, calculating scores
- **Agent**: deciding which listings are worth a closer look (interpretation)
- **Human**: approving actually booking a tour of a house (authority)

### The "Relocation Scout" Example

The speaker used a house-hunting agent called **Relocation Scout** as a concrete illustration. The agent's job was to pull listings, weigh them against user criteria, and return a ranked short list. The delegation worked as follows: ^[extracted]

1. **Code** crunches the commute time, deduplicates listings already seen, and filters by hard constraints — deterministic tasks with exact answers
2. **Agent** decides which listings are worth a closer look, researches neighborhoods, and synthesizes messy information — tasks requiring interpretation and judgment
3. **Human** approves booking a tour — the final authority requiring accountability

## Algorithmic Thinking

A core principle is that "just because an agent can do something doesn't mean that it should." Some tasks are better handled by plain code — cheaper, more reliable, deterministic. "AI did not invent automation. We can use code while still using these systems." ^[extracted]

The heuristic: use **code for determinism**, **agents for judgment**, and **humans for authority**. Ignoring this distinction is where agentic systems get overly complicated — handing every task to the model, then getting frustrated when output differs every day, when regular code would be more reliable. ^[extracted]

## Decomposition and Modularity

The speaker warned against "giant prompts" — the agentic equivalent of a bloated class. When a single prompt tries to handle listing normalization, commute calculation, neighborhood research, and short-list formatting, the agent drifts and doesn't stick to the script. Decomposition means spotting distinct jobs and pulling them apart: ^[extracted]

- **Listing normalization** → a reusable skill
- **Commute calculation** → a deterministic script
- **Neighborhood research** → a dedicated sub-agent
- **Short-list output** → a structured schema

"Modularity is important in agentic systems as well, just like we have reusable functions and classes and libraries." ^[extracted]

## Structured Output Contracts

Freeform text is fine when the human is the only one reading it. But when another system has to act on the agent's output, **structured output contracts** are a hard requirement. This is the same principle that governs any system-to-system communication: there must be an agreed-upon shape between the two sides. ^[extracted]

When Relocation Scout scores a house, it writes the decision into agent memory as a structured record — decision, score, reason — not as free-text buried in a session. This makes the output queryable: "show me every house rated four or better with a commute of 15 minutes or less." Downstream steps read these same fields without a human in the loop. "The contract is what makes that handoff safe." ^[extracted]


## Connection to Agency Ladder

The three-tier delegation maps to the **agency ladder**: ^[inferred]

- Code handles the lower rungs (execute, flag problems)
- Agents handle the middle rungs (diagnose, propose, recommend)
- Humans handle the top rungs (resolve, discern)

## Related

- [[concepts/agency-ladder|Agency Ladder]] — the hierarchy of agency levels
- [[concepts/structured-output|Structured Output]] — contracts for machine-actionable output
- [[concepts/discernment|Discernment]] — the human-only top tier
- [[concepts/iteration-friction|Iteration Friction]] — why delegation matters for workflow efficiency

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
