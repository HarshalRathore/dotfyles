---
title: AI Crawler Landscape
tags:
- bots
- crawlers
- ai
- web
- security
- agents
relationships:
- target: '[[concepts/ai-bot-defense]]'
  type: related_to
- target: '[[concepts/agent-traffic-inversion]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=gi4v8vibgyq'
summary: The evolving taxonomy of AI-driven crawlers visiting web applications — from search indexers to model trainers to autonomous agents — and the challenge of distinguishing beneficial from malicious t...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# AI Crawler Landscape

The taxonomy and behavior of AI-driven automated clients visiting web applications. As of 2025, nearly 50% of all web traffic is automated, and AI crawlers represent a growing share. The traditional "good bot / bad bot" binary no longer captures the complexity — AI crawlers span a spectrum from beneficial (search indexing with attribution) to malicious (unattributed content extraction). ^[extracted]

## OpenAI's Four Bot Types

David Mytton ([[entities/arcjet|Arcjet]]) identifies at least four distinct OpenAI crawlers at [[references/aief2025-defend-sites-ai-bots-david-mytton-arcjet|AIEF2025]]: ^[extracted]

### 1. OpenAI Search Bot

Functions like Googlebot — crawls and indexes sites so they appear in ChatGPT search results. Provides citations and drives traffic. The site owner benefits. Most sites want this. ^[extracted]

### 2. ChatGPT User

Appears when a user drops a URL into ChatGPT for real-time analysis (summarize content, understand documentation). Not used for training. May or may not cite. Ambiguous — it is a legitimate user query mediated by an LLM. ^[extracted]

### 3. GPTBot

The original training crawler. Downloads content for model training without providing citations or traffic benefit to the site owner. Responsible for the largest bandwidth consumption — 24% of Diaspora's traffic, major contributor to Wikipedia's 35% automated client overhead. ^[extracted]

### 4. Computer-Use Operator

Autonomous agents (like OpenAI's Operator) that act on behalf of a user. Runs as a Chrome browser inside a VM. The hardest to detect because it appears identical to a legitimate browser session. Whether to allow or block depends on the use case: an agent triaging your email inbox is legitimate; an agent buying 500 concert tickets for resale is not. ^[extracted]

## The Good-Bot / Bad-Bot Spectrum

The traditional distinction between "good bots" (Googlebot, search crawlers) and "bad bots" (scrapers) is complicated by AI crawlers: ^[extracted]

| Type | Benefit to Site Owner | Detection Difficulty |
|------|----------------------|---------------------|
| Search engine crawlers (Google, Bing) | High — search traffic and indexing | Easy — self-identify, verifiable |
| OpenAI Search Bot | Medium — citations, growing traffic source | Easy — self-identifies |
| ChatGPT User | Indirect — mediated user access | Medium — may not self-identify |
| GPTBot (training) | None — content used without attribution | Easy — self-identifies but ignores blocks |
| Computer-Use Agents | Depends on context | Hard — looks like Chrome browser |
| Malicious scrapers | Negative — bandwidth, DDoS, IP theft | Very hard — spoof identity, rotate IPs |

## Scale of the Problem

- **ReadTheDocs** reduced bandwidth from 800 GB/day to 200 GB/day by blocking all AI crawlers. ^[extracted]
- **Diaspora** saw 24% of traffic from GPTBot alone. ^[extracted]
- **Wikipedia** spends up to 35% of traffic serving automated clients, attributing the increase to AI crawlers. ^[extracted]
- 12% of all bot traffic on the Cloudflare network in 2024 came from the AWS network (data center IPs). ^[extracted]

## Detection Challenges

AI crawlers are harder to detect than traditional bots because: ^[inferred]

- They increasingly mimic real browser behavior (Chrome user-agent, real TLS stacks)
- Computer-use agents run full browser sessions, indistinguishable from humans at the HTTP level
- Bot operators route through residential proxies and VPNs to evade IP-based blocks
- IPv6 gives crawlers access to vast IP ranges, making IP-based rate limiting ineffective
- Some bots (GPTBot) honestly identify themselves but ignore robots.txt directives

## Related

- [[concepts/ai-bot-defense]] — The layered defense strategy for combating these crawlers
- [[concepts/agent-traffic-inversion]] — The broader trend of agent-initiated traffic exceeding human traffic
- [[entities/arcjet]] — Security SDK that tracks and detects AI crawlers
- [[entities/david-mytton]] — Speaker at AIEF2025 on this topic
- [[concepts/agent-middleware-trust-boundary]] — Middleware pattern for distinguishing agent from human traffic

## Sources

- AIEF2025 — How to defend your sites from AI bots, David Mytton, Arcjet. https://www.youtube.com/watch?v=Gi4V8viBGYQ
