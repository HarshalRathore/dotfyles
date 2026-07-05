---
type: entity
title: "EC2"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/introduction_804367]]"
tags:
  - product
aliases:
  - EC2
---
# EC2

## Basic Information
- Type: product
- Source: introduction_804367

## Description
Amazon EC2, short for Elastic Compute Cloud, is a core [[entities/aws]] service that provides resizable virtual servers, known as instances, in the cloud. In the context of setting up a Kubernetes cluster from scratch, EC2 is the foundational infrastructure used to provision the necessary compute nodes. The process involves selecting specific instance types, such as t2.medium for the [[concepts/control-plane-node]] and t2.large for [[worker-node]]s, which are then configured with an operating system like [[entities/ubuntu-server]], security keys, and network rules. This allows for the creation of a custom, bare-metal-like environment to host the Kubernetes Kubernetes components without relying on managed services.

## Related Entities
- [[entities/aws]]
- [[entities/ubuntu-server]]

## Related Concepts
- [[concepts/vpc]]
- [[concepts/security-groups]]

## Mentions in Source
- "Since there's no IT team handing out servers, we'll create virtual servers (EC2 instances) on AWS." — introduction_804367
- "Launch EC2 Instance (Master Node):" — introduction_804367
- "Launch EC2 Instances (Worker Nodes):" — introduction_804367