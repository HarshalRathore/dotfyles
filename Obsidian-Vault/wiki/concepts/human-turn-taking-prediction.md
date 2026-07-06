---
title: Human Turn-Taking Prediction
tags:
- linguistics
- conversation
- psychology
- turn-taking
- prediction
- voice
sources:
- 'https://www.youtube.com/watch?v=1v9zbizkliy'
summary: 'The three-stage model by which listeners predict when a speaker will finish their turn: semantic inference, syntactic refinement, and prosodic finalization, enabling responses faster than speech ge...'
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Human Turn-Taking Prediction

Turn-taking in human conversation is a psycholinguistic puzzle: listeners respond in approximately 200ms, yet the process of formulating and articulating speech takes approximately 600ms. The resolution is that listeners **predict** when the speaker will finish, and begin generating their response before the turn actually ends. ^[extracted]

## The Three-Stage Model

A generally accepted model describes three stages of prediction: ^[extracted]

### Stage 1: Semantic Prediction

The listener continuously infers the intended message of the speaker before they finish speaking. This is the most important input — the content of what is being said drives the initial prediction of when the utterance will end. ^[extracted]

- The listener asks: "What are they trying to say?"
- This prediction is updated continuously and repeatedly as the speaker continues
- Semantics is the primary input, more important than syntax, prosody, or visual cues

### Stage 2: Syntactic Refinement

As the prediction converges and the end of the turn approaches, the listener refines the end-point prediction using both semantics and syntax (the structure of the sentence). ^[extracted]

### Stage 3: Prosodic Finalization

When the speaker gets very close to the end of their turn, the listener finalizes the prediction using prosody — tone and other acoustic features. ^[extracted]

## Full Duplex Mind

Throughout this process, the human mind operates in full duplex mode — simultaneously processing incoming speech (comprehension track) and beginning to formulate a response (production track). ^[extracted]

| Track | Function |
|---|---|
| **Comprehension** | Inferring the intended message, predicting end of turn |
| **Production** | Generating what to say in response |

These two tracks run concurrently, with production beginning well before the speaker finishes.

## Variability

Turn-taking timing varies dramatically across dimensions: ^[extracted]

- **Cross-cultural**: Danes take relatively long pauses between turns; Japanese do it almost instantaneously
- **Individual**: Some people consistently take longer to respond
- **Situational**: Emotional state (anger speeds up response times) and context affect timing

## Contrast with Voice AI

Current [[concepts/voice-activity-detection|VAD-based voice AI systems]] contrast sharply with human turn-taking: ^[inferred]

| Dimension | Human | VAD-based AI |
|---|---|---|
| **Processing** | Full duplex (parallel) | Serial |
| **Method** | Predictive (looks forward) | Reactive (looks backward) |
| **Inputs** | Semantics, syntax, prosody, visual cues | Speech/not-speech + silence |
| **Adaptation** | Cross-cultural, individual, situational | Fixed thresholds |

## Related

- [[concepts/semantic-end-of-utterance-detection|Semantic End-of-Utterance Detection]] — attempts to replicate this prediction in AI
- [[concepts/full-duplex-voice-models|Full Duplex Voice Models]] — AI models that mimic the parallel processing
- [[concepts/voice-activity-detection|Voice Activity Detection]] — the current inadequate approach

## Sources

- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
