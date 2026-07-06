---
title: Fouad Matin
category: entities
tags:
- person
- security
- openai
- agent-robustness
- codex
aliases:
- fouad matin
sources:
- AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/openai|OpenAI]]'
  type: works_at
- target: '[[entities/codex|Codex CLI]]'
  type: works_on
- target: '[[concepts/agent-robustness|Agent Robustness]]'
  type: related_to
summary: Fouad Matin
---

# Fouad Matin

Fouad Matin is a security professional at [[entities/openai|OpenAI]] working on agent robustness and control as part of post-training.

## Background

- Previously ran a security-focused startup for approximately six years
- Joined OpenAI's security team after his startup
- Works on agent robustness and control in post-training
- In the last couple of months, worked on Codex and Codex CLI — OpenAI's open-source library for running Codex directly on user computers

## Focus Areas

Fouad's work centers on the intersection of AI agent capabilities and safety:

- **Agent robustness** — Ensuring agents behave reliably and safely when given code-execution capabilities
- **Agent sandboxing** — Implementing macOS (Seatbelt) and Linux (Seccomp + Landlock) sandboxing for Codex CLI
- **Open-source security** — Open-sourcing Codex CLI to showcase not just the agent but the security patterns for building similar systems

## AIEF2025 Talk

Presented "OpenAI on Securing Code-Executing AI Agents" at AIEF2025, covering OpenAI's preparedness framework for agent safety including sandboxing, internet access controls, and human-in-the-loop review patterns.
