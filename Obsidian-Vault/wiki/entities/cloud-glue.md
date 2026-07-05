---
title: "Cloud Glue"
category: entities
tags:
  - parsing
  - audio-parsing
  - video-parsing
  - transcription
  - video-understanding
  - vendor
  - upstart
summary: Cloud Glue is a newer parsing vendor that handles both audio and video resources, including extracting information directly from video content (not just transcription).
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/parsing]]"
    type: implements
  - target: "[[entities/alice-ai-sdr]]"
    type: uses
---

# Cloud Glue

Cloud Glue is a newer parsing vendor that handles both **audio and video** resources. It was selected by 11x for their Alice knowledge base's media parsing pipeline.

## Selection Rationale

1. **Audio + video support** — Unlike some competitors that only handle audio, Cloud Glue processes both formats
2. **Video content extraction** — Capable of extracting information from the video itself (visual content), not just transcribing the audio track

## Supported Formats

YouTube videos, MP4 files, and other video formats, plus audio files.

## Output

Converts media resources into structured markdown, including both audio transcripts and visual content descriptions.

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
