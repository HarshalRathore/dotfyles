---
title: Ashpreet Bedi
category: entities
tags: [person, agent-engineering, agno, agent-evaluation, coding-agents]
sources:
  - "https://x.com/ashpreetbedi/status/2084301728363462919"
  - "https://x.com/ashpreetbedi/article/2084301728363462919"
summary: "Agent builder who documented recursive auto-improvement: coding agents mine sessions into probes, test live agents, inspect traces, and repair failures."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
relationships:
  - target: "[[concepts/recursive-auto-improvement]]"
    type: related_to
  - target: "[[entities/agno]]"
    type: related_to
---

# Ashpreet Bedi

Ashpreet Bedi documented a coding-agent-driven lifecycle for recursively improving production agents against mechanically checkable specifications. ^[extracted]

## Recursive Auto-Improvement

Bedi's workflow mines Postgres sessions into probes, exercises a live agent through an API, reads logs and tool calls, changes one rule/tool/parameter, and reruns failed cases. See [[concepts/recursive-auto-improvement]] and [[references/ashpreet-bedi-recursive-auto-improvement]]. ^[extracted]

## Related

- [[entities/agno]]
- [[concepts/agent-evaluations]]
- [[concepts/agent-observability]]
