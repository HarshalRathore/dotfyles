---
type: concept
title: "Subject Alternative Name (SAN)"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507"
tags:
  - tls
aliases:
  - X.509 SAN extension
---
# Subject Alternative Name (SAN)

## Definition
Subject Alternative Name (SAN) is an X.509 certificate extension that specifies additional hostnames, IP addresses, or other identifiers for which a digital certificate is considered valid, beyond the primary Common Name (CN). It allows a single certificate to secure multiple distinct endpoints.

## Key Characteristics
- Defined as an extension within the X.509 public key certificate standard.
- Enables a single TLS certificate to be valid for multiple DNS names, IP addresses, email addresses, or other identifiers.
- Configured during certificate creation using tools like OpenSSL, often via a configuration file section (e.g., `[alt_names]`).
- In Kubernetes, it is essential for the API server certificate to ensure accessibility via various service DNS names (like `kubernetes`, `kubernetes.default`) and internal ClusterIP addresses.
- Proper configuration is critical for client certificate validation; mismatches cause secure connection failures.

## Applications
- **Kubernetes API Server:** The API server certificate must include SANs for all DNS names and IP addresses through which clients will access it (e.g., `kubernetes`, `kubernetes.default`, `kubernetes.default.svc`, and the API server's ClusterIP). This ensures secure communication for components like `kubectl`, `kubelet`, and the controller manager.
- **Multi-Service Certificates:** Securing a single web server that hosts multiple distinct domains (virtual hosts) with one certificate.
- **Microservices and Service Meshes:** Certificates used by services that are reachable via multiple internal DNS names or service mesh endpoints.
- **Email Security (S/MIME):** Certificates can include email addresses in the SAN field for secure email communication.

## Related Concepts
- [[concepts/tls-certificates]]
- [[concepts/certificate-signing-request]]
- kubernetes-api-server

## Related Entities

## Mentions in Source
- subjectAltName = @alt_names — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507
- DNS.1 = kubernetes
DNS.2 = kubernetes.default
DNS.3 = kubernetes.default.svc
IP.1  = 10.96.0.1    # API server ClusterIP — how-tls-certificates-work-in-kubernetes-and-manual-cluster-setup_e2b507