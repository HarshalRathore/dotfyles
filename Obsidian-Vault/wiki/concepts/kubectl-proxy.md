---
type: concept
title: "kubectl proxy"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb"
tags:
  - deployment
aliases:
  - Kubernetes API Proxy
  - local kubectl proxy
---
# kubectl proxy

## Definition
`kubectl proxy` is a command-line utility within the `kubectl` tool that runs a local HTTP proxy. This proxy provides a simple, secure method for developers and administrators to interact directly with the Kubernetes API server. It automatically handles authentication using the credentials from the user's kubeconfig file, eliminating the need to manually manage TLS certificates for API requests.

## Key Characteristics
- **Secure Access**: Establishes a secure connection to the Kubernetes API server, leveraging the user's existing kubeconfig credentials.
- **Local Proxy Server**: Runs a lightweight HTTP proxy on the local machine, typically listening at `http://localhost:8001/`.
- **Automatic Authentication**: Simplifies the authentication process by transparently handling bearer tokens or client certificates defined in the kubeconfig.
- **Development and Debugging Aid**: Provides an easy way for developers to explore and test API endpoints directly using standard HTTP tools (like `curl` or browser access).
- **Session-Based**: The proxy runs in the foreground for the duration of the session, forwarding requests until the process is terminated.

## Applications
- **API Exploration**: Quickly browsing and querying the Kubernetes API (e.g., `http://localhost:8001/api/v1/namespaces`) to understand cluster state.
- **Debugging and Troubleshooting**: Investigating API responses and checking the behavior of controllers or operators from a client perspective.
- **Connecting Client Libraries**: Acting as a local endpoint for applications or scripts that need to communicate with the Kubernetes API without configuring authentication directly.
- **Development Workflows**: Facilitating development of Kubernetes-native applications or tools that interact with the API server.

## Related Concepts
- [[concepts/api-groups]]
- Kubernetes API Server

## Related Entities
- [[entities/kubectl]]
- [[entities/kubernetes]]

## Mentions in Source
- "Using kubectl proxy: Command: kubectl proxy" — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb
- "Runs a local HTTP proxy at http://localhost:8001/" — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb