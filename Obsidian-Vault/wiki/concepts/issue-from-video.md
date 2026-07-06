---
title: Issue from Video
tags:
- computer-vision
- video-analysis
- bug-reproduction
- multimodal-ai
- issue-management
aliases:
- issue from video
- video-to-issue
- video bug report
summary: Using multimodal AI to analyze customer-submitted video recordings, extract reproduction steps, and automatically create structured bug reports or feature requests.
sources:
- '[[sources/aief2025-building-the-platform-for-agent-coordination-—-tom-moor]]'
- 'https://www.youtube.com/watch?v=ug9iadmi2dg'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04 00:00:00+00:00
updated: 2026-07-04 00:00:00+00:00
relationships:
- target:
  - - concepts/multimodal-ai|Multimodal AI
  type: uses
- target:
  - - concepts/computer-use-agents|Computer Use Agents
  type: related_to
category: concepts
---

# Issue from Video

Issue from Video is a feature that uses multimodal AI to analyze customer-submitted video recordings and automatically create structured issue reports with reproduction steps. ^[inferred]

## How It Works

When a customer submits a video (e.g., a bug report), the system:

1. **Analyzes the video** using multimodal AI capabilities ^[extracted]
2. **Extracts reproduction steps** from the visual sequence of events ^[extracted]
3. **Creates a structured issue** in the project management system with the extracted information ^[extracted]

## Why Video Matters

"So many bugs come in as video recordings from customers." Video is often the most natural way for non-technical users to report issues — they record what they see rather than writing a structured bug report. Automating the conversion from video to structured issue saves significant time for both customers and engineering teams. ^[extracted]

## Multimodal AI Requirement

This feature requires multimodal capabilities — the ability to understand both visual and textual information. The rise of models with strong vision capabilities (GPT-4V, Gemini, etc.) made this type of feature feasible in 2024, whereas it would have been too brittle in 2023. ^[inferred]

## Related

- [[concepts/multimodal-ai|Multimodal AI]]
- [[concepts/computer-use-agents|Computer Use Agents]]
- [[concepts/seamless-ai|Seamless AI]]
- [[entities/linear|Linear]]
