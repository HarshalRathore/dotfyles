---
type: entity
title: OpenSSL
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507]]'
tags:
- product
aliases:
- OpenSSL Toolkit
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: OpenSSL
---
# OpenSSL

## Basic Information
- Type: Product
- Source: how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507

## Description
OpenSSL is a widely used open-source cryptographic software library and toolkit. It provides a robust implementation of the [[concepts/tls-certificates]] protocols and a comprehensive set of cryptographic functions. In the context of Kubernetes, OpenSSL is the primary tool for performing manual [[concepts/certificate-generation]], which is essential for bootstrapping cluster security. It is used to generate private keys, create [[concepts/certificate-signing-request]], and sign certificates for components like the API server and kubelet. By enabling the creation of a trusted chain, OpenSSL ensures secure communication within the cluster. Its commands are fundamental for administrators managing a Kubernetes cluster's Public Key Infrastructure.

## Related Entities
- [[entities/certificate-authority]]
- [[entities/kubeadm]]

## Related Concepts
- [[concepts/certificate-generation]]
- [[concepts/rsa]]
- [[concepts/tls-certificates]]

## Mentions in Source
- "openssl genrsa -out ca.key 2048" — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507
- "openssl req -new -key admin.key -subj "/CN=kube-admin/OU=system:masters" -out admin.csr" — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507