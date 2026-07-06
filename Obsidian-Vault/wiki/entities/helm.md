---
type: entity
title: Helm
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/microservices-demo-projects_ac9b1f]]'
tags:
- product
aliases:
- Helm charts
- Helm package manager
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Helm
---
# Helm

## Basic Information
- Type: product
- Source: microservices-demo-projects_ac9b1f

## Description
Helm is a package manager and deployment tool for Kubernetes that simplifies the process of defining, installing, and upgrading applications. It uses templated manifests called "charts" to bundle and manage complex Kubernetes resource configurations. Helm charts provide a repeatable and version-controlled way to deploy applications, handling dependencies between different services and resources. The tool is widely used in cloud-native ecosystems to deploy applications like [[entities/google’s-online-boutique]], [[entities/cisco’s-martianbank]], and other microservices demo projects. By packaging related resources together, Helm significantly reduces the complexity and manual effort involved in Kubernetes deployments.

## Related Entities
- Docker Compose
- Kubernetes
- [[entities/google’s-online-boutique]]
- [[entities/cisco’s-martianbank]]

## Related Concepts
- [[concepts/grpc]]
- [[concepts/containerization]]

## Mentions in Source
- "This demo includes a web frontend plus nine backend services (cart, product catalog, currency, payment, shipping, email, checkout, recommendation, ad). It comes with Dockerfiles and Kubernetes manifests/Helm charts to deploy it on Kubernetes (GKE or local clusters) with minimal setup." — microservices-demo-projects_ac9b1f