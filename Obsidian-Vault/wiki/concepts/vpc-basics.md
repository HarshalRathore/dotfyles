---
type: concept
title: "VPC Basics"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/introduction_804367]]"
tags:
  - networking
aliases:
  - Virtual Private Cloud Basics
---
# VPC Basics

## Definition
VPC Basics refer to the fundamental concepts of Amazon's Virtual Private Cloud networking service, which are essential for understanding how EC2 instances are networked, communicate internally, and access the internet.

## Key Characteristics
- EC2 instances launched into a VPC are assigned a private IP address for internal cluster communication.
- EC2 instances can be assigned a public IP address for external access, such as via SSH.
- A VPC connects to the internet via an Internet Gateway.
- This networking model is fundamental for setting up a Kubernetes cluster on AWS, ensuring nodes can communicate internally while being accessible for administration.

## Applications
- Configuring the network foundation for a self-managed Kubernetes cluster on AWS EC2.
- Enabling secure administrative access to cluster nodes via SSH using public IPs.
- Facilitating internal communication between Kubernetes control plane and worker nodes using private IPs.

## Related Concepts
- [[concepts/vpc]]
- [[concepts/kubernetes-cluster]]
- [[concepts/self-reconciling]]
- [[concepts/aws-free-tier]]

## Related Entities
- [[entities/ec2]]
- [[entities/aws]]
- [[entities/ssh]]
- [[entities/kubernetes]]

## Mentions in Source
- "When you launch EC2 instances, they live inside a VPC (Virtual Private Cloud): Private IPs for internal cluster communication. Public IPs for external SSH access." — introduction_804367
- "Internet Gateway connects VPC to the internet." — introduction_804367