---
title: "Agency-Effectiveness Axis"
tags:
  - ai-agents
  - mental-model
  - evaluation
  - design-principle
  - effectiveness
  - agency
category: concepts
sources:
  - "[[sources/watchv=r30col3upug]]"
summary: "A two-dimensional framework for evaluating AI systems: agency (degree of autonomous reasoning/action) and effectiveness (how well the system solves the actual problem). Adding agency must not compromise effectiveness."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-vs-workflow]]"
    type: extends
  - target: "[[concepts/automation-augmentation-agency]]"
    type: related_to
---

# Agency-Effectiveness Axis

The agency-effectiveness axis is a two-dimensional framework for evaluating and designing AI systems. It argues that **agency is a means to effectiveness, not an end in itself.** ^[extracted]

## The Two Axes

| | High Effectiveness | Low Effectiveness |
|---|---|---|
| **High Agency** | Ideal: autonomous systems that reliably solve real problems | Dangerous: "future news stories" — autonomous but ineffective |
| **Low Agency** | Valuable: [[concepts/robotic-process-automation|RPA]], deterministic automation | Useless: bad chatbots with neither agency nor effectiveness |

### Agency Axis

Degree of autonomous reasoning, action selection, and adaptation. Ranges from no agency (fixed scripts) through partial agency (LLM-branching workflows) to full agency (autonomous tool selection and iteration). This aligns with [[entities/andrew-ng|Andrew Ng]]'s framing that agency is a spectrum, not a binary distinction. ^[extracted]

### Effectiveness Axis

How well the system actually solves the user's problem. A system can have high agency but low effectiveness (a sophisticated agent that consistently fails at its task) or low agency but high effectiveness (a well-designed RPA pipeline that reliably processes invoices). ^[extracted]

## Core Principle

> Adding agency should never compromise effectiveness. Any incremental move toward autonomy must maintain or improve the system's ability to deliver value. ^[extracted]

This is a direct application of the [[concepts/bitter-design-lesson|bitter design lesson]]: don't add complexity (agency) if it degrades the thing that matters (effectiveness).

## Practical Implications

1. **Start low-agency, high-effectiveness.** If a chain or tree pattern works, use it. Don't reach for autonomous agents as a default.
2. **Measure effectiveness independently of agency.** A system's value is determined by how well it solves the problem, not by how autonomous it appears.
3. **The goal is high-high.** The design target is maximum agency that still maintains maximum effectiveness.
4. **Low-effectiveness systems fail regardless of agency.** Both "bad chatbots" (low agency, low effectiveness) and over-engineered autonomous systems (high agency, low effectiveness) deliver no value. ^[extracted]

## Relationship to Other Frameworks

- Extends the [[concepts/agent-vs-workflow|agent vs. workflow debate]] by adding effectiveness as a second dimension — the question isn't "is this an agent?" but "does it deliver value?"
- Complements [[concepts/automation-augmentation-agency|automation → augmentation → agency]] by providing evaluation axes for each stage.
- Relates to [[concepts/agent-vs-workflow]]'s input-output ratio model: both reject the agency-vs-workflow binary in favor of a more nuanced evaluation.

## Sources

- AI Engineer World's Fair 2025 — Building Applications with AI Agents, Michael Albada, Microsoft. https://www.youtube.com/watch?v=R30col3UPUg
