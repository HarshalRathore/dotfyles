---
title: Training Cost Efficiency
category: concepts
tags:
- training-cost
- efficiency
- llm
- compute
- aief2025
aliases:
- training cost
- model training cost
- training efficiency
sources:
- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
summary: The trend of dramatically decreasing LLM training costs, exemplified by DeepSeek V3's $5.5M training budget for a 685B parameter model — far below the expected $55M–$550M range — suggesting effecti...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/model-size-scaling|Model Size Scaling]]'
  type: relates_to
- target: '[[concepts/compute-bound-vs-memory-bound|Compute-Bound vs Memory-Bound]]'
  type: relates_to
---

# Training Cost Efficiency

**Training cost efficiency** refers to the trend of producing effective large language models at dramatically lower training costs than industry expectations. The DeepSeek V3 release in December 2024 was a landmark example, with a 685-billion-parameter model trained for approximately $5.5 million — far below the expected range of $55–550 million.

## The DeepSeek V3 Case

Simon Willison highlighted that the paper accompanying DeepSeek V3 stated training cost was about **$5.5 million**. ^[extracted]

This was notable because:

- A model of this size (685B parameters) would normally be expected to cost 10–100× more
- The stated cost was potentially exaggerated (Willison noted "they may have been exaggerating, who knows?")
- Even if exaggerated, the actual cost was still far below conventional expectations
- It suggested that very effective models could be trained for way less money than the industry assumed

## GPU Restrictions and Workarounds

DeepSeek's achievements were particularly significant because they occurred despite US trading restrictions on the best GPUs. Willison noted: ^[extracted]

> "The Chinese labs were not supposed to be able to do this. We have trading restrictions on the best GPUs to stop them getting their hands on them. Turns out they'd figured out the tricks. They'd figured out the efficiencies."

This suggested that training efficiency improvements (algorithmic tricks, data quality, architecture choices) could partially compensate for hardware limitations. ^[inferred]

## Pricing Trends in Inference

Willison also documented a parallel trend in inference pricing: ^[extracted]

- GPT-3.5 DaVinci (the best available model three years ago): $60 per million tokens
- GPT-4.5 (released February 2025): $75 per million input tokens — only ~25% more expensive despite being a significantly newer model
- GPT-4o Nano (OpenAI's cheapest model): ~$0.10 per million tokens
- Overall: good model prices have crashed by a factor of ~500× over three years

This pricing compression extends the training-cost narrative to the inference side, making capable models accessible at dramatically lower costs.

## Implications

The training cost efficiency trend has several implications: ^[inferred]

1. **Lower barrier to entry** — More organizations can train competitive models
2. **Reduced compute advantage** — Hardware moats are narrowing
3. **Algorithmic progress matters** — Training efficiency improvements are as important as scale
4. **Geopolitical impact** — GPU restrictions may be less effective than assumed
5. **Open-weight models become more viable** — Lower training costs make open-weight releases more feasible

## Related

- [[entities/deepseek|DeepSeek]] — V3 as the primary case study
- [[concepts/open-weight-models|Open Weight Models]] — lower costs enable open releases
- [[concepts/model-size-scaling|Model Size Scaling]] — larger models at lower costs
- [[concepts/local-models|Local Models]] — cheaper training → more accessible models

## Sources

- AIEF2025 - 2025 in LLMs so far, illustrated by Pelicans on Bicycles — Simon Willison - https://www.youtube.com/watch?v=YpY83-kA7Bo
