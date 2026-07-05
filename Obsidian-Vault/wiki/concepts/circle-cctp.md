---
title: "Cross-Chain Transfer Protocol (CCTP)"
tags:
  - blockchain
  - cross-chain
  - usdc
  - interoperability
aliases:
  - CCTP
  - Circle CCTP
  - cross-chain transfer protocol
sources:
  - "[[sources/watchv=axmdsqdoghm]]"
summary: "Circle's permissionless protocol for transferring USDC between different blockchain networks, enabling unified multi-chain payment experiences without fragmentation."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Cross-Chain Transfer Protocol (CCTP)

CCTP is [[entities/circle|Circle]]'s protocol for moving USDC between different blockchain networks permissionlessly. It solves the fragmentation problem of USDC being natively issued on 20+ chains — instead of requiring liquidity pools or wrapped assets, CCTP burns USDC on the source chain and mints it natively on the destination chain. ^[extracted]

## Key Features

- **Permissionless** — any developer can integrate CCTP without approval. ^[extracted]
- **Native issuance** — USDC on the destination chain is the canonical contract's USDC, not a wrapped derivative. ^[extracted]
- **Multi-chain escrow patterns** — a depositor can send USDC from Solana to an escrow contract on Base via CCTP; the beneficiary can receive payout on Ethereum. ^[extracted]
- **Unified developer experience** — developers build interoperability at the deposit and payout layers rather than deploying contracts on every chain. ^[extracted]

## Escrow Use Case

In cross-chain escrow patterns, contracts typically live on one chain while deposit and payout flows interoperate across chains. A depositor with USDC on Solana can fund an escrow contract on Base, and the beneficiary can receive funds on Ethereum — all without leaving the application. ^[extracted]

## Related

- [[concepts/programmable-money|Programmable Money]] — the value being transferred across chains
- [[concepts/stablecoin-settlement|Stablecoin Settlement]] — the settlement primitive CCTP moves
- [[concepts/circle-smart-contract-escrow|Circle Smart Contract Escrow]] — contracts that accept cross-chain deposits
- [[concepts/ai-escrow-automation|AI Escrow Automation]] — use case that benefits from multi-chain capability

## Sources

- [[references/aief2025-automating-escrow-usdc-ai-corey-cooper|Automating Escrow with USDC and AI — Corey Cooper, Circle (AI Engineer World's Fair 2025)]]
