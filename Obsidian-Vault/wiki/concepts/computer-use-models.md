---
title: "Computer-Use Models"
category: concepts
tags: [computer-use-models, ai-agents, browsing, rl, specialized-models, web-trajectories]
sources:
  - "AIEF2025 - The Web Browser Is All You Need - Paul Klein IV, Browserbase - https://www.youtube.com/watch?v=YRGjll7uu5w"
summary: "AI models specifically trained on web trajectories via reinforcement learning, rather than using stock image models for browsing tasks."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vision-vs-text-web-agents|Vision vs Text Web Agents]]"
    type: extends
  - target: "[[concepts/web-trajectories-rl|Web Trajectories and RL]]"
    type: derived_from
  - target: "[[concepts/web-agent-vs-browser-tool|Web Agent vs Browser Tool]]"
    type: related_to
---
# Computer-Use Models

Computer-use models are AI models specifically trained for browsing and computer interaction, rather than using stock image models for these tasks. They represent the next evolution in web automation for AI agents. ^[extracted]

## The Shift

Previously, web agents used general-purpose vision models (stock image models) to interpret and interact with web pages. Computer-use models are trained specifically on:
- Web trajectories (sequences of browsing actions)
- Reinforcement learning signals (what actions lead to task completion)
- Multi-page reasoning (planning across pages, not just reacting to one) ^[extracted]

## Capabilities

- Pick the right button on a page
- Reason across multiple pages about the right path to take
- Learn browsing patterns through reinforcement learning ^[extracted]

## Status

Paul notes "a lot of innovation here happening on teaching AI how to browse the web, and this stuff is getting good. It is working, and you can use it today." ^[extracted]

## Related Pages

- [[concepts/vision-vs-text-web-agents|Vision vs Text Web Agents]] — Traditional agent approaches
- [[concepts/web-trajectories-rl|Web Trajectories and RL]] — Training data and method
- [[concepts/web-agent-vs-browser-tool|Web Agent vs Browser Tool]] — Where computer-use models fit
- [[entities/paul-klein-iv|Paul Klein IV]] — Speaker who highlighted this trend
