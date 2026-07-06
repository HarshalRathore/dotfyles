---
title: Agency Ladder
category: concepts
tags: [agency, autonomy, human-agent-collaboration, delegation, decision-making]
aliases: [agency ladder, levels of agency, autonomy ladder]
relationships:
  - target: '[[concepts/discernment]]'
    type: related_to
  - target: '[[concepts/three-tier-delegation]]'
    type: related_to
  - target: '[[concepts/agent-autonomy-spectrum]]'
    type: extends
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A seven-level hierarchy of agency from flagging a problem to leaving it, up through execution, diagnosis, proposal, recommendation, resolution, and the rarest level — discernment.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Agency Ladder

The **agency ladder** is a seven-level hierarchy describing the increasing scope of ownership and decision-making authority in human-AI collaboration. It frames agency not as a binary on/off but as a spectrum of responsibility. ^[extracted]

Presented by an unnamed speaker at the AI Engineer World's Fair 2026. ^[extracted]

## The Seven Levels

| Level | Description |
|-------|-------------|
| 1. **Flag a problem** | Identify an issue and leave it for the system to handle |
| 2. **Execute** | Carry out a prescribed action |
| 3. **Diagnose** | Investigate the root cause of a problem |
| 4. **Propose** | Suggest solutions or approaches |
| 5. **Recommend** | Advise on which solution to pursue |
| 6. **Resolve** | Take ownership of solving the problem end-to-end |
| 7. **Discernment** | Decide whether a problem is worth investing in at all |

## Discernment: The Rarest Level

**Discernment** sits at the top of the ladder and is described as "the rarest form of agency." ^[extracted] It is the meta-skill of evaluating whether a problem deserves ownership and attention — and having the judgment to walk away when it doesn't. When agents make more paths possible, agency is not about chasing every path; it is about deciding which paths deserve your ownership. ^[extracted]

## Operating Model Implications

The agency ladder maps to an operating model where: ^[inferred]

- **Agents** handle the inner execution loop: investigate, implement, test, and report
- **Humans** handle the outer loop: discernment, authority, and final resolution

This creates a **three-tier delegation model**: ^[extracted]

1. **Exact answers** → reach for code (deterministic tasks)
2. **Interpretation** → use agents (judgment tasks)
3. **Authority** → use humans (decisive tasks)

## Related

- [[concepts/discernment|Discernment]] — the top of the agency ladder; deciding what is worth investing in
- [[concepts/three-tier-delegation|Three-Tier Delegation]] — code for exact answers, agents for interpretation, humans for authority
- [[concepts/agent-autonomy-spectrum|Agent Autonomy Spectrum]] — related framework for agent autonomy levels
- [[concepts/agent-as-teammate|Agent as Teammate]] — the operating model where agents and humans collaborate across the ladder

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
