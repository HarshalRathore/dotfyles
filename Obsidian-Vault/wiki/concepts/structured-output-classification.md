---
title: "Structured Output Classification"
category: concepts
tags:
  - llm-techniques
  - classification
  - structured-outputs
  - tool-calling
  - aief2025
sources:
  - "AIEF2025 - The Billable Hour is Dead; Long Live the Billable Hour — Kevin Madura + Mo Bhasin, Alix Partners - https://www.youtube.com/watch?v=Wv1tAxKYLeE"
relationships:
  - target: "[[concepts/enterprise-ai-productivity-paradox|Enterprise AI Productivity Paradox]]"
    type: related_to
  - target: "[[concepts/ai-first-firm|AI-First Firm]]"
    type: related_to
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Structured Output Classification

Mo Bhasin demonstrated AI-powered categorization at AIEF2025 using structured outputs as an unsupervised learning approach. The use case: classifying entities (companies, products, services) into a predefined taxonomy — specifically the North American Industry Classification System (NAICS) codes, where each code has a description.

The technique combines two LLM capabilities:

1. **Structured outputs:** The LLM returns classification results in a structured format (JSON, typed objects) rather than free text, enabling programmatic consumption and integration into downstream workflows.

2. **Tool calling (web queries):** When the entity being classified is not in the model's training data (e.g., JD Factors, a smaller company), a web query tool call appends real-time information to the classification prompt, grounding the classification in current facts.^[inferred]

This approach democratized text classification at Alix Partners, replacing the old ML pipeline (stemming, stop-word removal, support vector machines, naive Bayes classifiers) with a simpler, more flexible approach. The accuracy gains were significant but required close partnerships with business teams — unsupervised learning is "not unchecked," and human-in-the-loop validation remains essential.

The broader pattern: structured outputs + tool calling enables accurate classification at scale without training data, converting AI skeptics into champions through demonstrated accuracy on real business problems.
