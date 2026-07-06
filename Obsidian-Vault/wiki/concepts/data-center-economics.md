---
title: Data Center Economics
category: concepts
tags:
- data-center
- economics
- infrastructure
- ai-infrastructure
- capex
- aief2025
aliases:
- data center economics
- datacenter economics
- dc economics
sources:
- 'https://www.youtube.com/watch?v=m6vbaig1tsm'
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/gpu-marketplace|GPU Marketplace]]'
  type: contradicts
- target: '[[concepts/compute-allocation|Compute Allocation]]'
  type: contradicts
- target: '[[concepts/sustainability-in-ai|Sustainability in AI]]'
  type: related_to
summary: Data Center Economics
---

# Data Center Economics

**Data center economics** refers to the capital-intensive, slow-to-deploy economics of building physical AI infrastructure — the dominant approach to solving the compute shortage that [[entities/jasper-zhang|Dr. Jasper Zhang]] argues is insufficient on its own. ^[extracted]

## The Build-DC Model

The traditional approach to meeting AI compute demand is to build more data centers. This approach faces several structural challenges: ^[extracted]

### Capital Requirements

- **First data center**: $1B+ to build
- **Scale required**: By 2030, demand grows from 55 GW to 219 GW (22% annual growth rate)
- **Time pressure**: McKinsey projects we need to build 4x more data centers in one quarter of the time it took previously

### Infrastructure Bottlenecks

- **Electrical grid**: 7-year waitlist to connect a 100 MW facility in Northern Virginia
- **Supply deficit**: Even on-time delivery leaves a 15+ GW deficit in the US by 2030
- **Energy consumption**: Data centers already consume 4% of total US electricity for GPUs alone

### Environmental Impact

- **CO2 emissions**: Massive annual CO2 output from data center operations
- **Land use**: Significant land consumption for physical infrastructure
- **Sustainability**: The build-more approach is not environmentally sustainable

## The Alternative Thesis

Rather than building more data centers, the alternative is [[concepts/gpu-marketplace|GPU marketplace]] aggregation: ^[extracted]

- 80% of enterprise GPUs sit idle (Deloitte)
- 100+ GPU clouds exist in a fragmented market
- A marketplace aggregation layer solves the matching problem between supply and demand
- 50–75% cost savings through [[concepts/compute-allocation|smart allocation]]

## Related

- [[concepts/gpu-marketplace|GPU Marketplace]] — The alternative approach
- [[concepts/compute-allocation|Compute Allocation]] — Smart distribution vs. capacity building
- [[concepts/gpu-utilization|GPU Utilization]] — The inefficiency the DC model ignores
- [[concepts/sustainability-in-ai|Sustainability in AI]] — Environmental impact
