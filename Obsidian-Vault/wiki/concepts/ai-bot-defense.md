---
title: "AI Bot Defense"
tags:
  - security
  - bots
  - crawlers
  - web-security
  - rate-limiting
  - fingerprinting
relationships:
  - target: "[[concepts/ai-crawler-landscape]]"
    type: related_to
  - target: "[[entities/arcjet]]"
    type: implements
sources:
  - "[[sources/watchv=gi4v8vibgyq]]"
summary: "Layered defense strategies for protecting web applications from AI-driven bots, crawlers, and automated clients. Eight layers from robots.txt to cryptographic fingerprinting."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# AI Bot Defense

The practice of protecting web applications from automated clients, AI crawlers, and malicious bots using a layered defense strategy. As of 2025, nearly 50% of all web traffic is automated, with AI crawlers driving significant growth in bandwidth and compute costs. ^[extracted]

## The Problem

AI crawlers create three categories of harm: ^[extracted]

- **Cost** — Expensive requests on serverless platforms, bandwidth for large file downloads. ReadTheDocs reduced bandwidth from 800 GB/day to 200 GB/day simply by blocking AI crawlers. ^[extracted]
- **Availability** — Automated traffic can function as a denial-of-service attack, consuming resources needed for legitimate users. ^[extracted]
- **Content extraction** — Unauthorized scraping of content for model training without attribution or benefit to the site owner. ^[extracted]

## The Eight Layers of Defense

David Mytton ([[entities/arcjet|Arcjet]]) outlines a progressive defense strategy at [[references/aief2025-defend-sites-ai-bots-david-mytton-arcjet|AIEF2025]]: ^[extracted]

### 1. robots.txt

A voluntary standard that describes site structure and instructs crawlers what to allow or disallow. Good bots (Googlebot, search crawlers, OpenAI search bot) follow it. Bad bots ignore it or use it to find restricted pages. Still the right starting point for thinking through access policy. ^[extracted]

### 2. User-Agent Verification

Every HTTP request includes a `User-Agent` header identifying the client. It is just a string — any client can set anything. However, surprisingly many crawlers identify themselves honestly. Open source databases (e.g., Arcjet's) contain thousands of known user-agent strings. ^[extracted]

### 3. Reverse DNS Verification

For known crawlers (Google, Bing, OpenAI, Apple), verify by checking the source IP against the claimed identity via reverse DNS lookup. Simple rules can allow verified good bots while blocking impostors. ^[extracted]

### 4. IP Reputation

Build patterns for normal traffic per IP address and range. Consider: data center vs residential vs mobile origin, VPN/proxy detection, country-level geodata. In 2024, 12% of all bot traffic on the Cloudflare network came from AWS. ^[extracted]

**Limitations:** Geodata is notoriously inaccurate (satellite, 5G, cell connectivity) and proxy services can route through residential IPs to evade detection. ^[extracted]

### 5. CAPTCHA / Proof-of-Work

Traditional CAPTCHAs are increasingly solvable by AI — putting them into an LLM or transcribing the audio takes seconds at trivial cost. ^[extracted]

Proof-of-work (originating from crypto) requires the client to perform CPU calculations before accessing a resource. Trivial per-request for a human (~1-2 seconds), but prohibitively expensive at scale for crawlers hitting millions of sites. Open source implementations: **Anubis**, **GoAway**, **Nepenthes** (Kubernetes proxy). ^[extracted]

**Limitation:** Incentives matter — if a scalper profits $200-300 per ticket, paying a few dollars for proof-of-work is still economical. Difficulty can be scaled based on suspicious signals, but this creates accessibility trade-offs. ^[extracted]

### 6. HTTP Message Signatures

Cloudflare proposal: automated clients include a cryptographic signature with every request that can be quickly verified. Still being developed; questions remain about whether it improves on IP verification. ^[extracted]

### 7. JA4 Fingerprinting

Client fingerprinting generates a hash from network-level characteristics (TLS configuration, SSL handshake parameters) to identify clients across IP changes. Open source: **JA4 hash** (TLS fingerprint). Proprietary: HTTP fingerprinting (header patterns, request characteristics). ^[extracted]

The key insight: malicious crawlers change IP addresses constantly (especially with IPv6) but client characteristics remain stable. Blocking by fingerprint catches clients regardless of IP. ^[extracted]

### 8. Rate Limiting

Rate limits must be keyed to fingerprints or session IDs, not IP addresses. IP-based rate limiting is ineffective because crawlers rotate IPs. Combine fingerprint detection with per-fingerprint quotas. ^[extracted]

## Additional Standards

- **Private Access Tokens (Apple)** — Verify a request comes from a Safari browser owned by a paying iCloud subscriber. Implemented across all Apple devices but limited adoption elsewhere. ^[extracted]

## Practical Progression

Mytton recommends starting simply: ^[extracted]
1. robots.txt + user-agent verification + reverse DNS gets most sites most of the way
2. Add IP reputation for sites with popular or high-value resources
3. Add fingerprinting + rate limiting for targeted defense against sophisticated crawlers
4. Deploy proof-of-work or cryptographic signatures only when simpler layers prove insufficient

## Related

- [[concepts/ai-crawler-landscape]] — The taxonomy of AI crawlers this defense targets
- [[entities/arcjet]] — Security SDK implementing these defenses
- [[entities/david-mytton]] — Speaker who articulated this framework
- [[concepts/agent-middleware-trust-boundary]] — Related middleware pattern for agent security
- [[concepts/agent-identity]] — The identity challenge that bot detection parallels for agents
- [[references/aief2025-defend-sites-ai-bots-david-mytton-arcjet]] — Source talk

## Sources

- AIEF2025 — How to defend your sites from AI bots, David Mytton, Arcjet. https://www.youtube.com/watch?v=Gi4V8viBGYQ
