---
title: "Local-First AI Platform"
tags:
  - concept
  - architecture
  - edge
  - deployment
  - infrastructure
  - microsoft
aliases: [cloud-to-edge AI, local AI deployment, edge agent runtime, local-first agents]
sources:
  - "[[sources/watchv=7hrw6rtxahc]]"
  - "AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls"
summary: "Architectural principle that local execution must be a core platform capability, not a fork — agents created in the cloud should run and reason locally on devices for latency, privacy, and offline scenarios."
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.48
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
---

# Local-First AI Platform

The principle that AI platforms must treat local (edge, on-device) execution as a core capability, not a secondary fork or afterthought. Articulated by [[entities/asha-sharma|Asha Sharma]] of [[entities/microsoft|Microsoft]] at AI Engineer World's Fair 2025. ^[extracted]

## Why Local Matters

- **Latency** — Models on laptops have zero latency and full user control. ^[extracted]
- **Privacy & Compliance** — Healthcare data (longitudinal patient summaries) cannot leave local environments due to compliance and privacy requirements. ^[extracted]
- **Offline resilience** — Industrial environments like bottling plants process 100,000 sensors per second locally and detect risks without cloud dependency. ^[extracted]
- **Harsh environments** — Automotive models must work in tunnels and other connectivity-constrained settings. ^[extracted]
- **Cost efficiency** — At millions of devices with hundreds of millions of daily inference calls, local inference eliminates per-request cloud API costs. ^[extracted]

## Concrete Platform: Foundry Local

[[entities/foundry-local|Foundry Local]] is Microsoft's concrete implementation of the local-first principle. Announced at Microsoft Build 2025, it combines [[entities/onnx-runtime|ONNX Runtime]] acceleration, [[entities/azure-ai-foundry|Azure AI Foundry]] model downloads, and hardware-accelerated inference across CPU, GPU, and NPU. ^[extracted] It provides the CLI and SDK that make local execution a developer experience, not a hack. ^[inferred]

Foundry Local demonstrates the four drivers of local AI in practice: ^[extracted]
- **Offline/low-bandwidth** — Runs entirely locally with zero network dependency
- **Privacy & security** — Sensitive data (legal, medical, financial) never leaves the device
- **Cost efficiency** — At millions of devices with hundreds of millions of daily inference calls, local inference eliminates per-request cloud API costs
- **Real-time latency** — Zero network round-trip time for interactive applications

## Key Design Principle

> "Local cannot be a fork. It has to be a core part of the platform. You should be able to create an agent in the cloud and it should run and act and reason locally." ^[extracted]

This means:
- Single agent definition, dual deployment targets (cloud and edge) ^[inferred]
- Seamless handoff between cloud and local execution ^[inferred]
- Same evaluation and monitoring regardless of where the agent runs ^[inferred]

## Related

- [[concepts/agent-factory]]
- [[concepts/agentic-web]]
- [[concepts/cloud-for-agents]]
- [[entities/azure-ai-foundry]]
- [[entities/foundry-local]]
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma]]

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
