---
type: entity
title: "worker-node-1"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/introduction_804367]]"
tags:
  - other
aliases:
  - Worker Node
  - Worker Node 1
---
# worker-node-1

## Basic Information
- Type: other
- Source: introduction_804367

## Description
worker-node-1 is one of the two dedicated EC2 instances provisioned to form the worker node tier of a self-managed Kubernetes cluster. It functions alongside [[entities/worker-node-2]] to execute application workloads, described as the 'arms and legs' that run actual application pods. The recommended specifications for this node are an [[entities/ubuntu-server]] 20.04 LTS instance, with a preferred type of `t2.large` (2 vCPU, 8GB RAM) for performance, or a `t2.medium` as a cost-saving alternative. This node is an integral part of the initial three-node cluster topology, complementing the [[concepts/control-plane-node]] (master node). As a worker node, its primary components include the [[entities/kubelet]] agent and a [[concepts/container-runtime]] like [[entities/containerd]].

## Related Entities
- [[entities/ec2]]
- [[entities/ubuntu-server]]
- [[entities/aws]]
- kubernetes

## Related Concepts
- [[worker-node]]

## Mentions in Source
- "Launch EC2 Instances (Worker Nodes): 2x Instances, OS: Ubuntu 20.04 LTS, Instance Type: t2.large (better, 2 CPU, 8GB RAM) (or t2.medium if saving cost)" — introduction_804367
- "Name Your Servers in AWS Console: master-node, worker-node-1, worker-node-2" — introduction_804367