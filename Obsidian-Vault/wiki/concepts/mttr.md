---
title: MTTR (Mean Time to Resolution)
tags:
- metric
- reliability
- observability
- incident-response
- operations
aliases:
- mttr
- mean-time-to-resolution
sources:
- 'https://www.youtube.com/watch?v=l6_nigiexzq'
summary: Mean Time to Resolution — the average time from incident detection to resolution. Key metric for production troubleshooting effectiveness. Traversal.ai achieved ~40% MTTR reduction at DigitalOcean...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/production-troubleshooting]]'
  type: related_to
- target: '[[entities/traversal-ai]]'
  type: related_to
- target: '[[entities/digitalocean]]'
  type: related_to
- target: '[[concepts/mttre]]'
  type: related_to
category: concepts
---

# MTTR (Mean Time to Resolution)

**MTTR** (Mean Time to Resolution) is the average time from when a production incident is detected to when it is fully resolved. It is the primary metric for measuring production troubleshooting effectiveness.

## Importance

MTTR directly measures the cost of production incidents:

- Every minute of downtime costs engineering time and money
- For cloud providers like DigitalOcean, each minute means customer impact
- Reducing MTTR frees engineers to focus on creative work rather than on-call

## Traversal Case Study

[[entities/traversal-ai|Traversal.ai]] achieved a **~40% reduction in MTTR** for [[entities/digitalocean|DigitalOcean]] through autonomous incident investigation:

- **Pre-Traversal**: Hours of collective engineer effort searching dashboards and logs
- **Post-Traversal**: ~5 minutes for Traversal's AI to complete investigation and return findings
- Each minute saved removes pain for on-call engineers and saves thousands of dollars

## Related Metrics

- [[concepts/mttre|MT-T-R-E]] — Mean Time to Resolve Explainable Errors (a variant focused on AI-specific failures)
- [[concepts/production-troubleshooting|Production Troubleshooting]] — the broader process MTTR measures

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
