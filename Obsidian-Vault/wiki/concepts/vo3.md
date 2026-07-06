---
title: VO3
category: concepts
tags: [media-models, audio-generation, video-generation, audio-visual, multimodal]
aliases: [VO3, joint audio-visual model, audio-visual generation]
relationships:
  - target: '[[concepts/modality-gap]]'
    type: related_to
  - target: '[[concepts/model-progression-framework]]'
    type: contextual
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: The first joint audio-visual generation model, enabling synchronized audio and video output from a single unified architecture.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# VO3

**VO3** is the first joint audio-visual generation model, presented at the AI Engineer World's Fair 2026. It generates synchronized audio and video from a single unified architecture, rather than stitching together separately generated modalities. ^[extracted]

## The Breakthrough

According to the speaker (Shane, Google DeepMind Omni team): ^[extracted]

> It was the first model that did joint audio-visual generation... there were other models that did kind of agentic hacking under the hood, but this one actually unified the modalities.

VO3's key advance was generating audio and video together as a unified output, rather than generating video first and adding audio as a post-process. This was demonstrated with the memorable "slicing of gold bars" visual. ^[extracted]

## The Audio-Video Unification Challenge

A significant theme in the presentation was the question of whether audio and video should be treated as separate modalities: ^[extracted]

> It's very interesting if a modality that we perceive, which is audio is different than video, actually, to machines is exactly the same. Like, they see no difference. I think on a technical level, there are some differences, but they're relatively minor.

This suggests that the **modality gap** between audio and video may be smaller than humans intuitively expect — both can be represented as temporal signal sequences that a unified model can process. ^[inferred]

## Industry Context

VO3 was discussed alongside a broader argument that **understanding and generation of video should be unified** but currently are not at SOTA — a key open challenge in media AI. ^[extracted]

## Audio Evaluation Challenges

Shane discussed how evaluating media model quality — especially audio — remains a fundamentally unsolved problem. While text-based evaluation has mature autoraters and benchmarks, audio and video evaluation is "much more nascent for media models." ^[extracted]

### Reliance on Human Judgment

The team relies heavily on human evaluators because automated evaluation of aesthetics is extremely difficult: "It's very hard to get autoraters to evaluate things in a video, including especially things like aesthetics." For model decisions between two close checkpoints, the team resorts to side-by-side human comparison: "We literally make decisions based on looking at outputs side by side. Sometimes in a room where there's ten of us and we're just looking at videos side by side — do you prefer this or do you prefer that?" ^[extracted]

### Early Access Programs

To catch issues that automated evals and even structured human evals miss, the team runs early access programs with trusted testers who use the models in real workflows. These programs surface subtle regressions — like the model putting wedding rings on every hand (a reward hacking artifact), or ruining grass texture quality between checkpoint updates. "We could also have a model that is really well on some slice of human evals but then it really breaks the workflow for somebody. So this is why we do early access programs and we try to get feedback and then incorporate it before we release." ^[extracted]

### The Complexity Problem

As models gain more capabilities — free-form video editing, joint audio generation — the evaluation surface expands dramatically. "Every time we have a new model, we want to jam in more capabilities and so we have more evals that we have to run. The more capabilities you have, the harder evaluation becomes." Shane noted that capabilities like video editing are "almost AGI-complete" in their evaluation complexity because the output space is unbounded — "you can do anything." ^[extracted]

## Related

- [[concepts/modality-gap|Modality Gap]] — the gap between understanding and generation that needs unification
- [[concepts/model-progression-framework|Model Progression Framework]] — the progression from pre-training through instruction tuning to reasoning and test-time scaling
- [[concepts/vision-language-models|Vision-Language Models]] — the broader category of multimodal vision models
- [[concepts/voice-agents|Voice Agents]] — audio-focused AI systems

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
