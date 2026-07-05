---
title: "MCP Hack Week Launch"
category: concepts
tags: [mcp, hack-week, anthropic, open-source, viral-launch, model-context-protocol, origin-story]
summary: "MCP's origin story: created by two engineers at Anthropic's Hack Week in November, went viral internally, and was open-sourced to the world — the first turning point in MCP's history."
sources:
  - "AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu, Model Context Protocol PM, Anthropic - https://www.youtube.com/watch?v=x-8pBqWiTzk"
provenance: { extracted: 0.90, inferred: 0.07, ambiguous: 0.03 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/mcp|Model Context Protocol]]"
    type: related_to
  - target: "[[concepts/model-agency|Model Agency]]"
    type: related_to
---

# MCP Hack Week Launch

The Model Context Protocol originated at Anthropic's Hack Week in November, created by two engineers (David and Justin) as a solution to the problem of copying and pasting context into the model's context window. The internal launch went viral, leading to the protocol being open-sourced to the world. ^[extracted]

## The Origin

Two engineers at Anthropic were constantly copying and pasting context from outside the model's context window — Slack messages, Sentry error logs, and other sources. They realized that if Claude or any LLM could "climb out of its box, reach out into the real world, and bring that context and those actions to the model," it would dramatically improve the model's usefulness. ^[extracted]

This led to the core question: "How do you actually give the model the ability to interact with the outside world?" The answer was an open-source standardized protocol. ^[extracted]

## The Tiger Team

A small tiger team was formed internally at Anthropic to build the protocol. It was launched at the company's Hack Week in November and went viral — engineers from various teams immediately started building MCPs to automate their own workflows and other teams' workflows. ^[extracted]

Theo Chu described this as "a cool moment to see how it went from, again, like two engineers in a garage all the way to this is a major moment and turning point where we think we actually unlocked some true value for other people." ^[extracted]

## Open Source Launch

MCP was open-sourced in November, introducing it to the rest of the world. This was the first turning point in MCP's history. ^[extracted]

## The Launch Reality

Theo noted that "when you build something zero to one, you think the launch moment is going to be really impactful. But it actually usually is not." At launch, many people asked "What's MCP?" or "What's MPC?" and questioned why a new protocol was needed when models could already call tools. ^[extracted]

The real momentum came later, when builders got their hands dirty building MCPs for their own workflows. ^[extracted]

## See Also

- [[concepts/mcp|Model Context Protocol]] — MCP protocol overview
- [[concepts/model-agency|Model Agency]] — The problem MCP solves
- [[concepts/mcp-adoption-timeline|MCP Adoption Timeline]] — The next turning points
