---
title: Prompt Injection
category: concepts
tags:
- prompt-injection
- security
- adversarial
- llm-security
- attack-strategies
aliases:
- prompt injection attack
- LLM prompt injection
relationships:
- target: '[[concepts/attack-strategies]]'
  type: implements
- target: '[[concepts/prompt-shields]]'
  type: related_to
- target: '[[concepts/ai-red-teaming]]'
  type: related_to
- target: '[[concepts/market-design|Market Design]]'
  type: relates-to
sources:
- 'https://www.youtube.com/watch?v=jhjkgramfiu'
- AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ
- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
summary: Prompt Injection
---

# Prompt Injection

Prompt injection is a class of adversarial attack where harmful or manipulative content is embedded within a prompt to trick an AI model into producing unintended or unsafe outputs. ^[extracted] It is the primary target of [[concepts/ai-red-teaming|AI red teaming]] and [[concepts/prompt-shields|prompt shields]]. ^[inferred]

## Attack Vectors

### Context Injection
Embedding a harmful request inside a seemingly benign context. For example, prefacing "how to loot a bank" with a personal life story can convince the model to answer despite safety filters. ^[extracted]

### Obfuscation
Encoding the harmful content in formats that bypass text-based filters: ^[extracted]

- String reversal ("how to loot a bank" → "knabool ot woh")
- Base64 encoding
- Caesar cipher substitution
- URL encoding

These techniques exploit the gap between how content filters scan text and how models decode and process it. ^[inferred]

## Defense

Prompt shields in [[entities/azure-ai-foundry|Azure AI Foundry]] are designed specifically to defend against prompt injection attacks. ^[extracted] They operate as part of the input filtering layer, intercepting obfuscated prompts before they reach the model. ^[inferred]
## Agent-Specific: System Prompt Inversion

In the agent context, a distinct attack pattern involves inverting the system prompt's instructions: if the prompt says "run code once and suppress output," the attacker makes it "run code continuously and output everything." The system prompt defines what the developer intended; the attacker does the opposite. ^[extracted] This is distinct from traditional prompt injection because it manipulates the agent's behavioral directives rather than injecting harmful content through user input. ^[inferred]
## Agent-Specific: User-Generated Content Injection

When agents access user-generated content (GitHub issues, documentation, forum posts), untrusted content embedded in that material can leak into the agent's core decision loop. ^[extracted] For example, a GitHub issue link in a user's prompt may contain injected instructions in the issue comments — the agent reads the issue, the injected content enters its context, and if the agent has access to the codebase or sensitive materials, the consequences can be severe. ^[extracted] This is why [[entities/codex|Codex CLI]] and ChatGPT use configurable allowlists for internet access and auto-approve network calls only for trusted domains. ^[inferred]

## Related Risk: Data Exfiltration

Prompt injection is often paired with data exfiltration — the agent sends sensitive data outside its sandbox via network calls. ^[extracted] Disabling or limiting internet access is the primary defense, as it is the highest-probability vector for both prompt injection and data exfiltration in code-executing agents. ^[extracted]

## Market Design Context

In agentic commerce, [[entities/adam-behrens|Adam Behrens]] notes that the current approach to handling buyer and seller information is to "naively trust the information that you're given" — which is vulnerable to prompt injection and LLM manipulation. ^[extracted] The analogy to financial markets is that just as finance developed market makers to manage information asymmetry, agentic commerce needs similar intermediaries rather than trusting raw agent inputs. ^[inferred]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
- AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8
- AIEF2025 - How we hacked YC Spring 2025 batch's AI agents — Rene Brandel, Casco - https://www.youtube.com/watch?v=kv-QAuKWllQ
- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
