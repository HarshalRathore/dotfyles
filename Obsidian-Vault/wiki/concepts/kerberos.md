---
type: concept
title: "Kerberos"
visibility: internal
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/🔐-security-in-kubernetes_0a37d1]]"
tags:
  - auth
aliases:
  - Kerberos Protocol
  - Kerberos Network Authentication
---
# Kerberos

## Definition
Kerberos is a network authentication protocol that provides secure authentication for users and services in a distributed environment. It uses secret-key cryptography and a system of tickets to allow parties to prove their identity over an insecure network, preventing passwords or credentials from being transmitted in plaintext.

## Key Characteristics
- Employs secret-key (symmetric) cryptography for strong, mutual authentication.
- Uses a trusted third-party service, the Key Distribution Center (KDC), to issue time-limited tickets.
- Tickets are used to prove identity, reducing the risk of password interception and replay attacks.
- Provides a single sign-on (SSO) mechanism for accessing multiple services.
- Centralizes authentication, making it ideal for enterprise environments.

## Applications
- **Kubernetes Authentication**: Integrated with the `kube-apiserver` as an external identity provider for user authentication, offering an alternative to methods like X.509 certificates, OIDC, or webhooks.
- **Enterprise Single Sign-On (SSO)**: Used in corporate networks to allow users to authenticate once and access various services (e.g., file servers, email, intranet portals) without re-entering credentials.
- **Cross-Platform Security**: Provides a standardized authentication framework that works across different operating systems and applications.
- **Securing Service-to-Service Communication**: Used within clusters or distributed systems to ensure that services can trust each other's identities.

## Related Concepts
- [[concepts/authentication-kubernetes]]
- [[concepts/ldap]]
- [[x-509-client-certificates]]
- [[tls-encryption]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Integration with external identity providers: ... Kerberos" — 🔐-security-in-kubernetes_0a37d1
- "Options include: ... Kerberos" — 🔐-security-in-kubernetes_0a37d1