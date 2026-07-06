---
type: concept
title: Iptables
created:
- datetime.date(2026
- 6
- 30)
updated:
- datetime.date(2026
- 6
- 30)
sources:
- '[[sources/manual-notes_10b5c5]]'
tags:
- networking
- firewall
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Iptables
---
## Related Concepts
- [[concepts/container-dns-resolution]]
- [[concepts/embedded-dns-server]]
- [[concepts/bridge-network-in-docker]]
- [[concepts/user-defined-bridge-network]]
- [[concepts/linux-network-namespace]]
- [[concepts/nat]]
- [[concepts/firewalld]]
- [[concepts/ufw]]
- [[concepts/security-groups]]
- [[concepts/network-port-configuration]]

## Related Entities
- [[entities/linux]]
- [[entities/docker]]
- [[entities/kubernetes]]
- [[entities/etcd]]
- [[entities/kubeadm]]
- [[entities/kubelet]]

## Mentions in Source
> **Source: miscellaneous_1e6927**
> - Docker configures **iptables** rules in that namespace so that any packet destined for **127.0.0.11:53** is **redirected** to the Docker daemon's embedded DNS process (which actually listens on the host's bridge IP, e.g. 172.20.0.1:53).
> - Docker's iptables rules do the heavy lifting to forward traffic under the covers.

> **Source: manual-notes_10b5c5**
> - sudo iptables -I INPUT -p tcp --dport 6443 -j ACCEPT
> - ### Ports to open on worker nodes
> - Provides specific port configurations for Kubernetes master and worker nodes, including commands like `sudo iptables -I INPUT -p tcp --dport 6443 -j ACCEPT` to open the API server port.