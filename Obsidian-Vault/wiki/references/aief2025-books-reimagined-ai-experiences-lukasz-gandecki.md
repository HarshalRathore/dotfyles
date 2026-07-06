---
title: "Books reimagined: AI to create new experiences for things you know"
category: references
tags: [aief2025, talk, books, ai-experiences, vibe-coding, voice-assistants, open-source, thebrain-pro]
summary: "Łukasz Gądecki's AIEF2025 talk on Books Reimagined — AI-powered multimodal book experiences, vibe coding methodology, and open-sourcing the book player."
sources:
  - "https://www.youtube.com/watch?v=kcka7rzcxlk"
provenance: { extracted: 1.0, inferred: 0.0, ambiguous: 0.0 }
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:30:00Z
updated: 2026-07-05T00:30:00Z
relationships:
  - target: "[[entities/lukasz-gandecki]]"
    type: related_to
  - target: "[[entities/thebrain-pro]]"
    type: related_to
  - target: "[[concepts/books-reimagined]]"
    type: related_to
  - target: "[[concepts/vibe-coding]]"
    type: related_to
---

## Books reimagined: AI to create new experiences for things you know

**Speaker:** Łukasz Gądecki, TheBrain.pro
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=Kcka7rzcxLk

### Summary

Gądecki presented Books Reimagined, a project that uses AI to create immersive, multimodal reading experiences for classic literature. He described his development methodology as "vibe coding" — rapid AI-assisted prototyping followed by waves of iterative refinement until the code stabilizes, then traditional engineering practices.

### Key Points

- **Origin story:** Started by building an AI companion app to understand characters in a book about Trump's re-election. The project evolved into full multimodal book experiences.
- **Product demo:** Showcased Polish-language "The Snow Queen" and English "1984" with AI-generated graphics, music, character avatars, and interactive voice Q&A.
- **Voice assistant critique:** Current AI voice assistants (including Google's demo and Siri) are "terrible" — unreliable turn-taking, delays, wrong interruptions. His solution: hold-to-specify-when-speaking model with 100ms response time.
- **Search innovation:** Uses embeddings for natural-language scene search instead of exact text matching, plus deep research that reads the entire book to answer questions.
- **Development philosophy:** Vibe coding with vanilla JS for rapid iteration; throwing away AI-generated code feels great. Refactoring priority = badness × pain × ease.
- **Human touch:** AI should be hidden from users. Human curation is essential for music quality, graphic aesthetics, and character avatar matching.
- **Open source:** Announced open-sourcing the book player at AIEF2025 for anyone to create Netflix-style book experiences.

### Technologies Mentioned

- LLMs for scene analysis and character detection
- AI music generation guided by mood/theme prompts
- Structured XML metadata extraction
- Embedding-based semantic search
- Voice interaction with hold-to-speak turn-taking
