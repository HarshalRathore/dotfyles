---
title: "Microsoft"
tags:
  - entity
  - company
  - ai-platform
  - cloud
  - enterprise
sources:
  - "[[sources/watchv=7hrw6rtxahc]]"
  - "[[sources/watchv=ccswz5bjlo8]]"
  - "[[sources/watchv=phbghukam-w]]"
  - "[[sources/watchv=r30col3upug]]"
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Microsoft

Microsoft's Core AI Platform, led by [[entities/asha-sharma|Asha Sharma]], develops the infrastructure and tools for building agentic AI applications at enterprise scale. ^[extracted]

## Key Products & Platforms

- **Azure AI Foundry** ([[entities/azure-ai-foundry]]) — Agent platform with SDK, model catalog (10,000+ models), intelligent routing, evaluation SDK, and continuous observability. Hosts 70,000+ customers; 50,000+ agents built daily. ^[extracted]
- **[[entities/github-copilot|GitHub Copilot]]** — Evolution from autocomplete sidekick to agentic teammate assigned tasks via GitHub Issues, operating in its own branch. ^[extracted]
- **Fosse** — Codebase reasoning tool ("GraphRack for your code base") for autonomous codebase improvement. ^[extracted]
- **Dragon** — Healthcare copilot for automated medical scribing, achieving 83% character acceptance rate through signal-loop fine-tuning on 650K interactions. ^[extracted]
- **GigaPath** — Open pathology model using dilated attention for gigapixel slide understanding without downsampling. ^[extracted]
- **Security Co-Pilot** — AI-powered cybersecurity assistant. [[entities/michael-albada|Michael Albada]], Principal Applied Scientist, is a key contributor to Security Co-Pilot and the recently announced Security Co-Pilot Agents. ^[extracted]

## Platform Philosophy

- **Open protocols** — Supporting [[concepts/model-context-protocol|MCP]] and A2A standards so agents work across any tool ecosystem. ^[extracted]
- **[[concepts/model-ensemble-routing|Model switchboard]]** — No single model is right for every product; intelligent routing across 10,000+ open and proprietary models. ^[extracted]
- **[[concepts/local-first-ai-platform|Cloud-to-edge]]** — Local is not a fork but a core platform capability; agents created in the cloud must run and reason locally. ^[extracted]
- **Built-in accountability** — Evaluation SDK, red teaming agents, OpenTelemetry-based observability. ^[extracted]

## MCP Auth Leadership

Microsoft leads the MCP Steering Committee's work on authorization, developing the new draft MCP auth spec with [[entities/anthropic|Anthropic]] and security experts. The spec separates the MCP server as a resource server from a dedicated authorization server, enabling plug-and-play identity providers like [[entities/entra-id|Entra ID]], [[entities/okta|Okta]], [[entities/auth0|Auth0]], and [[entities/keycloak|Keycloak]]. ^[inferred]

[[entities/den-delimarsky|Den Delimarsky]] (Product Engineer, MCP squad) demonstrated a C# ASP.NET Core implementation in the official MCP C# SDK. ^[extracted]


## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
- AIEF2025 - Building Protected MCP Servers — Den Delimarsky and Julia Kasper, MCP Steering Committee & Microsoft - https://www.youtube.com/watch?v=PHBGhUKAM-w
- AI Engineer World's Fair 2025 — Building Applications with AI Agents, Michael Albada, Microsoft. https://www.youtube.com/watch?v=R30col3UPUg
