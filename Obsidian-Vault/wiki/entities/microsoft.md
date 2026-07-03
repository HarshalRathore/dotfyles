---
title: "Microsoft"
tags:
  - entity
  - company
  - ai-platform
  - cloud
  - enterprise
sources:
  - "AI Engineer World's Fair 2025 - Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft - https://www.youtube.com/watch?v=7Hrw6rtXaHc"
  - "AIEF2025 - The Unofficial Guide to Apple's Private Cloud Compute - Jmo, CONFSEC - https://www.youtube.com/watch?v=CCsWZ5bJlO8"
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
- **Azure AI private inference** — Confidential AI inference offering (in private preview since September 2024) that follows the same [[concepts/private-ai-inference|private AI inference]] architecture pioneered by Apple's [[concepts/private-cloud-compute|Private Cloud Compute]]. ^[extracted]

## Platform Philosophy

- **Open protocols** — Supporting [[concepts/model-context-protocol|MCP]] and A2A standards so agents work across any tool ecosystem. ^[extracted]
- **[[concepts/model-ensemble-routing|Model switchboard]]** — No single model is right for every product; intelligent routing across 10,000+ open and proprietary models. ^[extracted]
- **[[concepts/local-first-ai-platform|Cloud-to-edge]]** — Local is not a fork but a core platform capability; agents created in the cloud must run and reason locally. ^[extracted]
- **Built-in accountability** — Evaluation SDK, red teaming agents, OpenTelemetry-based observability. ^[extracted]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
