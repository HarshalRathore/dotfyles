---
title: "Agent Identity and Payments"
category: concepts
tags:
  - ai-agents
  - identity
  - payments
  - mcp
  - agent-autonomy
  - machine-to-machine
aliases: [agent identity, agent payments, machine payments, agent wallet]
sources:
  - "AIEF2025 - The rise of the agentic economy on the shoulders of MCP — Jan Curn, Apify - https://www.youtube.com/watch?v=blW-lSd5CYQ"
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/the-agentic-economy]]"
    type: enables
  - target: "[[concepts/agent-architecture]]"
    type: extends
  - target: "[[entities/coinbase]]"
    type: related_to
  - target: "[[entities/stripe]]"
    type: related_to
---

# Agent Identity and Payments

**Agent identity and payments** refers to the infrastructure needed for AI agents to autonomously establish identity, verify authenticity, and conduct financial transactions — enabling them to function as independent economic participants rather than tools controlled by humans. ^[extracted]

## The Problem

Without agent identity and payment infrastructure, agents cannot independently discover and purchase services. They remain dependent on human developers who provision API tokens and configure tool access. This is the critical gap preventing the emergence of a true agentic economy. ^[extracted]

## Two Approaches

### Agent Self-Subscription
The naive approach: agents create their own accounts, solve captchas, provide phone numbers, and subscribe to services. This fails because:
- Many services require real-person verification
- Phone numbers and legal agreements are impractical for agents
- CAPTCHA solving is unreliable and increasingly blocked ^[extracted]

### Central Identity and Payments Provider
A centralized authority providing agent identity and payment rails. Candidates include:
- **Coinbase X402** — a standard for machine-to-machine payments on blockchain
- **Stripe** — building agent payment infrastructure
- **Vertifier** — agent identity verification platform
- **MasterCard / Visa** — exploring agent payment rails ^[extracted]

## The Chicken-and-Egg Problem

Launching a payment system faces the classic marketplace problem: you need both merchants and buyers to create value, but neither will join without the other. PayPal spent approximately $100 million per month just to acquire market share. Launching credit cards in the 1970s was similarly difficult. ^[extracted]

## Requirements

For agents to transact autonomously, the identity/payment layer must provide:
1. **Unique agent identity** — verifiable, non-repudiable identity for each agent
2. **Payment rails** — ability to receive and send funds
3. **Verification** — proof that an agent is a real agent, not a human pretending
4. **Compliance** — KYC/AML considerations for regulated financial services ^[inferred]

## Relationship to MCP

MCP provides the tool discovery layer for agents to find services. Agent identity and payments provide the transaction layer for agents to purchase those services. Together, they form the two pillars of agent autonomy. ^[inferred]

## Related Pages

- [[concepts/the-agentic-economy]] — The agentic economy concept
- [[concepts/mcp-dynamic-tool-discovery]] — MCP's tool discovery feature
- [[concepts/emergent-intelligence]] — Intelligence as emergent behavior
- [[entities/coinbase]] — Coinbase X402 standard
- [[entities/stripe]] — Stripe agent payment infrastructure
