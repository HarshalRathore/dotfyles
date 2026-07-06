---
type: concept
title: kubeconfig
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/bootstrapping-control-place_e4e0df]]'
tags:
- deployment
aliases:
- cluster config
- admin.conf
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: kubeconfig
---
# kubeconfig

## Definition
A kubeconfig is a YAML-formatted configuration file that contains cluster connection details, user credentials, and context information required to authenticate and communicate with a Kubernetes API server. It is the standard method for configuring client tools like `kubectl` to access one or more clusters.

## Key Characteristics
- Stores API server endpoint, CA certificate, and user credentials (certificates or tokens).
- Organizes connections into **clusters**, **users**, and **contexts** (combining cluster and user with an optional namespace).
- Generated for administrative, node, and component-level access during cluster bootstrapping.
- Essential for both human administrators and internal control plane components to securely communicate with the API server.
- By default, the primary admin kubeconfig is placed at `/etc/kubernetes/admin.conf` when using `kubeadm init`.

## Applications
- Configuring `kubectl` on a master or workstation node to manage the cluster with administrative privileges.
- Enabling kubelet, controller-manager, and scheduler to authenticate with the API server.
- Facilitating secure, TLS-encrypted communication from external clients to the cluster API.
- Supporting multi-cluster management by defining multiple contexts within a single file.

## Related Concepts
- [[concepts/kubeadm-init]]
- [[concepts/authentication-kubernetes]]
- [[concepts/tls-encryption]]

## Related Entities
- [[entities/kubectl]]
- [[entities/kubeadm]]

## Mentions in Source
- "Client kubeconfigs for `admin`, `kubelet`, `controller-manager`, and `scheduler` land in `/etc/kubernetes/*.conf`." — bootstrapping-control-place_e4e0df
- "This sets up kubectl with admin privileges against the new control plane." — bootstrapping-control-place_e4e0df