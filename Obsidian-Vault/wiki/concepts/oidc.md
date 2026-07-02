---
type: concept
title: "OIDC"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "🔐-security-in-kubernetes_0a37d1"
tags:
  - auth
aliases:
  - OIDC
  - OpenID
---
# OIDC

## Definition
OIDC (OpenID Connect) is an authentication layer built on top of the OAuth 2.0 protocol. It allows clients to verify the identity of an end-user based on authentication performed by an authorization server. In Kubernetes, OIDC is a standard method for user authentication, enabling the kube-apiserver to integrate with external identity providers like Google, Azure AD, or Okta to support single sign-on (SSO) capabilities.

## Key Characteristics
- Built as an authentication layer on top of the OAuth 2.0 protocol.
- Relies on an external authorization server to verify user identity.
- Provides standardized support for single sign-on (SSO).
- Integrates seamlessly with modern enterprise identity management systems (e.g., Google, Azure AD, Okta).
- A preferred and scalable method for user authentication in Kubernetes clusters.
- Simplifies integration with various external identity providers.

## Applications
OIDC is primarily used for user authentication within Kubernetes environments. It allows administrators to configure the kube-apiserver to delegate user authentication to trusted external identity providers. This is essential for enterprises needing to enforce consistent access policies, enable single sign-on across services, and manage user identities centrally. It is a core component of securing user access to the Kubernetes API server.

## Related Concepts
- [[concepts/authentication-kubernetes]]
- [[concepts/ldap]]
- [[concepts/serviceaccounts]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Integration with external identity providers: ... OIDC — 🔐-security-in-kubernetes_0a37d1"
- "Options include: ... OIDC — 🔐-security-in-kubernetes_0a37d1"