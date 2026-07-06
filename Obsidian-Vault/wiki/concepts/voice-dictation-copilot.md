---
title: Copilot Voice Dictation
category: concepts
tags:
- copilot
- voice
- dictation
- speech-recognition
- github
- microsoft
- aief2025
sources:
- 'https://www.youtube.com/watch?v=rkvilz06y08'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/github-copilot]]'
  type: implements
- target: '[[concepts/ai-voice-assistant-quality]]'
  type: related_to
summary: Copilot Voice Dictation
---

# Copilot Voice Dictation

Copilot includes voice dictation (Command-I by default) using a local model for privacy and speed. It supports reading back text for accessibility and "Hey Copilot" activation, enabling hands-free vibe coding. ^[extracted]

## How It Works

Voice dictation runs on a local model, keeping speech data on-device for privacy while providing fast transcription. The feature supports bidirectional interaction: users can speak prompts to Copilot and have Copilot read back text for accessibility. ^[extracted]

## Key Characteristics

- **Local model** — Speech processing happens locally, not sent to a cloud model, ensuring privacy. ^[extracted]
- **Command-I shortcut** — Activated via Command-I by default in VS Code. ^[extracted]
- **Read-back** — Copilot can read text aloud for accessibility. ^[extracted]
- **Wake word** — "Hey Copilot" activation for hands-free operation. ^[extracted]
- **Hands-free vibe coding** — Enables full agent-mode interaction without typing. ^[extracted]

## Relationship to Agent Modes

Voice dictation extends [[concepts/readme-driven-development|README-driven development]] and [[concepts/agent-vs-workflow|agent mode]] to a voice-first interaction model, making the full agent workflow accessible to users who prefer or need voice input. ^[inferred]

## Related

- [[entities/github-copilot]] — GitHub Copilot features
- [[concepts/readme-driven-development]] — README-driven development
- [[concepts/ai-voice-assistant-quality]] — AI voice assistant quality

## Sources

- AIEF2025 - Real world MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft - https://www.youtube.com/watch?v=RkVILz06y08
