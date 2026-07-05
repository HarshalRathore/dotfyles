---
title: Grafana
tags: [company, observability, visualization, dashboards, metrics]
sources:
  - "[[sources/watchv=l6_nigiexzq]]"
summary: Open-source observability and visualization platform. Mentioned by Anish Agarwal as one of the major dashboard tools engineers must sift through during dashboard dumpster diving during production incidents.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/dashboard-dumpster-diving]]"
    type: related_to
  - target: "[[concepts/production-troubleshooting]]"
    type: related_to
---

# Grafana

Grafana is an open-source observability and visualization platform for querying, visualizing, and alerting on metrics, logs, and traces. It is one of the most widely deployed observability tools in production environments.

## Role in Troubleshooting

[[entities/anish-agarwal|Anish Agarwal]] mentions Grafana as one of the major dashboard tools alongside Datadog, Splunk, Elastic, and Sentry that form the status quo troubleshooting ecosystem. During production incidents, engineers must perform **dashboard dumpster diving** across these tools to find the data that explains the failure.

## Related

- [[concepts/dashboard-dumpster-diving]] — The troubleshooting workflow Grafana is part of
- [[concepts/observability-tool-landscape]] — The broader observability ecosystem
- [[concepts/production-troubleshooting]] — The process Grafana supports

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
