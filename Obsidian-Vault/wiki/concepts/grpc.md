---
type: concept
title: gRPC
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/microservices-demo-projects_ac9b1f]]'
tags:
- networking
aliases:
- gRPC protocol
- Google RPC
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: gRPC
---
# gRPC

## Definition
gRPC is a high-performance, open-source remote procedure call (RPC) framework originally developed by Google. It enables efficient communication between distributed systems by using Protocol Buffers for serialization and HTTP/2 for transport.

## Key Characteristics
- **Language Agnostic:** Allows services written in different programming languages to communicate seamlessly.
- **Efficient Serialization:** Uses Protocol Buffers, a binary format, which is more compact and faster than text-based formats like JSON.
- **Built on HTTP/2:** Supports multiplexing, header compression, and bidirectional streaming over a single TCP connection.
- **Strongly Typed Contracts:** Service interfaces and messages are defined in `.proto` files, generating client and server code automatically.
- **Supports Multiple Communication Patterns:** Includes unary RPC, server streaming, client streaming, and bidirectional streaming.
- **High Performance:** Designed for low latency and high throughput in microservices architectures.

## Applications
- **Microservices Communication:** As a standard inter-service communication protocol in cloud-native architectures, allowing polyglot services to interact.
- **Real-time Systems:** Used for applications requiring real-time data exchange, such as chat, live feeds, or gaming.
- **API Gateway Communication:** Employed in backend-to-backend communication where performance and type safety are critical.
- **Mobile and Web Clients:** Generates client libraries for various platforms to communicate with backend gRPC services.

## Related Concepts
- [[concepts/service-discovery]]
- [[concepts/containerization]]

## Related Entities
- [[entities/google’s-online-boutique]]
- [[entities/cisco’s-martianbank]]

## Mentions in Source
- "Google's Online Boutique (a.k.a. Hipster Shop) is a 10-service e‑commerce demo where each backend is written in a different language (Go, Node.js, Java, C#, Python) and they communicate over gRPC." — microservices-demo-projects_ac9b1f
- "MartianBank services 'communicate via HTTP or gRPC.'" — microservices-demo-projects_ac9b1f