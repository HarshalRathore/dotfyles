---
title: "Circle"
tags:
  - company
  - fintech
  - stablecoin
  - payments
  - blockchain
aliases:
  - Circle Internet Financial
  - Circle.com
sources:
  - "[[sources/watchv=axmdsqdoghm]]"
summary: "Fintech company founded in 2013 that issues USDC and EURC stablecoins. Backed by BlackRock and Fidelity. Has settled over $26 trillion in transactions across 20+ blockchain networks."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Circle

Circle is a fintech company that issues stablecoins. Founded in 2013, it is backed by [[entities/blackrock|BlackRock]] and Fidelity. Since inception, Circle has settled over $26 trillion in transactions across ~20 blockchain networks. ^[extracted]

## Products

- **USDC** — dollar-pegged stablecoin, natively issued on 20+ blockchain networks. Fully reserved 1:1 with fiat and short-term Treasuries. ^[extracted]
- **EURC** — euro-pegged stablecoin. ^[extracted]
- **Circle Mint** — enterprise platform for minting and redeeming USDC with bank account integration. ^[extracted]
- **HashNote** (acquired) — tokenized money market fund enabling 24/7 liquidity between money markets and USDC. ^[extracted]

## Developer Services

Circle provides a suite of APIs for developers building on USDC: ^[extracted]

- **Wallets** — programmatically provision and manage on-chain wallets within applications. ^[extracted]
- **Smart Contracts** — deploy and interact with smart contracts via API, enabling repeatable contract templates for escrow and other workflows. ^[extracted]
- **Paymaster** — [[concepts/gas-abstraction|gas abstraction]] allowing users to pay transaction fees in USDC or fiat via debit/credit card. ^[extracted]
- **CCTP** — [[concepts/circle-cctp|Cross-Chain Transfer Protocol]] for permissionless USDC movement between blockchains. ^[extracted]
- **Developer Console** — webhook notifications, on-chain data indexing, and transaction monitoring. ^[extracted]

## Regulatory Leadership

Circle has led regulatory engagement around stablecoins globally, helping shape laws that regulate digital dollars. They conduct monthly attestations via independent auditors to verify full reserve backing. ^[extracted]

## Key People

- [[entities/corey-cooper|Corey Cooper]] — DevRel Lead
- [[entities/blackrock|BlackRock]] — investor and backer

## Related

- [[concepts/programmable-money|Programmable Money]] — core concept Circle's technology enables
- [[concepts/stablecoin-settlement|Stablecoin Settlement]] — settlement via Circle's infrastructure
- [[concepts/circle-smart-contract-escrow|Circle Smart Contract Escrow]] — reference escrow application
- [[concepts/ai-escrow-automation|AI Escrow Automation]] — AI-powered escrow built on Circle
- [[concepts/agent-to-agent-payments|Agent-to-Agent Payments]] — emerging use case
- [[concepts/gas-abstraction|Gas Abstraction]] — developer tooling feature

## Sources

- [[references/aief2025-automating-escrow-usdc-ai-corey-cooper|Automating Escrow with USDC and AI — Corey Cooper, Circle (AI Engineer World's Fair 2025)]]
