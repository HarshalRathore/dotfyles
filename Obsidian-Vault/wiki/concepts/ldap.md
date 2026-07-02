---
type: concept
title: "LDAP"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "🔐-security-in-kubernetes_0a37d1"
tags:
  - auth
aliases:
  - Lightweight Directory Access Protocol
---
# LDAP

## Definition
LDAP (Lightweight Directory Access Protocol) is a standard, application-layer protocol for accessing and maintaining distributed directory information services over a network. It is used to query and manage directory services (like user databases and organizational information) and serves as a common method for authenticating and authorizing users against a central store.

## Key Characteristics
- Serves as a directory access protocol for reading and updating directory information.
- Commonly used with directory services such as Microsoft Active Directory, OpenLDAP, and other enterprise identity stores.
- Supports authentication (via bind operations) and authorization by querying user attributes and group memberships.
- Provides a structured way to manage distributed directory data in a client-server model.

## Applications
- **Enterprise User Authentication:** Integrates with systems like the Kubernetes `kube-apiserver` to authenticate users against an organization's existing directory, centralizing identity management.
- **Single Sign-On (SSO):** Enables users to authenticate once and gain access to multiple services that trust the LDAP directory.
- **Access Control Management:** Used to define and enforce authorization policies by checking user attributes or group affiliations stored in the directory.
- **Directory Information Management:** Allows querying and updating organizational data, such as user profiles, contact information, and resource locations.

## Related Concepts
- [[concepts/authentication-kubernetes]]
- [[concepts/kerberos]]
- [[concepts/oidc]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- Integration with external identity providers: LDAP — [[concepts/rbac]]
- Options include: ... Integration with external identity providers: LDAP — [[concepts/rbac]]