---
summary: "> **Source: Containerd, CRI etc.** > - ' > - '"
type: concept
title: "Applications"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "[[sources/scheduling_f2b3ef]]"
  - "[[sources/containerd-cri-etc_fb87d8]]"

---
## Applications
- **Kubernetes Runtime Compatibility**: Enabled early Kubernetes adopters to leverage their existing Docker Engine installations as the node-level container runtime.
- **Migration Bridge**: Provided a transition period for organizations to move from Docker Engine to CRI-native runtimes such as [[entities/containerd]], which Docker itself uses under the hood.
- **Development and Testing**: Simplified local Kubernetes development setups (e.g., Minikube, kind) by allowing the use of familiar Docker tooling behind the scenes.
- **Historical Reference**: Remains an important concept for understanding Kubernetes architecture evolution and the shift toward OCI-standard container runtimes.

## Related Concepts
- [[concepts/node-bound]]
- [[concepts/container-runtime]]
- [[concepts/oci-specs]]

## Related Entities
- [[entities/docker]]
- [[entities/kubernetes]]
- [[entities/containerd]]
- [[entities/kubelet]]
- [[entities/open-container-initiative-oci]]

## Mentions in Source
- "
  - "dockershim\"
  - " — scheduling_f2b3ef
- "
  - " — scheduling_f2b3ef
> **Source: containerd-cri-etc_fb87d8**
> - "
  - "
> - "
  - "
> - "
  - "
> - "