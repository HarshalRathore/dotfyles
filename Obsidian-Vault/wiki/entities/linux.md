---
type: entity
title: Linux
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/miscellaneous_1e6927]]'
tags:
- product
aliases:
- GNU/Linux
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Linux
---
# Linux

## Basic Information
- Type: Product
- Source: miscellaneous_1e6927

## Description
Linux is a free and open-source Unix-like operating system kernel first released by Linus Torvalds in 1991. The Linux kernel is the core component of many operating system distributions (commonly called GNU/Linux) and provides the foundational platform for modern cloud and container technologies. It implements fundamental isolation mechanisms, such as namespaces and cgroups, which are essential for container runtimes like Docker and Kubernetes. Its robust networking stack includes components like `iptables` for packet filtering and network address translation, enabling complex network configurations for container orchestration.

## Related Entities
- [[entities/docker]]
- kubernetes
- [[entities/containerd]]

## Related Concepts
- [[concepts/linux-network-namespace]]
- [[concepts/linux-namespace-types]]

## Mentions in Source
- "A network namespace is a separate instance of the Linux network stack (interfaces, routing table, iptables)." — miscellaneous_1e6927
- "Since kernel 5.6 there are **eight** namespaces" — miscellaneous_1e6927