---
type: "concept"
title: "Certificate Generation"
created: [datetime.date(2026, 6, 30)]
updated: [datetime.date(2026, 6, 30)]
sources: ["[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]"]
tags:
  - security
  - tls
---
## Description
Certificate generation is a foundational security step during Kubernetes cluster bootstrapping, essential for establishing mutual TLS (mTLS) authentication and encrypted communication between control plane components. The process begins by creating a self-signed root Certificate Authority (CA), which acts as the central trusted authority for issuing and signing other certificates. Following this, unique, signed TLS certificates are generated for each component (API server, etcd, controller-manager, scheduler, and kubelets), with server certificates requiring configuration files containing Subject Alternative Names (SANs). All generated keys and certificates are stored in the `/etc/kubernetes/pki` directory, enabling encrypted and authenticated traffic between components and creating the trust hierarchy required for all internal API communication. A separate, dedicated CA is often used for etcd to secure its communication independently. Mastering both the automated process via `kubeadm` and manual certificate management is crucial for understanding and troubleshooting Kubernetes cluster security.

## Related Concepts
- [[concepts/tls-certificates]]
- [[concepts/certificate-authority-ca]]
- [[concepts/certificate-signing-request]]
- [[concepts/self-signed-certificates]]
- [[concepts/subject-alternative-name-san]]
- [[concepts/mutual-tls-mtls]]
- [[concepts/public-key-infrastructure]]
- [[concepts/trust-root]]
- [[concepts/manual-certificate-management]]
- [[concepts/kubeconfig]]
- [[tls-encryption]]
- [[concepts/static-pods]]
- [[concepts/kubeadm-init]]


## Related Entities
- [[entities/kubeadm]]
- [[entities/etcd]]
- [[entities/kubelet]]
- [[entities/certificate-authority]]
- [[entities/openssl]]


## Mentions in Source
> **Source: bootstrapping-control-place_e4e0df**
> - A self-signed Certificate Authority (CA) plus individual certs for each component (API Server, etcd, controller-manager, scheduler) are created and placed in `/etc/kubernetes/pki`.

> **Source: how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507**
> - **Step 1: Create a Self-Signed CA** - Generate a self-signed CA certificate to act as the central authority for issuing and signing other certificates.
> - **Step 2: Issue Certificates for Each Component** - Generate and sign certificates for components like the API server, etcd, scheduler, controller manager, and kubelet.