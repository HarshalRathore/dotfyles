---
summary: A Certificate Signing Request (CSR) contains a public key and identity info that a CA signs to issue a valid certificate.
type: concept
title: "Certificate Signing Request"
created:
  - "2026-06-30"
updated:
  - "2026-06-30"
lifecycle: draft
base_confidence: 0.75
sources:
  - "tls-certificates_c8ca8c"
  - "how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507"
tags:
---
## Description
A Certificate Signing Request (CSR) contains the requester's distinguished name (DN) information, such as Common Name (CN), Organization (O), and Country (C), along with the public key that will be embedded in the final digital certificate. It must be generated on the server or system that holds the corresponding private key, which remains secret and is never included in the CSR. The CSR is digitally signed with that private key to prove ownership of the public key. In practical workflows, like within a Kubernetes cluster, components such as the API server, etcd, and kubelet generate CSRs that are then signed by the cluster's Certificate Authority (CA) to create valid certificates, forming a fundamental step in manual certificate generation.

## Related Concepts
- [[concepts/public-key-infrastructure]]
- [[concepts/tls-certificates]]
- [[concepts/asymmetric-encryption]]
- [[concepts/certificate-generation]]
- [[concepts/manual-certificate-management]]
- [[concepts/self-signed-certificates]]


## Related Entities
- [[entities/openssl]]
- [[entities/kubernetes]]
- [[entities/etcd]]
- [[entities/kubelet]]


## Mentions in Source
> **Source: tls-certificates_c8ca8c**
> - "
  - "
> - "
  - "


> **Source: how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507**
> - "
  - "/CN=kube-admin/OU=system:masters"