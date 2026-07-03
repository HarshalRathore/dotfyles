---
title: "Arcjet"
tags:
  - company
  - security
  - bot-detection
  - aief2025
  - sdk
aliases: [Artjet]
sources:
  - "AIEF2025 - How to defend your sites from AI bots — David Mytton, Arcjet - https://www.youtube.com/watch?v=Gi4V8viBGYQ"
summary: "Security SDK for developers providing bot detection, rate limiting, and automated client defense. Founded by David Mytton."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Arcjet

Arcjet is a security SDK for developers providing [[concepts/ai-bot-defense|bot detection and defense]] capabilities. Founded by [[entities/david-mytton|David Mytton]], the company builds developer-first security tooling focused on protecting web applications from automated clients and AI crawlers. ^[extracted]

## Key Offerings

- **User-agent database** — Open source project with several thousand user-agent strings for identifying crawlers. ^[extracted]
- **Bot detection SDK** — Multi-layered detection combining user-agent verification, IP reputation, TLS fingerprinting ([[concepts/ai-bot-defense#JA4 Fingerprinting|JA4 hash]]), and rate limiting. ^[inferred]
- **Verification tooling** — Reverse DNS-based verification for known crawlers (Google, Bing, OpenAI, Apple). ^[inferred]

## Philosophy

Arcjet advocates a layered defense strategy where no single signal is trusted — user-agent strings, IP reputation, TLS fingerprints, and rate limits are combined. The company makes its bot-signal data available open source so developers can build their own rules. ^[extracted]

## Related

- [[entities/david-mytton]] — Founder of Arcjet
- [[concepts/ai-bot-defense]] — The layered defense framework Arcjet implements
- [[concepts/ai-crawler-landscape]] — The crawler taxonomy Arcjet detects
- [[references/aief2025-defend-sites-ai-bots-david-mytton-arcjet]] — The AIEF2025 talk

## Sources

- AIEF2025 — How to defend your sites from AI bots, David Mytton, Arcjet. https://www.youtube.com/watch?v=Gi4V8viBGYQ
