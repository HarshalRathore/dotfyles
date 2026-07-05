---
title: Datadog
tags: [company, observability, monitoring, dashboards, apm]
sources:
  - "[[sources/watchv=l6_nigiexzq]]"
  - "[[sources/watchv=lcqat4ip_le]]"
summary: Cloud-scale observability platform providing monitoring, analytics, and real-time dashboards. Mentioned in both production troubleshooting and MCP observability contexts.
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
  - target: "[[entities/observable.tools]]"
    type: related_to
---

# Datadog

Datadog is a cloud-scale observability and security platform providing monitoring, analytics, and real-time dashboards for infrastructure, applications, logs, and user experiences.

## Role in Troubleshooting

[[entities/anish-agarwal|Anish Agarwal]] mentions Datadog as one of the major dashboard tools alongside Grafana, Splunk, Elastic, and Sentry that form the status quo troubleshooting ecosystem. During production incidents, engineers must perform **dashboard dumpster diving** across these tools to find the data that explains the failure.

## Role in MCP Observability

[[entities/alex-volkov|Alex Volkov]] of [[entities/weights-and-biases|W&B]] cited Datadog as one of the observability providers that is "solving the same problems in isolation" in the [[concepts/mcp-observability|MCP]] space. The [[entities/observable.tools|observable.tools]] manifesto was created to bring together providers including Datadog to agree on common standards. ^[extracted]

## Related

- [[concepts/dashboard-dumpster-diving]] — The troubleshooting workflow Datadog is part of
- [[concepts/observability-tool-landscape]] — The broader observability ecosystem
- [[concepts/production-troubleshooting]] — The process Datadog supports
- [[entities/observable.tools]] — The manifesto for vendor-neutral MCP observability

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
- Video: <https://www.youtube.com/watch?v=Lcqat4iP_lE>
