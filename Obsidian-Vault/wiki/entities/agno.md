---
title: Agno
category: entities
tags: [framework, ai-agents, agent-platform, python, agent-evaluation]
aliases: [Agno AI]
sources:
  - "https://x.com/ashpreetbedi/status/2084301728363462919"
  - "https://x.com/ashpreetbedi/article/2084301728363462919"
  - "https://os.agno.com"
summary: "Agent platform used in Ashpreet Bedi's recursive auto-improvement example, including AgentOS, live APIs, session storage, and configurable agent tools."
provenance:
  extracted: 0.82
  inferred: 0.13
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
relationships:
  - target: "[[concepts/recursive-auto-improvement]]"
    type: related_to
  - target: "[[concepts/agent-evaluations]]"
    type: uses
---

# Agno

Agno is the agent platform used in Ashpreet Bedi's walkthrough of recursive auto-improvement. The example uses AgentOS, a live API, Postgres-backed sessions, configurable tools, and logs that a coding agent can inspect while improving a target agent. ^[extracted]

## Radar Example

Bedi uses an agent called Radar whose specification includes a five-item limit, one-line items, source links, restrained language, and a ledger to avoid repeated brief items. These mechanical rules make it suitable for probe mining and automated judging. ^[extracted]

## Related

- [[entities/ashpreet-bedi]]
- [[concepts/recursive-auto-improvement]]
- [[concepts/agent-evaluations]]
- [[references/ashpreet-bedi-recursive-auto-improvement]]
