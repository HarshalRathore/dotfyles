---
type: concept
title: "Ingress"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/main-kubernetes-components_82b036]]"
tags:
  - networking
aliases:
  - Ingress Controller
---
# Ingress

## Definition
Ingress is a Kubernetes resource that manages external HTTP and HTTPS access to services within a cluster. It functions as a reverse proxy and load balancer, routing incoming requests to the appropriate backend services based on predefined rules.

## Key Characteristics
- Manages external access to services running within a Kubernetes cluster, specifically for HTTP/HTTPS traffic.
- Operates as a Layer 7 (application layer) load balancer and reverse proxy.
- Uses rules to route requests based on hostnames (virtual hosts) and/or URL paths.
- Decouples external access topology from internal service networking (like ClusterIP Services).
- Typically implemented by an Ingress Controller (e.g., NGINX, Traefik) which watches for Ingress resources and fulfills the routing rules.
- Often used in conjunction with TLS termination to provide secure external endpoints.

## Applications
- Exposing multiple web applications or microservices under a single cluster IP and domain, routing by path (e.g., `/api` to an API service, `/web` to a frontend service).
- Providing a single entry point (load balancer) for external traffic to a cluster, replacing the need for multiple NodePort or LoadBalancer services.
- Enabling virtual hosting, where multiple domain names point to different services within the same cluster.
- Managing SSL/TLS termination for encrypted traffic, centralizing certificate management.

## Related Concepts
- [[concepts/services]] (Specifically ClusterIP Services, which Ingress routes traffic to)
- Pods (The ultimate destinations of the routed traffic)
- External Services

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Ingress is a Kubernetes resource that manages external HTTP and HTTPS access to services within a cluster." — main-kubernetes-components_82b036
- "It acts as a reverse proxy, routing user requests to the appropriate services using predefined rules." — main-kubernetes-components_82b036