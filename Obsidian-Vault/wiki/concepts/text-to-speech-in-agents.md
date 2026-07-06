---
title: Text-to-Speech in AI Agents
tags:
- text-to-speech
- tts
- ai-agents
- multimodal
- voice
- agent-tools
aliases:
- tts agents
- voice output agents
- agent speech
sources:
- 'https://www.youtube.com/watch?v=q3nreeadkmc'
summary: Using text-to-speech as a built-in tool in AI agents, enabling agents to speak their outputs aloud as part of a multi-step pipeline — demonstrated as file-read → summarize → write → speak.
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/built-in-agent-tools|Built-in Agent Tools]]'
  type: implements
- target: '[[concepts/back-channeling-voice-ai|Back-Channeling Voice AI]]'
  type: related_to
category: concepts
---

# Text-to-Speech in AI Agents

Using text-to-speech (TTS) as a built-in tool in AI agents, enabling agents to speak their outputs aloud as part of a multi-step pipeline. ^[extracted]

## Demonstration

[[entities/suman-debnath|Suman Debnath]] included text-to-speech as one of three built-in tools in the Strands Agents demo. The complete pipeline was:

1. **Read** a file from disk
2. **Summarize** the content
3. **Write** the summary to a markdown file
4. **Speak** the summary aloud

TTS was the final step, converting the agent's text output into spoken audio. ^[extracted]

## Significance

TTS as a built-in tool makes agents truly multimodal — they can consume input (text files) and produce output (text files + audio) without custom code. This extends the agent's interaction surface beyond text-only interfaces. ^[inferred]

## Related

- [[concepts/built-in-agent-tools]] — Built-in agent tools
- [[concepts/back-channeling-voice-ai]] — Back-channeling in voice AI
- [[concepts/minimal-scaffolding-ai-agents]] — Minimal scaffolding philosophy
- [[entities/strands-agents]] — Strands Agents SDK
- [[references/aief2025-introducing-strands-agents-open-source-ai-agents-sdk-suman-debnath-aws]] — AIEF2025 talk
