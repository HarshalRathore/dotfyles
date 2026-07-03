---
title: "Indeed"
category: entities
tags: [company, job-platform, recommendation-systems, recsys, llm]
aliases: [Indeed.com]
sources:
  - "https://www.youtube.com/watch?v=2vlCqD6igVA"
summary: "Job search and recruitment platform whose LLM distillation pipeline for filtering bad job recommendations demonstrated that recommendation quality matters more than quantity."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Indeed

A global job search and recruitment platform. Known for a detailed published case study on using LLMs to filter bad job recommendations, presented in Eugene Yan's REXIS keynote at AI Engineer World's Fair 2025. ^[extracted]

## LLM Distillation Pipeline

Indeed published a systematic case study on improving job recommendation quality:

- **Problem**: bad job recommendations via email caused users to unsubscribe (nearly impossible to re-engage)
- **Explicit negative feedback** (thumbs up/down) was sparse; **implicit feedback** was imprecise (not acting on a recommendation could mean disliking it, wrong timing, or personal reasons)
- **Evaluation first**: domain experts labeled job recommendation/user pairs for ground truth

**LLM journey**:
1. Mistral/Llama 2: poor performance, couldn't attend to resume + job description details
2. GPT-4: 90% precision and recall, but 22s latency and costly
3. GPT-3.5: poor precision (63%) — would incorrectly filter out 37% of good recommendations
4. Fine-tuned GPT-3.5: achieved target precision at 1/4 GPT-4's cost and latency (6.7s)
5. Distilled lightweight classifier: 0.86 AUCROC, <200ms latency

**Business results**: 20% reduction in bad recommendations, 4% increase in application rate, 5% decrease in unsubscribe rate. ^[extracted]

## Related

- [[concepts/llm-data-augmentation-recsys]] — LLM-based data augmentation for RecSys
- [[concepts/quality-vs-quantity-recommendations]] — Quality-over-quantity finding demonstrated by Indeed
- [[concepts/cold-start-recommendation]] — Related RecSys challenge
- [[references/improving-recsys-search-llms-eugene-yan]] — Source talk

## Sources

- [[references/improving-recsys-search-llms-eugene-yan|Recsys Keynote: Improving Recommendation Systems & Search in the Age of LLMs]]
