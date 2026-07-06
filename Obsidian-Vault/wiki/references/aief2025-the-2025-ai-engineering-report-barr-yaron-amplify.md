---
title: The 2025 AI Engineering Report — Barr Yaron, Amplify
category: references
tags:
- aief2025
- survey
- ai-engineering
- state-of-the-field
summary: Barr Yaron presents early findings from the 2025 State of AI Engineering Survey (500 respondents), covering model usage, fine-tuning practices, multimodal gaps, agent adoption, monitoring, and eval...
sources:
- AIEF2025 - The 2025 AI Engineering Report — Barr Yaron, Amplify - https://www.youtube.com/watch?v=mQ7_Zje7WKE
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[misc/ai-engineer-worlds-fair-2025|AI Engineer World''s Fair 2025]]'
  type: related_to
---

# The 2025 AI Engineering Report — Barr Yaron, Amplify

Barr Yaron, investment partner at Amplify, presented early findings from the **2025 State of AI Engineering Survey**, which collected responses from 500 participants at the AI Engineer World's Fair 2025. The survey paints a picture of a broad, technical, and rapidly evolving community.

## Key Findings

**Sample composition:** The largest respondent group identified as engineers (software or AI), though few held the actual title "AI engineer" — reflecting widespread title confusion. Google Trends shows "AI engineering" barely registered before late 2022 (pre-ChatGPT), then spiked. Among software engineers with 10+ years of experience, nearly half have been working with AI for three years or less, and one in ten started in the past year.

**Model usage:** Over half of respondents use LLMs for both internal and external purposes. OpenAI models dominate externally-facing use cases (3 of top 5, half of top 10). Top use cases: code generation, code intelligence, writing assistants, content generation. **Heterogeneity is the real story:** 94% of LLM users employ at least two use cases, 82% use at least three.

**Customization methods:** Beyond few-shot learning, **RAG is the most popular customization approach** at 70%. Fine-tuning prevalence was higher than expected: 40% of fine-tuners use LoRA/QLoRA (parameter-efficient methods), with DPO, reinforcement fine-tuning, and supervised fine-tuning (SFT) also common. Hybrid approaches were frequently mentioned.

**Update velocity:** Over 50% update models at least monthly, 17% weekly. 70% update prompts monthly, 10% daily. Despite this, **31% have no prompt management system** — a notable gap.

**Multimodal production gap:** Image, video, and audio usage all lag text by significant margins. Audio has the highest adoption intent: 37% of non-audio users plan to adopt it, foreshadowing an "audio wave."

**Agents:** LLMs are working well at 80% of workplaces, but fewer than 20% say the same about agents. The survey defined agents as "a system where an LLM controls the core decision making or workflow." Fewer than 10% say they will never use agents; most plan to adopt. Majority of production agents have write access, typically with human-in-the-loop.

**Monitoring & evaluation:** Multi-select question — 60% use standard observability, over 50% rely on offline eval. **Human review remains the most popular evaluation method.** For monitoring own model usage, most rely on internal metrics. **Evaluation topped the list as the number one most painful thing about AI engineering today.**

**Vector databases:** 65% use a dedicated vector database (vs. general-purpose DBs with vector extensions). Among those, 35% self-host, 30% use third-party providers.

**Other findings:** Most respondents think agents should disclose they're AI. Majority believe transformer-based models will remain dominant in 2030. Open source and closed source models expected to converge. Average Gen Z AI girlfriend/boyfriend prediction: 26%.

## Sources

- AIEF2025 - The 2025 AI Engineering Report — Barr Yaron, Amplify - https://www.youtube.com/watch?v=mQ7_Zje7WKE
