---
type: concept
title: Certificate Authority (CA)
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]'
tags:
- tls
aliases:
- Cluster CA
- Root CA
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Certificate Authority (CA)
---
# Certificate Authority (CA)

## Definition
A Certificate Authority (CA) is a trusted entity that issues digital certificates to establish trust in a network or system. In the context of a Public Key Infrastructure (PKI), the CA acts as a root of trust, validating the identity of entities (like servers, clients, or users) and signing their public keys within certificates. In Kubernetes, the cluster CA serves as the foundational trust anchor for all components, enabling secure mutual TLS (mTLS) communication.

## Key Characteristics
- **Trust Anchor**: The CA is the root of the trust chain. Its self-signed certificate is installed on all nodes and components to validate other certificates.
- **Certificate Issuance**: It signs Certificate Signing Requests (CSRs) to issue digital certificates for cluster components (e.g., API server, kubelet, etcd).
- **Hierarchical Model**: Creates a chain of trust where the CA's root certificate signs component certificates, which in turn can sign other certificates.
- **Revocation Authority**: Can revoke compromised certificates (via mechanisms like Certificate Revocation Lists - CRLs).
- **Identity Validation**: Verifies the identity of the requester before issuing a certificate.
- **Critical for mTLS**: Enables mutual authentication where both client and server verify each other's identity using CA-signed certificates.


## Applications
- **Kubernetes Cluster Security**: Forms the backbone of secure communication between the control plane components (API server, etcd, scheduler, controller manager) and worker nodes (kubelet, kube-proxy).
- **TLS/SSL for Web Services**: Issues public certificates for websites to enable HTTPS, establishing trust with end-users via browser trust stores.
- **Internal Service Mesh**: In service meshes (like Istio), a private CA issues certificates to workload identities for automatic mTLS between microservices.
- **Client Authentication**: Issues certificates to users or services for API access authentication (e.g., `kubectl` uses a client certificate signed by the cluster CA).
- **Code Signing**: Issues certificates to developers to sign software packages, verifying the publisher's identity and code integrity.


## Related Concepts
- [[concepts/tls-certificates]]
- [[concepts/self-signed-certificates]]
- [[concepts/trust]]
- [[concepts/public-key-infrastructure]]
- [[concepts/mutual-tls-mtls]]
- [[concepts/certificate-signing-request]]
- [[concepts/certificate-generation]]
- [[concepts/trust-root]]
- [[concepts/digital-signature]]
- [[concepts/manual-certificate-management]]
- [[concepts/subject-alternative-name-san]]


## Related Entities
- [[entities/certificate-authority]]
- [[entities/kubernetes]]
- [[entities/openssl]]
- [[entities/kubeadm]]
- [[entities/kubelet]]
- [[entities/etcd]]


## Mentions in Source
- A **Certificate Authority (CA)** is created to serve as the trusted entity for signing all certificates in the cluster. — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507
- Generate CA key & self-signed cert: — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507