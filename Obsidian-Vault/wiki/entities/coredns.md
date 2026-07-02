---
type: entity
title: "CoreDNS"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "bootstrapping-control-place_e4e0df"
tags:
  - product
aliases:
  - "DNS Add-on"
---
# CoreDNS

## Basic Information
- Type: product
- Source: bootstrapping-control-place_e4e0df

## Description
CoreDNS is a flexible and extensible DNS server that serves as the standard for in-cluster service discovery in Kubernetes. It is deployed as a critical add-on, running as a regular Pod in the `kube-system` namespace immediately after control plane initialization. Its primary function is to resolve Kubernetes service names to their corresponding cluster IP addresses, enabling essential communication between Pods. The operational status of CoreDNS is a key indicator of a healthy and functional cluster. It is typically installed alongside other fundamental components like [[entities/kubeadm]] and kube-proxy during the cluster bootstrapping process.

## Related Entities
- kube-proxy
- [[entities/kubeadm]]
- kubernetes

## Related Concepts
- [[concepts/pod-network]]
- [[concepts/static-pods]]
- [[concepts/kubeadm-init]]
- [[concepts/bootstrapping]]

## Mentions in Source
- "Immediately after, kubeadm deploys two critical add-ons as regular Kubernetes Pods in kube-system: kube-proxy on every node (via a DaemonSet), CoreDNS for in-cluster name resolution" — bootstrapping-control-place_e4e0df