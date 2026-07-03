---
title: "How to defend your sites from AI bots — David Mytton, Arcjet (AIEF2025)"
tags:
  - reference
  - talk
  - aief2025
  - security
  - bots
  - crawlers
  - rate-limiting
sources:
  - "AIEF2025 - How to defend your sites from AI bots — David Mytton, Arcjet - https://www.youtube.com/watch?v=Gi4V8viBGYQ"
summary: "David Mytton (Arcjet) walks through eight layers of defense against AI crawlers and automated clients — from robots.txt and user-agent verification through JA4 fingerprinting and cryptographic signatures."
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# How to defend your sites from AI bots — David Mytton, Arcjet

> **Source:** AI Engineer World's Fair 2025 | [[entities/david-mytton|David Mytton]], Founder of [[entities/arcjet|Arcjet]]
> **Video:** <https://www.youtube.com/watch?v=Gi4V8viBGYQ>

## Summary

David Mytton, founder of [[entities/arcjet|Arcjet]], presents a practical walkthrough of defending web applications against AI-driven bots and crawlers. The talk diagnoses the scale of the problem (nearly 50% of web traffic is automated), maps the [[concepts/ai-crawler-landscape|evolving taxonomy of AI crawlers]], and details eight progressive layers of [[concepts/ai-bot-defense|bot defense]] that site owners can implement themselves. Mytton argues that AI is making the bot problem worse — not just in volume but in sophistication — as crawlers transition from simple HTTP clients to full computer-use agents that are indistinguishable from human browser sessions.

## Key Claims

### Scale of the Problem

- Nearly 50% of all web traffic today is automated clients; in gaming, nearly 60%. This is before the agent revolution has fully arrived. ^[extracted]
- AI crawlers are measurably increasing bandwidth costs: ReadTheDocs went from 800 GB/day to 200 GB/day by blocking AI crawlers. ^[extracted]
- Diaspora saw 24% of traffic from GPTBot (OpenAI's training crawler) alone. ^[extracted]
- Wikipedia spends up to 35% of traffic serving automated clients, attributing the increase to AI crawlers. ^[extracted]
- 12% of bot traffic on Cloudflare's network in 2024 came from AWS data center IPs. ^[extracted]

### The AI Crawler Taxonomy

Mytton identifies at least four OpenAI bot types:

1. **OpenAI Search Bot** — Search index crawler, provides citations, drives traffic. Site owners generally want this (analogous to Googlebot). ^[extracted]
2. **ChatGPT User** — Real-time query mediation when a user drops a URL into ChatGPT. Not used for training. Ambiguous whether to allow. ^[extracted]
3. **GPTBot** — Original training crawler. Downloads content for model training. No citations, no traffic benefit. Largest bandwidth consumer. ^[extracted]
4. **Computer-Use Operator** — Autonomous agent running as a Chrome browser in a VM. Hardest to detect — appears as a legitimate browser. Whether to allow depends entirely on the use case. ^[extracted]

### The Eight Defenses

Mytton presents a progressive, layered defense strategy:

1. **robots.txt** — Voluntary standard. Good bots follow it. Bad bots may use it to find hidden content. Start here to think through access policy, but do not finish here. ^[extracted]
2. **User-Agent Verification** — HTTP header string. Many crawlers identify themselves honestly. Open source databases (including Arcjet's) provide known agent strings. But any client can spoof this. ^[extracted]
3. **Reverse DNS Verification** — For known crawlers (Google, Bing, OpenAI, Apple), verify claimed identity by checking source IP via reverse DNS. Simple and effective for the bots you want. ^[extracted]
4. **IP Reputation** — Build patterns per IP/range: data center vs residential vs mobile, VPN/proxy detection, country data. Use databases like MaxMind or IPinfo. Geodata is unreliable; residential proxies can mask data center traffic. ^[extracted]
5. **Proof-of-Work** — Require CPU calculation before serving a resource. Trivial per-request, expensive at scale. Open source: Anubis, GoAway, Nepenthes (Kubernetes proxies). Traditional CAPTCHAs are now trivially solvable by AI. ^[extracted]
6. **HTTP Message Signatures** — Cloudflare proposal for cryptographic request signing by automated clients. Still developing; adoption and efficacy uncertain. ^[extracted]
7. **JA4 Fingerprinting** — TLS-level fingerprinting that creates a stable hash of client characteristics independent of IP address. JA4 is open source; HTTP-level fingerprinting is proprietary. Crucial because crawlers rotate IPs but keep the same client. ^[extracted]
8. **Rate Limiting** — Must be keyed to fingerprint or session ID, not IP address. IP-based limits are useless against crawlers with millions of IPv6 addresses. ^[extracted]

### Additional Standards

- **Apple Private Access Tokens** — Verify a request comes from a Safari browser owned by an iCloud subscriber. Implemented across all Apple devices but limited third-party adoption. ^[extracted]

## Key Takeaways

1. The problem is real and growing: nearly 50% of traffic is automated, and AI crawlers are the fastest-growing segment. ^[extracted]
2. The good-bot/bad-bot binary is insufficient — AI crawlers span a spectrum from beneficial (search citations) to parasitic (training without attribution). ^[extracted]
3. User-agent verification plus reverse DNS gets most sites most of the way. ^[inferred]
4. IP-based rate limiting is fundamentally broken — fingerprint-based limits are required. ^[extracted]
5. Computer-use agents represent the next detection frontier: they look exactly like real Chrome browsers. ^[extracted]
6. Defense must be layered because no single signal is reliable — user-agent can be spoofed, IPs rotated, CAPTCHAs solved by AI. ^[inferred]

## Pages Created from This Source

- [[concepts/ai-bot-defense]] — The layered defense framework for AI bot protection
- [[concepts/ai-crawler-landscape]] — The taxonomy of AI-driven crawlers
- [[entities/arcjet]] — The security SDK company founded by David Mytton
- [[entities/david-mytton]] — The speaker and Arcjet founder

## Related Pages

- [[concepts/agent-traffic-inversion]] — The broader trend of agent-scale traffic
- [[concepts/agent-identity]] — Parallel identity challenge: distinguishing agents from humans
- [[concepts/agent-middleware-trust-boundary]] — Middleware pattern for agent security
- [[concepts/rate-limiting]] — Rate-limiting as a security primitive ^[inferred]
- [[references/aief2025-securing-agents-open-standards-bobby-tiernay-auth0]] — Related talk on agent security

## Sources

- Original video: <https://www.youtube.com/watch?v=Gi4V8viBGYQ>
- Blog post write-up: <https://blog.arcjet.com> (published same day as talk)
