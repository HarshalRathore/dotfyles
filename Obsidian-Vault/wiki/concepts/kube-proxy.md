---
summary: kube-proxy is a fundamental networking component that runs on every node in a Kubernetes cluster, typically deployed as a DaemonSet to ensure one instance per node. It maintains and updates net...
type: concept
title: Kube Proxy
created:
- '2026-06-30'
updated:
- '2026-06-30'
lifecycle: draft
base_confidence: 0.75
sources:
- '[[sources/bootstrapping-control-place_e4e0df]]'
- '[[sources/main-kubernetes-components_82b036]]'
tags: []
category: concepts
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
## Description
kube-proxy is a fundamental networking component that runs on every node in a Kubernetes cluster, typically deployed as a DaemonSet to ensure one instance per node. It maintains and updates network rules (like iptables or IPVS) to implement the Services abstraction, providing stable network endpoints (ClusterIP) for a set of pods. The proxy is responsible for routing traffic, performing Network Address Translation (NAT), and handling load balancing across healthy pod replicas that back a given service. This enables both internal service discovery within the cluster and external access through NodePort or LoadBalancer services. By forwarding requests from services to their backend pods, kube-proxy ensures efficient and reliable communication, which is critical for cluster networking.

## Related Concepts
- [[concepts/pod-network]]
- [[concepts/network-policies]]
- [[concepts/static-pods]]
- [[concepts/nodeport-services]]
- [[concepts/services]]
- Pods

## Related Entities
- [[entities/coredns]]
- [[entities/kubeadm]]
- [[entities/kubernetes]]
- pods
- [[entities/worker-node-1]]
- [[entities/worker-node-2]]

## Mentions in Source
- kube-proxy on every node (via a DaemonSet) — bootstrapping-control-place_e4e0df
- "
  - " — bootstrapping-control-place_e4e0df
> **Source: main-kubernetes-components_82b036**
> - "