---
type: concept
title: "Client Certificate"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]"
tags:
  - tls
aliases:
  - Client Certificates
  - X.509 Client Certificate
---
# Client Certificate

## Definition
A client certificate is a digital credential used by a client (such as kubelet, a scheduler, or an administrator's kubectl) to authenticate its identity to a server (like the Kubernetes API server). In Kubernetes, it is a core component of the mutual TLS (mTLS) authentication mechanism, ensuring secure communication within the cluster's control plane.

## Key Characteristics
- Contains the client's identity, primarily in the Common Name (CN) and Organizational Unit (OU) fields, which are used by RBAC policies for authorization.
- Must be signed by a trusted Certificate Authority (CA) recognized by the server it is connecting to (e.g., the cluster CA).
- Is required for every component (like kubelet, controller-manager, scheduler) that communicates with the Kubernetes API server.
- Enables the server to verify the client's identity before allowing access and performing actions.
- Is typically stored in a kubeconfig file used by tools like `kubectl` or as a static pod configuration for control plane components.


## Applications
- **Kubernetes Component Authentication:** Used by kubelet, kube-scheduler, and kube-controller-manager to securely authenticate with the API server during cluster operations.
- **Administrator Access:** Essential for administrators to use `kubectl` to connect to, manage, and issue commands to a Kubernetes cluster.
- **Securing Control Plane Communication:** Forms the basis of mutual TLS (mTLS) between all internal control plane components, preventing unauthorized access and impersonation.
- **Automated Cluster Bootstrap:** Used during processes like `kubeadm init` to generate and distribute certificates for new control plane nodes.


## Related Concepts
- [[concepts/certificate-signing-request]]
- [[concepts/tls-certificates]]
- [[concepts/mutual-tls-mtls]]
- [[concepts/kubeconfig]]
- [[concepts/public-key-infrastructure]]
- [[concepts/trust]]


## Related Entities
- [[entities/kubectl]]
- [[entities/kubelet]]
- [[entities/kubernetes]]
- [[entities/certificate-authority]]


## Mentions in Source
- Client certificates (for authenticating to API Server): — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507
- Administrators must have a client certificate signed by the CA to interact with the API server via `kubectl`. — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507