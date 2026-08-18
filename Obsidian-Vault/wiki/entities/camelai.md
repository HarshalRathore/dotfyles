---
title: camelAI
category: entities
tags: [company, ai-agents, coding-agents, cloudflare, edge-compute]
aliases: [camelAI, useCamelAI]
sources:
  - "https://x.com/Vercantez/status/2082138839888589200"
  - "https://x.com/Vercantez/article/2082137754788646912"
  - "https://github.com/qaml-ai/camelAI"
summary: "Open-source coding-agent platform that moved its harness from VMs to Cloudflare Durable Objects, SQLite/R2 storage, Code Mode, and selective Linux containers."
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.50
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
relationships:
  - target: "[[concepts/edge-native-agent-harness]]"
    type: implements
  - target: "[[entities/cloudflare]]"
    type: uses
  - target: "[[entities/pi]]"
    type: uses
---

# camelAI

camelAI is an open-source coding-agent platform whose harness runs inside Cloudflare Durable Objects rather than per-user virtual machines. Its workspace uses SQLite and R2, git history uses Cloudflare Artifacts, and execution uses Code Mode JavaScript plus explicit methods and short-lived Linux containers. ^[extracted]

## Architecture

See [[references/camelai-durable-object-agent]] for the migration account and [[concepts/edge-native-agent-harness]] for the generalized pattern. ^[extracted]

## Related

- [[entities/miguel-salinas]]
- [[entities/cloudflare]]
- [[entities/pi]]
- [[concepts/durable-objects]]
- [[concepts/edge-native-agent-harness]]
