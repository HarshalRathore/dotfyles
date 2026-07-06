---
summary: This source provides a comprehensive guide to securing a [[concepts/host-security]] cluster across multiple layers. It begins with foundational host security, emphasizi...
type: source
title: Kubernetes Security Overview - Summary
created: '2026-06-30'
updated: '2026-06-30'
lifecycle: draft
base_confidence: 0.7
source_file: ''
tags:
- Authentication (Kubernetes)
- Authorization (Kubernetes)
- RBAC
- ABAC
- Network Policies
- TLS Encryption
- Host Security
- Node Authorizer
- Webhooks (authorization)
- ClusterRole
- ClusterRoleBinding
- Role (KRBAC)
- RoleBinding
- ServiceAccounts
- X.509 client certificates
- LDAP
- Kerberos
- OIDC
- Human vs Machine Users
- Static Password File
- Static Token File
aliases:
- K8s Security Overview
- Securing Kubernetes Guide
contentHash: d7d-febfd890
generation_complete: true
category: sources
sources: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
# Kubernetes Security Overview - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source provides a comprehensive guide to securing a [[concepts/host-security]] cluster across multiple layers. It begins with foundational host security, emphasizing SSH hardening. The core focus is on securing the API server—the control plane gateway—through robust [[concepts/authentication-kubernetes]] and [[concepts/authorization-kubernetes]]. Authentication options range from deprecated static files to modern standards like [[concepts/x-509-client-certificates]] and integration with external providers such as [[concepts/ldap]], [[concepts/kerberos]], and [[concepts/oidc]]. Authorization is primarily managed via [[concepts/rbac]], which uses resources like [[concepts/role-rbac]] and [[concepts/rolebinding]]. The guide also covers securing internal communication between components like the kube-apiserver and [[entities/etcd]] using [[concepts/tls-encryption]], and restricting pod-to-pod communication with [[concepts/network-policies]]. It distinguishes between human users and machine users, the latter managed via [[concepts/serviceaccounts]].

## Key Entities
- [[entities/kubernetes]]: The central container orchestration platform where all these security practices are applied.
- [[entities/etcd]]: A critical data store for the cluster, with secured communication to the API server.

## Key Concepts
- [[concepts/authentication-kubernetes]]: The process of verifying who is accessing the cluster.
- [[concepts/authorization-kubernetes]]: The process of determining what an authenticated user can do.
- [[concepts/rbac]]: The most common authorization method, using Roles and Bindings.
- [[concepts/network-policies]]: Essential for defining pod-to-pod communication rules.
- [[concepts/tls-encryption]]: A standard for encrypting all internal control plane traffic.
- [[concepts/host-security]]: The foundational layer of securing the underlying node infrastructure.

## Main Points
- **Multi-Layered Defense:** Security in Kubernetes must address the host, the control plane (API server), internal component communication, and network traffic between pods.
- **API Server as the Gateway:** Securing access to the kube-apiserver via strong [[concepts/authentication-kubernetes]] and granular [[concepts/authorization-kubernetes]] (especially [[concepts/rbac]]) is paramount.
- **Default Network Permissiveness:** Pod-to-pod communication is unrestricted by default; explicit [[concepts/network-policies]] are required to enforce micro-segmentation.
- **Encryption in Transit:** All critical control plane traffic, such as between the API server and [[entities/etcd]], must be protected with [[concepts/tls-encryption]].