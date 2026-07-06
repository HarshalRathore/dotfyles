---
title: Codex CLI
category: entities
tags:
- tool
- openai
- cli
- agent
- code-execution
- open-source
aliases:
- codex command line
- openai codex cli
sources:
- AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/openai|OpenAI]]'
  type: created_by
- target: '[[concepts/code-executing-agents|Code-Executing Agents]]'
  type: implements
- target: '[[concepts/agent-sandboxing|Agent Sandboxing]]'
  type: uses
- target: '[[concepts/prompt-injection|Prompt Injection]]'
  type: defends_against
summary: Codex CLI
---

# Codex CLI

Codex CLI is OpenAI's open-source command-line tool for running the Codex agent directly on the user's computer. It serves both as a product and as a reference implementation for building custom code-executing agents.

## Purpose

Codex CLI was open-sourced with a dual purpose: ^[extracted]

1. Provide users with a ready-to-use coding agent that runs locally
2. Showcase security patterns — particularly macOS and Linux sandboxing techniques — so others can build their own agents safely

## Sandboxing Architecture

Codex CLI implements multiple layers of sandboxing for local execution: ^[extracted]

### macOS
- Uses **Seatbelt** — Apple's sandboxing language bundled into macOS since Leopard
- Policy heavily inspired by Chromium's Seatbelt sandboxing approach
- Written in Rust for safety

### Linux
- Uses **Seccomp** + **Landlock** for unprivileged sandboxing
- Prevents privilege escalation
- Written in Rust

### Auto Mode
- Defines a sandbox where the agent can only read/write files within its run directory
- Network calls are restricted to auto-approved commands only
- Allows the agent to run tests (PyTest, NPM test) without risking second-order consequences

## Relationship to ChatGPT Codex

In ChatGPT and the web Codex product, agents run in fully isolated containers on OpenAI's infrastructure and produce PRs at the end. Codex CLI brings a similar (but locally-sandboxed) experience to the command line, encouraging users to run agents locally with appropriate guardrails.

## Internet Access Controls

- **Codex CLI**: Auto mode restricts network calls to auto-approved commands only
- **ChatGPT Codex**: Configurable allowlists that specify which domains and HTTP methods are permitted, with explicit risk warnings

## Related

- [[concepts/code-executing-agents|Code-Executing Agents]] — Codex CLI is a code-executing agent
- [[concepts/agent-sandboxing|Agent Sandboxing]] — Implements macOS Seatbelt and Linux Seccomp+Landlock
- [[entities/openai|OpenAI]] — Created by OpenAI
- [[concepts/prompt-injection|Prompt Injection]] — Sandboxing mitigates injection risk
