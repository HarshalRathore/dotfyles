---
title: "Legacy as Agent Tools"
category: concepts
tags: [agent-architecture, legacy-systems, enterprise-ai, decomposition, aief2025]
summary: The pattern of decomposing legacy enterprise applications into tools that AI agents can use — reframing 100+ years of domain logic from baggage into unique competitive assets.
sources:
  - "AIEF2025 - From Copilot to Colleague: Trustworthy Agents for High-Stakes - Joel Hron, CTO Thomson Reuters - https://www.youtube.com/watch?v=kDEvo2__Ijg"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-tool-calling]]"
    type: extends
  - target: "[[concepts/enterprise-ai-adoption]]"
    type: relates_to
  - target: "[[concepts/assistive-vs-automation-agents]]"
    type: enables
---

# Legacy as Agent Tools

**Legacy as agent tools** is the architectural pattern of decomposing legacy enterprise applications into discrete tools that AI agents can invoke — reframing decades of domain logic from technical debt into unique competitive assets. ^[extracted]

## The Insight

Most companies approaching AI see their legacy applications as handicaps — old codebases to be replaced. Thomson Reuters, under Joel Hron, discovered that 100+ years of highly tuned domain logic in their legacy systems are actually enabling:

- Users already expect this domain logic in their workflows
- The logic has been refined over decades by thousands of domain experts
- Decomposing it as agent tools preserves the expertise while making it composable

## How It Works

Legacy applications are decomposed into components that agents can use as tools. Each component encapsulates a specific domain capability — legal research, tax calculation, compliance checking — and agents compose these tools to execute complex workflows. ^[extracted]

This means the agents don't need to "learn" the domain from scratch. They leverage pre-built, expert-validated capabilities that have been battle-tested over decades. ^[inferred]

## Why It Matters

This pattern is particularly valuable for companies with deep domain expertise and long histories:

1. **Competitive moat** — Competitors without legacy systems cannot replicate the domain logic
2. **User trust** — Users already trust the legacy system's outputs; agents inheriting those outputs inherit trust
3. **Faster time-to-value** — No need to rebuild domain knowledge from scratch
4. **Incremental modernization** — Legacy systems get a second life without full rewrites

## Related

- [[concepts/agent-tool-calling]] — The mechanism by which agents invoke legacy tools
- [[concepts/enterprise-ai-adoption]] — Why this matters for enterprise AI specifically
- [[concepts/assistive-vs-automation-agents]] — Automation agents benefit most from decomposed tools
