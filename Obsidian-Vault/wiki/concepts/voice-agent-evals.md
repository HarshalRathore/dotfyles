---
title: "Voice Agent Evals"
tags:
  - evals
  - voice
  - ai
  - testing
  - observability
sources:
  - "AI Engineer World's Fair 2025 talk — Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI - https://www.youtube.com/watch?v=-OXiljTJxQU"
summary: "Four-tier evaluation strategy for voice agents: observability, SME labeling, transcription-based evals, audio evals, and synthetic conversation simulation."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Voice Agent Evals

Voice agents require a multi-layered evaluation approach that goes beyond text-based evals, because correctness is only one dimension — tone, pacing, and naturalness matter equally for user satisfaction. The talk presented a four-tier evaluation strategy. ^[extracted]

## 1. Observability

Before any structured evaluation, teams need visibility into what their voice agent is doing:
- **Traces** of agent decisions and tool calls
- **Audio recordings** of conversations for manual review
- **Logs** of system behavior and errors

Observability is the prerequisite for every other evaluation method — without it, you cannot diagnose failures or identify improvement opportunities.

## 2. SME Labeling

The most effective evaluation method according to the talk: have **subject matter experts** label real conversation data and iterate on prompts based on their feedback.

While this approach sounds simplistic, the speakers emphasized it is the most effective method they've observed across customer deployments. It enables faster iteration cycles than automated approaches alone.

## 3. Transcription-Based Evals

Traditional evaluation techniques applied to the transcribed text of voice conversations:
- **LLM-as-a-judge** — use a model to score response quality against rubric criteria
- **Function calling accuracy** — verify that tool calls and parameter extraction are correct
- **Business criteria rubrics** — score outputs against domain-specific success criteria
    - **Checklist-based evaluation** — for each specific question, define a detailed criteria checklist of required information and use the LLM judge to verify compliance against every item, providing more granular failure analysis than a single rubric score (see [[concepts/checklist-based-evaluation|Checklist-Based Evaluation]])

These evals capture most of the signal that matters for correctness, since the semantic content of voice interactions is preserved in transcription.

## 4. Audio Evals

The dimension where voice agents differ from text agents. Audio-specific properties that need evaluation: ^[inferred]
- **Tone** — is the agent speaking with the right emotional register
- **Pacing** — is the speed and rhythm of speech appropriate
- **Intonation** — are the prosody and emphasis patterns natural

These can be evaluated using a completions model with audio understanding — the talk specifically mentioned using [[entities/openai|GPT-4o audio]] to assess tone, pacing, and intonation.

## 5. Synthetic Conversations

An emerging technique: simulate conversations between two real-time API clients — one acting as the agent and one acting as a customer persona. This enables:
- Large-scale automated testing
- Coverage of edge cases and rare scenarios
- Extraction of eval metrics from derived transcripts and audio

## Related

- [[concepts/voice-agent-guardrails|Voice Agent Guardrails]] — safety patterns that complement evaluation
- [[concepts/voice-agent-prompting|Voice Agent Prompting]] — prompt quality directly affects eval outcomes
- [[concepts/agent-loop|Agent Loop]] — how evaluation feeds into iterative improvement cycles

## Sources

- [[references/building-effective-voice-agents-openai-2025|Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI]] — Conference talk
