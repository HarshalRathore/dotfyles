---
type: concept
title: "firewalld"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-installation-steps_e573e8]]"
tags:
  - networking
aliases:
  - firewalld service
---
# firewalld

## Definition
Firewalld is a dynamic firewall daemon for Linux systems, providing a command-line interface for managing firewall rules. It allows administrators to define and apply firewall configurations in real-time without restarting the service.

## Key Characteristics
- Acts as a dynamic firewall management tool for Linux distributions (e.g., RHEL/CentOS).
- Provides a `firewall-cmd` command-line utility for rule configuration.
- Supports permanent and runtime rule changes, allowing for persistent and immediate policy adjustments.
- Often used to manage host-level network access in server and cluster environments.

## Applications
- Configuring host firewalls to open specific network ports required for application services.
- Managing network security policies on nodes within a Kubernetes cluster (e.g., opening port 6443 for the API server).
- General system administration for controlling incoming and outgoing network traffic on Linux hosts.

## Related Concepts
- [[concepts/host-security]]
- [[concepts/network-port-configuration]]

## Related Entities
- [[entities/kubeadm]]

## Mentions in Source
- Firewalld (RHEL/CentOS) example: — kubernetes-installation-steps_e573e8
- `sudo firewall-cmd --permanent --add-port=6443/tcp` — kubernetes-installation-steps_e573e8