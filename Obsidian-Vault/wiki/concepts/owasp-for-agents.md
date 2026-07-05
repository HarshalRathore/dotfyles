---
title: "OWASP for Agents"
category: concepts
tags: [owasp, security, agent-rules, bug-detection, aief2025]
summary: Using OWASP Top 10 as structured security context for AI coding agents — feeding the framework into agent rules files to bias models toward considering security issues during code analysis.
sources:
  - "AIEF2025 - How to Improve your Vibe Coding — Ian Butler - https://www.youtube.com/watch?v=g03m-WFEu1U"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/bug-focused-rules]]"
    type: component_of
  - target: "[[concepts/vibe-coding]]"
    type: improves
---

# OWASP for Agents

OWASP (Open Web Application Security Project) is described by [[entities/ian-butler|Ian Butler]] as "the world's most popular security authority for bugs." ^[extracted]

## Using OWASP with AI Agents

Feed the OWASP Top 10 security risks into an AI agent's rules file. This biases the model to consider these security issues when examining code. ^[extracted]

The empirical finding: without security or bug-related context supplied to the model, agent performance on bug detection drops significantly. ^[extracted]

## Why It Works

OWASP provides a structured, comprehensive framework of known vulnerability classes. When the agent's context includes this framework, it can map code patterns to known security risks rather than searching for bugs blindly. ^[inferred]

## Relationship to Other Concepts

OWASP context is a component of [[concepts/bug-focused-rules|bug-focused rules]], which also include explicit bug class naming and required test validation. ^[inferred]
