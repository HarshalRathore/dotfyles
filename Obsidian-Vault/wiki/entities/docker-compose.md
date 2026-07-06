---
type: entity
title: Docker Compose
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/microservices-demo-projects_ac9b1f]]'
tags:
- product
aliases:
- docker-compose
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Docker Compose
---
## Description
Docker Compose is a tool for defining and running multi-container [[entities/docker]] applications using a YAML configuration file. It allows users to specify services, networks, and volumes in a declarative manner, simplifying the management of complex application stacks. For example, it can be used to create a user-defined bridge network named 'k8s_net' to simulate aspects of a Kubernetes-like environment. This setup facilitates inter-container communication within the defined network. By managing the lifecycle of multiple containers, Docker Compose is often used for development, testing, and single-node deployments. In practice, Docker Compose serves as a convenient alternative to Kubernetes manifests for local development and testing before deploying to a cluster. Projects like cisco's-martianbank provide Docker Compose files alongside Helm charts for easy local deployment, and Microsoft's eShop includes Docker Compose files for running its microservices locally.

## Related Entities
- [[entities/docker]]
- Kubernetes
- cisco's-martianbank

## Related Concepts
- [[concepts/user-defined-bridge-network]]

## Mentions in Source
> **Source: miscellaneous_1e6927**
- "When you use a **user-defined bridge network** like in your Compose file (`k8s_net`), Docker runs an embedded DNS server at the subnet's gateway IP (e.g. `172.20.0.1`)."
- "Compose file (`k8s_net`)"

> **Source: microservices-demo-projects_ac9b1f**
- "Cisco's MartianBank is another good mid-sized example (6 backend services + UI). MartianBank simulates a banking app... All components are Dockerized and the project provides Helm charts and Docker Compose for easy deployment."
- "The eShop repo includes Docker Compose, Kubernetes manifests, and even Helm support."