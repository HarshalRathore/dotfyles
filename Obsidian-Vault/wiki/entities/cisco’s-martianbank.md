---
type: entity
title: "Cisco’s MartianBank"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/microservices-demo-projects_ac9b1f]]"
tags:
  - project
aliases:
  - Cisco MartianBank
---
# Cisco’s MartianBank

## Basic Information
- Type: project
- Source: microservices-demo-projects_ac9b1f

## Description
Cisco’s MartianBank is an open-source demo project that simulates a banking application to showcase a microservices architecture. The project's frontend consists of a React UI and an NGINX reverse proxy, which route traffic to six backend microservices. These services are developed in two technology stacks: customer-auth and atm-locator are built in Node.js, while accounts, transactions, loans, and dashboard are built using Python/Flask. The entire application is designed for containerized deployment, with all components provided as Docker images. It supports easy orchestration via Helm charts for [[concepts/authentication-kubernetes]] and docker-compose configurations for standalone [[concepts/bridge-network-in-docker]] environments. The project serves as a mid-sized example for practicing microservices deployment, monitoring with tools like Prometheus/Grafana, and configuring deployment patterns.

## Related Entities
- google-s-online-boutique|Google’s Online Boutique]]
- weaveworks-s-sock-shop|Weaveworks’ Sock Shop]]
- microsoft-s-eshop-reference-application|Microsoft’s eShop Reference Application]]
- [[entities/docker]]
- docker-compose
- kubernetes

## Related Concepts
- Helm-based configurable deployments
- Docker Compose

## Mentions in Source
- "Cisco’s **MartianBank** is another good mid-sized example (6 backend services + UI). MartianBank simulates a banking app: the React UI and NGINX reverse proxy sit in front of six microservices (customer-auth, atm-locator in Node.js; accounts, transactions, loans, dashboard in Python/Flask)." — microservices-demo-projects_ac9b1f