---
type: concept
title: "VPC"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/introduction_804367]]"
tags:
  - deployment
aliases:
  - VPC
---
# VPC

## Definition
A Virtual Private Cloud (VPC) is a logically isolated section of a cloud provider's network where you can provision and manage cloud resources, such as virtual servers, within a virtual network that you define. It forms the foundational networking layer for cloud-based infrastructure.

## Key Characteristics
- Provides a logically isolated network environment within a public cloud.
- Resources within a VPC communicate via private IP addresses by default.
- Connects to the public internet through an Internet Gateway (IGW) for external access.
- Network access rules and firewall configurations (like Security Groups) are defined at the VPC level.
- Enables the creation of subnets for organizing resources and controlling network traffic flow.

## Applications
- Hosting multi-tier web applications with public and private subnets for web servers and databases.
- Deploying and securing clusters of virtual machines, such as the nodes for a Kubernetes cluster.
- Creating secure, hybrid environments by connecting on-premises networks to the cloud via VPN or Direct Connect.
- Implementing network isolation for different projects, environments (dev, staging, production), or tenants.

## Related Concepts
- [[concepts/security-groups]]
- [[concepts/network-policies]]

## Related Entities
- [[entities/aws]]
- [[entities/ec2]]

## Mentions in Source
- "When you launch EC2 instances, they live inside a VPC (Virtual Private Cloud):" — introduction_804367
- "Private IPs for internal cluster communication." — introduction_804367
- "Public IPs for external SSH access." — introduction_804367