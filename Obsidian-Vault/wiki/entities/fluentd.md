---
title: "Fluentd"
tags:
  - product
aliases:
  - Unified Logging System
  - fluentd
---
# Fluentd

## Basic Information
- Type: product
- Source: daemonsets_9f31ec

## Description
Fluentd is an open-source data collector designed for unified logging, commonly deployed in Kubernetes clusters as a node-local log collection agent. It is often run as a [[concepts/daemonsets]] to ensure every node in the cluster has a log collector that aggregates logs from various sources and forwards them to backend systems such as Elasticsearch, Kafka, or cloud storage. Fluentd serves as a key example of a [[concepts/node-local-agents]] that requires direct access to each node to function effectively. Its role is critical for observability and debugging in distributed systems, providing a scalable and consistent way to manage logs across multiple nodes in a Kubernetes cluster. Fluentd is closely related to [[entities/fluent-bit]], a lighter-weight alternative, and works alongside monitoring agents like [[entities/prometheus-node-exporter]] to provide comprehensive cluster observability.

## Related Entities
- [[entities/fluent-bit]]
- [[entities/prometheus-node-exporter]]

## Related Concepts
- [[concepts/daemonsets]]
- [[concepts/node-local-agents]]

## Mentions in Source
- "**Log collectors** (e.g., Fluentd, Fluent Bit) or **monitoring agents** (e.g., Prometheus Node Exporter)." — daemonsets_9f31ec