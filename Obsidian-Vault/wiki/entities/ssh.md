---
type: entity
title: "SSH"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/introduction_804367]]"
tags:
  - method
aliases:
  - SSH access
---
# SSH

## Basic Information
- Type: method
- Source: introduction_804367

## Description
SSH (Secure Shell) is the cryptographic network protocol used for secure remote command-line access to servers. It establishes a secure, encrypted connection between a client and a server, replacing insecure protocols like Telnet and rlogin. In the context of building a Kubernetes cluster from scratch, SSH is the primary method for initial administrative access to both the [[concepts/control-plane-node]] and [[worker-node-2]] before any software is installed. The procedure involves using a private key (`.pem` file) to authenticate with the remote [[entities/ubuntu-server]], often hosted on [[entities/ec2]] instances within an [[entities/aws]] environment. Access is typically granted to a default user (e.g., `ubuntu`) at the node's public IP address.

## Related Entities
- [[entities/ec2]]
- [[entities/ubuntu-server]]
- kubernetes

## Related Concepts
- [[tls-encryption]]
- [[concepts/host-security]]

## Mentions in Source
- "Connecting to the Servers (SSH Access): 1. Move the .pem file to your .ssh/ folder." — introduction_804367
- "ssh -i ~/.ssh/kubernetes-node.pem ubuntu@<Master-Node-Public-IP>" — introduction_804367