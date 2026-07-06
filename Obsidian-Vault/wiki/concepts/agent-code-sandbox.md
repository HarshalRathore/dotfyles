---
title: Agent Code Sandbox Security
category: concepts
tags:
- code-execution
- sandbox
- agent-security
- security
- arbitrary-compute
sources: []
summary: Security risks of code execution sandboxes in AI agents — arbitrary compute creates attack surfaces through sandbox escape, resource exhaustion, and system prompt inversion.
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-05'
tier: supporting
created: '2026-07-04'
updated: '2026-07-04'
---

# Agent Code Sandbox Security

**Agent code sandbox security** addresses the risks inherent in giving AI agents the ability to execute arbitrary code. Code execution is a critical path in agent systems: a tool communicates with a container that provides arbitrary compute, and arbitrary compute enables many possible attack vectors. ^[extracted]

## Why Code Sandboxes Are Dangerous

Many agents create code on demand — generating calculators, data processors, or other programs to perform specific tasks. The speaker noted that developers make up 37% of Claude's usage despite being only 3.4% of the world population, and code execution tools are among the most commonly used agent capabilities. ^[extracted]

A code sandbox represents a critical path because:

1. The tool talks to a container (arbitrary compute)
2. Arbitrary compute can access filesystems, networks, and system resources
3. The LLM generating the code is not a security boundary — it can be manipulated

## Common Attack Patterns

- **System prompt inversion** — The prompt says "run once and suppress output"; the attacker runs continuously and outputs everything
- **Language restriction evasion** — The sandbox allows only Python; the attacker probes for JavaScript or other languages
- **File path restriction evasion** — The sandbox restricts which files can be accessed; the attacker probes for unrestricted paths
- **Function call restriction evasion** — The sandbox blocks dangerous functions; the attacker finds alternatives ^[extracted]

## Key Insight

The system prompt's constraints (language restrictions, file paths, allowed functions) are not security boundaries — they are policy directives that an attacker can probe and potentially bypass. ^[extracted]

## Related

- [[concepts/agent-security]] — Code sandbox security is a subset of agent security
- [[concepts/system-prompt-security]] — System prompts reveal sandbox constraints to attackers
- [[concepts/compute-abuse]] — Resource exhaustion through continuous code execution

## Docker Sandboxing

[[entities/robert-brennan|Robert Brennan]] (OpenHands) runs all agents inside Docker containers by default, fully separated from the host workstation. This eliminates the risk of agents running destructive commands like `rm -rf ~/` on the host. ^[extracted]

## Credential Scoping

When agents need third-party API access (GitHub tokens, AWS credentials), credentials must be tightly scoped following the principle of least privilege. ^[extracted]
