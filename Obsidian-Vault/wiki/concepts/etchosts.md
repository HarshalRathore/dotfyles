---
type: concept
title: "/etc/hosts"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/manual-notes_10b5c5]]"
tags:
  - networking
aliases:
  - hostname resolution
---
# /etc/hosts

## Definition
The `/etc/hosts` is a local system configuration file that maps hostnames to IP addresses, providing basic hostname resolution (DNS) functionality on a computer.

## Key Characteristics
- Acts as a static, local DNS override or first-resolver for the operating system
- Contains lines mapping an IP address to one or more hostnames
- Is consulted before any external DNS server for name resolution
- Enables communication between machines in a local network using hostnames instead of IP addresses
- Is manually configured and maintained by a system administrator

## Applications
- **Cluster Node Communication**: Used in manual cluster setups (like Kubernetes) to allow nodes (master, workers) to discover and communicate with each other via hostnames.
- **Convenient Access**: Added to both the cluster nodes and the host machine for easy SSH access to nodes using friendly hostnames (e.g., `ssh master`).
- **Local Development**: Enables local development environments where applications need to resolve specific hostnames to local or private IP addresses.
- **Host Redirection**: Can be used to block or redirect network requests to specific hostnames for testing or security purposes.

## Related Concepts
- [[concepts/container-dns-resolution]]
- [[concepts/service-discovery]]

## Related Entities
- [[entities/ubuntu-server]]

## Mentions in Source
- "Now write down IP of each of your virtualmachine and add them to each of your virtual machines `/etc/hosts` file so now the VMs can communicate with each other using name resolution" — manual-notes_10b5c5
- "192.168.1.4 master\n192.168.1.3 worker1\n192.168.1.5 worker2" — manual-notes_10b5c5