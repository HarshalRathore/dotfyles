---
title: "Natural Language Interface"
category: concepts
tags:
  - natural-language
  - interface
  - multi-agent
  - network-operations
  - itsm
  - chat
aliases:
  - NL Interface
sources:
  - "AIEF2025 - Multi Agent AI and Network Knowledge Graphs for Change — Ola Mabadeje, Cisco - https://www.youtube.com/watch?v=m0dxZ-NDKHo"
summary: "A natural language interaction layer that enables both human operators and other systems (like ITSM tools) to query and interact with AI agent systems, including inter-system agent-to-agent communication."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/multi-agent-workflows|Multi-Agent Workflows]]"
    type: used_by
  - target: "[[entities/service-now|ServiceNow]]"
    type: integrates_with
  - target: "[[concepts/agent-tool-calling|Agent Tool Calling]]"
    type: related_to
---

# Natural Language Interface

A **natural language interface** is an interaction layer that allows both human operators and other systems to query and interact with AI agent systems using natural language, rather than structured queries or APIs. In network operations, this enables network operations teams to interact with the knowledge graph and agent system conversationally. ^[extracted]

## Dual Interface Design

A key design insight from Cisco's OutShift implementation is that the natural language interface serves two types of consumers:

1. **Human operators** — network engineers and operations staff who interact via conversational queries
2. **Other systems** — AI agents running inside other platforms (e.g., ServiceNow ITSM) that communicate with Cisco's agents through natural language interfaces ^[extracted]

This means the interface is not just a chat UI for humans; it is a machine-consumable interface that enables inter-system agentic workflows. Agents on the ServiceNow side talk to agents on Cisco's side, using natural language as the coordination protocol. ^[extracted]

## Role in Change Management

In the network change management context, the natural language interface allows:

- Engineers to query the [[concepts/network-knowledge-graph|network knowledge graph]] in natural language ("what will be affected if I change this router's configuration?")
- ITSM agents to request impact assessments and testing results from Cisco's agents
- Cross-system coordination without requiring custom API integrations for every tool pair ^[extracted]

## Design Principles

1. **Accessibility** — not just network engineers, but any operations staff should be able to interact
2. **System-to-system** — the interface must support agent-to-agent communication, not just human-chat
3. **Context-aware** — queries should be understood in the context of the specific network and change being discussed ^[inferred]

## Related

- [[concepts/multi-agent-workflows|Multi-Agent Workflows]] — the agentic architecture the interface serves
- [[entities/service-now|ServiceNow]] — an example of a system whose agents communicate via the interface
- [[concepts/network-knowledge-graph|Network Knowledge Graph]] — the data layer the interface queries
- [[concepts/agent-tool-calling|Agent Tool Calling]] — the mechanism by which agents execute actions
