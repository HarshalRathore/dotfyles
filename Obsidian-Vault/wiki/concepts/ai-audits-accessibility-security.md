---
title: 'AI Audits: Accessibility and Security'
category: concepts
tags:
- accessibility
- security
- audits
- ai-agents
- code-quality
- aief2025
sources:
- AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8
relationships:
- target:
  - - concepts/agent-as-laundry|Agent as Laundry
  type: exemplifies
- target:
  - - concepts/parallel-agent-workflows|Parallel Agent Workflows
  type: enables
- target:
  - - concepts/lighthouse-scores|Lighthouse Scores
  type: relates_to
- target:
  - - concepts/wcag-compliance|WCAG Compliance
  type: relates_to
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: 'AI Audits: Accessibility and Security'
---

# AI Audits: Accessibility and Security

AI agents can perform accessibility audits and security audits — tasks that are important but consistently deferred by developers. These audits represent the "laundry" of software development: necessary, measurable, and ideal for agent automation. ^[extracted]

## The Problem

Accessibility and security audits are tasks that "seem to go on the backlog but are really important." ^[extracted] Developers consistently prioritize feature work over these audits, leading to:
- Accumulating accessibility violations
- Unaddressed security vulnerabilities
- Degraded user experience for disabled users
- Increasing security debt

## AI-Performed Audits

### Accessibility Audits

AI agents can:
- Scan codebases for WCAG violations
- Identify missing ARIA attributes
- Detect color contrast issues
- Verify keyboard navigation patterns
- Generate fixes for identified violations ^[extracted]

### Security Audits

AI agents can:
- Scan for known vulnerability patterns
- Identify insecure dependencies
- Check for proper input validation
- Verify authentication flows
- Generate patches for identified issues ^[extracted]

### Lighthouse Score Improvement

AI agents can improve Lighthouse scores by:
- Optimizing image loading and caching
- Reducing bundle size
- Improving server response times
- Fixing render-blocking resources
- Adding proper meta tags ^[extracted]

## Why Agents Excel at Audits

1. **Comprehensive scanning**: Agents can analyze entire codebases systematically
2. **Pattern recognition**: Trained on thousands of audit patterns
3. **Consistency**: Applied uniformly across the entire codebase
4. **Automation**: Results can be immediately converted to PRs
5. **Continuous**: Can be run regularly, not just as one-off tasks

## Demonstration

At AIEF2025, Rustin Banks demonstrated Jules running accessibility audits and improving Lighthouse scores simultaneously on a conference schedule website. This showed that audit tasks can be parallelized with feature development — the agent worked on audits while also building calendar integration and test suites. ^[extracted]

## Related Pages

- [[concepts/agent-as-laundry|Agent as Laundry]] — The metaphor for these tasks
- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Running audits alongside features
- [[concepts/lighthouse-scores|Lighthouse Scores]] — Performance metric
- [[concepts/wcag-compliance|WCAG Compliance]] — Accessibility standard
