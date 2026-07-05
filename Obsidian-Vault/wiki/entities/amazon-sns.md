---
title: Amazon SNS
category: entities
tags: [aws, messaging, push-notifications, event-notifications, enterprise-ai]
summary: "Amazon Simple Notification Service — a fully managed pub/sub messaging service. Used in Randall Hunt's sports analytics architecture to send push notifications when AI-detected events occur."
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/aws]]"
    type: implements
  - target: "[[concepts/multimodal-video-search]]"
    type: related_to
---

**Amazon Simple Notification Service (SNS)** is a fully managed pub/sub messaging service from AWS. It enables event-driven architectures by delivering messages to subscribers through multiple protocols (HTTP, email, SMS, Lambda, etc.).

## Use in Sports Analytics Architecture

In **[[entities/randall-hunt|Randall Hunt]]**'s demonstration of a real-time sports analytics system:

1. Sports footage is processed in real-time and batch
2. AI models detect events (e.g., three-pointers, specific plays)
3. Detected events are stored in a database
4. **Amazon SNS** sends push notifications to end users about the detected events

SNS serves as the delivery mechanism for AI-generated events to end users, completing the real-time analytics pipeline. ^[extracted]

## Capabilities

- **Pub/sub messaging** — Publish events to topics, subscribers receive notifications
- **Multiple protocols** — HTTP/S, email, SMS, Lambda, SQS, mobile push
- **Fan-out** — Single message delivered to multiple subscribers
- **Filtering** — Subscription-level filtering for relevant message delivery
- **High throughput** — Handles millions of messages per second

## Role in Enterprise AI

SNS is a key component in event-driven AI architectures:

- AI detection → SNS topic → Multiple subscriber actions
- Real-time notifications for AI-detected events
- Decoupling AI processing from notification delivery

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
