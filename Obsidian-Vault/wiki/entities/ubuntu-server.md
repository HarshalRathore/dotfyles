---
type: entity
title: "Ubuntu Server"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "introduction_804367"
tags:
  - product
aliases:
  - Ubuntu OS
---
# Ubuntu Server

## Basic Information
- Type: product
- Source: introduction_804367

## Description
Ubuntu Server is a popular, lightweight, and cloud-friendly Linux distribution designed for server and cloud deployments. In the Kubernetes cluster setup tutorial, Ubuntu Server 20.04 LTS is specified as the operating system for all cluster nodes, including the master and worker nodes. It provides a stable, widely-supported base OS for installing core Kubernetes components like [[entities/containerd]], [[entities/kubeadm]], and [[entities/kubelet]]. The choice of Ubuntu Server ensures easy access to packages and broad community support for the subsequent manual installation steps. Nodes running Ubuntu Server are accessed via SSH for configuration and command execution.

## Related Entities
- [[entities/ec2]]
- [[entities/aws]]

## Related Concepts

## Mentions in Source
- "They all will run Ubuntu Server OS (a popular, lightweight, cloud-friendly Linux distribution)." — introduction_804367
- "OS: Ubuntu 20.04 LTS" — introduction_804367