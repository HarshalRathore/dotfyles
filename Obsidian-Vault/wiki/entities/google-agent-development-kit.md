---
title: Google Agent Development Kit
category: entities
tags:
  - google
  - ai-agents
  - agent-framework
  - mcp
  - a2a
aliases:
  - Google ADK
  - ADK
sources:
  - "https://x.com/i/status/2083602508807569560"
summary: "Google's Agent Development Kit as demonstrated in a hands-on lab for composing MCP-backed workflow agents, exposing them through A2A, and applying runner callbacks, plugins, and state."
provenance:
  extracted: 0.86
  inferred: 0.10
  ambiguous: 0.04
base_confidence: 0.52
lifecycle: draft
lifecycle_changed: "2026-08-02"
tier: supporting
created: "2026-08-02T09:39:51Z"
updated: "2026-08-02T09:39:51Z"
relationships:
  - target: "[[entities/google|Google]]"
    type: related_to
  - target: "[[concepts/agent-workflows|Agent Workflows]]"
    type: implements
  - target: "[[concepts/model-context-protocol|Model Context Protocol]]"
    type: uses
  - target: "[[concepts/agent-to-agent-communication|Agent-to-Agent Communication]]"
    type: uses
  - target: "[[references/google-hands-on-ai-multi-agent-lab|Google Hands-on AI Multi-Agent Lab]]"
    type: derived_from
---

# Google Agent Development Kit

Google's **Agent Development Kit (ADK)** is the agent framework demonstrated in the captured Hands-on AI lab linked from [[misc/web-x-com-i-status-2083602508807569560|Codila's graph-engineering post]]. This page records only the capabilities exercised or described in that source; it is not a complete product reference. ^[extracted]

## Demonstrated Capabilities

- **MCP integration:** an MCP tool set connects agents to remote MCP servers, including a database toolbox and custom API/function servers.
- **Workflow agents:** sequential, parallel, and loop agents encode predictable orchestration patterns.
- **ADK Run and ADK Web:** a terminal interface and a browser development UI are used to exercise agents locally.
- **A2A integration:** familiar agents are wrapped as A2A services and consumed by a remote A2A orchestrator through agent cards.
- **Runner policy:** callbacks and plugins intercept lifecycle points; the lab turns a per-agent cooldown callback into a shared runner plugin.
- **State access:** tool context lets an after-tool callback save concrete values such as the last summoned familiar. ^[extracted]

## Layered Role

The lab positions ADK in the workflow layer rather than as the tool protocol itself:

- **MCP** exposes external tools and data.
- **ADK** composes reasoning and workflow agents around those tools.
- **A2A** exposes separately deployed agents and their agent cards.
- **Cloud Run / Cloud Build** host and deploy the lab services. ^[extracted]

This separation lets an orchestrator select a specialist agent without embedding that specialist's implementation in the root process. ^[inferred]

## Related

- [[references/google-hands-on-ai-multi-agent-lab|Google Hands-on AI Multi-Agent Lab]] — captured implementation walkthrough
- [[entities/google|Google]] — parent organization
- [[concepts/agent-workflows|Agent Workflows]] — sequential, parallel, and loop composition
- [[concepts/agent-to-agent-communication|Agent-to-Agent Communication]] — A2A boundary
- [[concepts/model-context-protocol|Model Context Protocol]] — tool boundary
