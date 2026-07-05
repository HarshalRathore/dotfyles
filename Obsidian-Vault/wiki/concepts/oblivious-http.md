---
title: "Oblivious HTTP"
tags:
  - concept
  - privacy
  - networking
  - protocol
  - anonymization
aliases:
  - OHTTP
  - Oblivious HTTP
sources:
  - "[[sources/watchv=ccswz5bjlo8]]"
summary: "Protocol that anonymizes HTTP requests by routing them through a third-party relay, so the destination server sees only the relay's IP, not the original client's — developed by Cloudflare and Apple."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Oblivious HTTP

Oblivious HTTP (OHTTP) is a protocol developed by [[entities/cloudflare|Cloudflare]] and [[entities/apple|Apple]] (along with other contributors) that enables clients to make anonymous HTTP requests by routing them through a trusted third-party relay. ^[extracted]

## How It Works

The client sends its request to a relay (in Apple's PCC implementation, all requests go through Cloudflare). The relay forwards the request to the destination server, which sees the request came from the relay — not from the individual user's IP address. This breaks the link between the user's identity and their request at the network layer. ^[extracted]

## In Apple's PCC

OHTTP is the first component of [[concepts/non-targetability|non-targetability]] in [[concepts/private-cloud-compute|Apple's PCC]]. By laundering all iPhone requests through Cloudflare, Apple's infrastructure cannot tie a specific request to a specific user's IP. Even if an attacker gains internal access, they can't identify which user sent which request. ^[extracted]

## Relationship to Tor

Jmo describes OHTTP as conceptually similar to Tor — it "launders" user data so that someone accessing the system internally cannot identify the source. ^[extracted] Unlike Tor, OHTTP is a simpler, application-layer protocol optimized for the specific use case of anonymous API requests rather than general-purpose anonymous browsing.

## Available Implementations

Oblivious HTTP is a formal IETF spec (RFC 9230, RFC 9458). Libraries are available for implementing OHTTP in custom applications. ^[extracted]

## Related

- [[concepts/private-cloud-compute|Private Cloud Compute]]
- [[concepts/non-targetability|Non-Targetability]]
- [[concepts/blind-signatures|Blind Signatures]]
- [[concepts/encryption|Encryption]]

## Sources

- <https://www.youtube.com/watch?v=CCsWZ5bJlO8>
