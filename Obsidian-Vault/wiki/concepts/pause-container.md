---
type: concept
title: "Pause Container"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "pods_c92b62"
tags:
  - container
aliases:
  - Sandbox container
  - Pause sandbox
---
# Pause Container

## Definition
A pause container is a minimal, lightweight container that Kubernetes injects into every Pod to act as a network sandbox. It initializes and holds the Pod's network namespace and IP address, providing a stable network foundation for all other containers within the Pod.

## Key Characteristics
- Injected by the Kubernetes kubelet into every Pod as a foundational component.
- Runs indefinitely and consumes minimal resources.
- Its primary purpose is to hold the network namespace and Pod IP address "open".
- Ensures the Pod's network identity persists even if application containers crash or restart.
- All other containers in the Pod share the pause container's network namespace, enabling communication via localhost.

## Applications
- **Pod Network Stability:** Provides the core mechanism for maintaining a consistent network namespace and IP address for a Pod's lifecycle.
- **Container Restart Support:** Allows individual application containers to be restarted (by kubelet) without disrupting the Pod's overall network identity or affecting other containers.
- **Sidecar Pattern Foundation:** Enables network-centric sidecar containers to inject functionality (e.g., proxies, log collectors) into the Pod's shared network context.
- **Simplifies Networking Model:** Abstracts the complexity of network namespace management, allowing developers and administrators to focus on application container networking.

## Related Concepts
- pod-networking|Pod networking]]
- [[concepts/linux-network-namespace]]
- [[concepts/sidecar-pattern]]

## Related Entities
- [[entities/pods]]
- [[entities/kubernetes]]

## Mentions in Source
- "Kubernetes injects a **“pause”** container into every Pod. It holds the network namespace and IP “open” even if application containers crash or restart." — pods_c92b62
- "If an app container dies, kubelet restarts it in the **same** namespace/IP; if the _Pod_ is destroyed, a new IP is allocated." — pods_c92b62