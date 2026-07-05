---
title: "Out-of-Sample Debugging"
tags:
  - debugging
  - incident-response
  - autonomous-ai
  - first-principles
  - observability
aliases: [out-of-sample-debugging, out-of-sample-troubleshooting, autonomous-troubleshooting]
sources:
  - "[[sources/watchv=l6_nigiexzq]]"
summary: The ability to troubleshoot a production incident from first principles without having seen it before. Traversal.ai's goal: combine causal ML, reasoning models, and agent swarms to achieve autonomous troubleshooting for novel incidents.
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/production-troubleshooting]]"
    type: related_to
  - target: "[[concepts/causal-machine-learning]]"
    type: uses
  - target: "[[concepts/agent-swarm]]"
    type: uses
  - target: "[[concepts/runbook-dependency]]"
    type: contradicts
---

# Out-of-Sample Debugging

**Out-of-sample debugging** (or out-of-sample troubleshooting) is the ability to diagnose and resolve a production incident from first principles without having seen that specific incident before. It is the opposite of pattern-matching against historical incidents or following pre-written runbooks.

## The Challenge

Most production incidents are novel — new combinations of failures, new services failing, new root causes. Traditional approaches fail because:

- **Runbook-based systems** require pre-existing procedures for the incident type
- **Pattern-matching ML** can only handle incidents seen during training
- **Sequential agents** follow planned paths that may not apply to novel situations

## Traversal's Approach

[[entities/traversal-ai|Traversal.ai]] targets out-of-sample troubleshooting by combining three elements:

1. **Causal machine learning** — discovers cause-and-effect relationships from the current data, not from historical patterns
2. **Reasoning models** — extracts semantic context from the actual system state
3. **Agent swarms** — performs exhaustive search across all available telemetry, not just planned paths

This combination enables the system to debug incidents it has never encountered by reasoning from first principles about the current system state.

## Contrast with In-Sample Approaches

| Aspect | In-Sample | Out-of-Sample |
|--------|-----------|---------------|
| Training | Requires incident history | No prior examples needed |
| Runbooks | Depends on pre-written procedures | First-principles reasoning |
| Generalization | Limited to seen patterns | Handles novel incidents |
| Approach | Pattern matching | Causal discovery |

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
