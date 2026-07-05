---
title: "Vision vs Text Web Agents"
category: concepts
tags: [web-agents, vision-agents, dom-agents, text-agents, screenshots, accessibility-tree, computer-use-models]
sources:
  - "AIEF2025 - The Web Browser Is All You Need - Paul Klein IV, Browserbase - https://www.youtube.com/watch?v=YRGjll7uu5w"
summary: "Two paradigms for web agents: vision-driven (screenshots as context) vs text/DOM-based (HTML as context), with accessibility trees and computer-use models as emerging approaches."
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
  - target: "[[concepts/web-agent-vs-browser-tool|Web Agent vs Browser Tool]]"
    type: related_to
  - target: "[[concepts/browser-as-integration-layer|Browser as Integration Layer]]"
    type: related_to
  - target: "[[concepts/stagehand-browser-tool|Stagehand Browser Tool]]"
    type: related_to
---
# Vision vs Text Web Agents

Web agents fall into two categories based on how they perceive and reason about web pages: **vision-driven** (screenshots) and **text/DOM-based** (HTML). Both have trade-offs, and the right choice depends on the target website. ^[extracted]

## Vision-Driven Agents

- **Context**: Screenshots of the page
- **Techniques**: May use "set of marks prompting" — marking up the screenshot with labeled boxes (e.g., "click box label 25")
- **Pros**: More accurate on complex pages with rich layouts
- **Cons**: Less repeatable, depends on model vision capabilities
- **Example**: Early web agents like Web Voyager used screenshots + chain of thought + coordinate clicking ^[extracted]

## Text-Based (DOM-Based) Agents

- **Context**: HTML, parsed via tools like expat and Playwright
- **Pros**: More repeatable, deterministic parsing
- **Cons**: May struggle with complex visual layouts
- **Approach**: Transform HTML to make it more reliable for agents (e.g., using the accessibility tree) ^[extracted]

## Accessibility Tree

A built-in structure on every web page that condenses the same information into a cleaner layout — same visual structure but without extra div tags, classes, and visual noise. This makes it a more efficient context for text-based agents. ^[extracted]

## Computer-Use Models (Emerging)

The next evolution: models specifically trained on **web trajectories** via reinforcement learning. Rather than using stock image models, these models learn to:
- Pick the right button on a page
- Reason across multiple pages about the right path to take ^[extracted]

This represents a shift from using general-purpose vision models for browsing to training specialized models on browsing behavior. ^[inferred]

## Trade-offs Summary

| | Vision-Driven | Text/DOM-Based |
|---|---|---|
| Context | Screenshots | HTML / Accessibility tree |
| Accuracy | Higher on complex pages | Higher on structured pages |
| Repeatability | Lower | Higher |
| Tooling | Screenshot capture + marking | Playwright + expat + DOM parsing |
| Emerging | Computer-use models | Accessibility tree optimization |

## Related Pages

- [[concepts/web-agent-vs-browser-tool|Web Agent vs Browser Tool]] — Web agents vs browser tools distinction
- [[concepts/browser-as-integration-layer|Browser as Integration Layer]] — Why browsers are the integration layer
- [[concepts/stagehand-browser-tool|Stagehand Browser Tool]] — Browser tool alternative
- [[entities/paul-klein-iv|Paul Klein IV]] — Speaker who categorized these approaches

## Coding Agent Perspective

[[entities/robert-brennan|Robert Brennan]] (OpenHands) at AIEF2025 emphasizes that the web browser is the most complicated of the three core agent tools. The naive approach of passing raw HTML is expensive due to cruft the LLM doesn't need. OpenHands has had significant luck with accessibility trees and markdown conversion, and even more with screenshot-based interaction using labeled nodes for clicking — an area of active research where a recent contribution doubled their accuracy. ^[extracted]
