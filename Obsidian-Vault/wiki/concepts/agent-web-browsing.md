---
title: Agent Web Browsing
category: concepts
tags:
- agent-tools
- web-browsing
- accessibility-tree
- screenshot-agents
- computer-use-models
summary: 'How coding agents interact with web browsers: accessibility trees and markdown conversion outperform raw HTML. Screenshot-based interaction with labeled nodes enables clicking. Computer-use models...'
sources:
- 'AIEF2025 - Software Development Agents: What Works and What Doesn''t - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs'
provenance:
  extracted: 0.88
  inferred: 0.12
  ambiguous: 0.0
base_confidence: 0.83
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/agent-tools|Agent Tools]]'
  type: extends
- target: '[[concepts/vision-vs-text-web-agents|Vision vs Text Web Agents]]'
  type: related_to
- target: '[[concepts/computer-use-agents|Computer Use Agents]]'
  type: related_to
---

# Agent Web Browsing

How coding agents interact with web browsers — the most complex of the three core agent tools. ^[extracted]

## Approaches

### Raw HTML (Naive)

- Agent gets a URL, receives raw HTML
- Expensive: contains cruft the LLM doesn't need
- Wastes tokens on tags, classes, and structural noise ^[extracted]

### Accessibility Tree (Recommended)

- Built-in structure on every web page
- Same visual layout without extra div tags, classes, and visual noise
- Cleaner, more efficient context for the LLM ^[extracted]

### Markdown Conversion

- Another clean representation approach
- Converts HTML to readable markdown format
- Reduces token usage while preserving content structure ^[extracted]

### Screenshot-Based Interaction

- LLM receives a screenshot of the page with labeled nodes
- Can say what it wants to click on by label
- Works well for interactive pages ^[extracted]

### JavaScript Execution

- Allow the LLM to write JavaScript against the page
- More powerful but more complex ^[extracted]

### Scrolling

- For pages with large content, allow the LLM to scroll through ^[extracted]

## Active Research Area

Web browsing for agents is an area of active research. OpenHands doubled its web browsing accuracy with a contribution approximately one month before the AIEF2025 talk. ^[extracted]

## Related

- [[concepts/agent-tools|Agent Tools]] — The three core agent tools
- [[concepts/vision-vs-text-web-agents|Vision vs Text Web Agents]] — Paradigms for web agent perception
- [[concepts/computer-use-agents|Computer Use Agents]] — Models trained on web trajectories
- [[entities/openhands|OpenHands]] — Platform with active web browsing improvements
