---
type: entity
title: "AWS"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "introduction_804367"
tags:
  - organization
aliases:
  - Amazon Cloud
---
# AWS

## Basic Information
- Type: organization
- Source: introduction_804367

## Description
Amazon Web Services (AWS) is a comprehensive cloud computing platform provided by Amazon. It offers a wide range of on-demand services including compute, storage, networking, and databases, delivered over the internet. In the context of building a Kubernetes cluster from scratch, AWS serves as the infrastructure provider for provisioning virtual servers (EC2 instances) that form the cluster nodes. Users can leverage AWS services like [[concepts/vpc]] for network isolation and [[concepts/security-groups]] for firewall rules to configure secure networking. AWS also provides a [[concepts/aws-free-tier]] that offers limited free resources for 12 months, making it suitable for demonstration and learning purposes. The platform requires users to create an account and set up [[entities/iam]] users for access control and billing management.

## Related Entities
- [[entities/ec2]] — Elastic Compute Cloud; provides virtual servers for running workloads
- [[entities/iam]] — Identity and Access Management; controls user access to AWS resources
- [[entities/ubuntu-server]] — Linux distribution used as the operating system for cluster nodes

## Related Concepts
- [[concepts/vpc]] — Virtual Private Cloud; provides isolated network environment within AWS
- [[concepts/security-groups]] — Firewall rules controlling inbound and outbound traffic to AWS resources
- [[concepts/aws-free-tier]] — Free usage tier offering limited resources for 12 months

## Mentions in Source
- "Since there's no IT team handing out servers, we'll create virtual servers (EC2 instances) on AWS." — introduction_804367
- "You'll get 1 year of Free Tier benefits (good enough for our demo cluster!)." — introduction_804367