---
summary: Source document explaining how to override Docker ENTRYPOINT and CMD instructions using Kubernetes Pod command and args fields at runtime.
type: source
title: Overriding Entrypoints and Commands in Docker and Kubernetes - Summary
base_confidence: 0.7
lifecycle: draft
source_file: ''
tags:
- CMD
- ENTRYPOINT
- Kubernetes Pod command and args
- Dockerfile
- docker run
aliases:
- Commands & Args in Containers & Pods
- Docker Kubernetes Command Override
contentHash: 859-c9f4d1c4
generation_complete: true
category: sources
sources: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-02T13:38:25.546603+00:00'
updated: '2026-07-02T13:38:25.546603+00:00'
---
# Overriding Entrypoints and Commands in Docker and Kubernetes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source provides a foundational guide on how Docker's [[concepts/cmd]] and [[concepts/entrypoint]] instructions define container startup behavior and how these map to Kubernetes Pod specifications. It explains that [[concepts/cmd]] sets default arguments for the entrypoint, while [[concepts/entrypoint]] specifies the fixed executable program. In Kubernetes, the command field overrides the entrypoint, and the args field overrides the default arguments, as detailed in [[concepts/kubernetes-pod-command-and-args]]. The guide emphasizes using JSON-array form in [[concepts/dockerfile]] and Pod YAML to prevent shell parsing errors, and illustrates runtime overrides with [[concepts/docker-run]] commands. Key insights include customizing container startup without image rebuilds by understanding this Docker-to-Kubernetes mapping, which is crucial for stable workload management.

## Key Entities
No key entities identified in this source.

## Key Concepts
- [[concepts/cmd]]: Docker instruction for default arguments to the entrypoint.
- [[concepts/entrypoint]]: Docker instruction for the fixed executable program.
- [[concepts/kubernetes-pod-command-and-args]]: Method mapping Docker's CMD and ENTRYPOINT to Kubernetes Pod spec fields.
- [[concepts/dockerfile]]: Build file defining container startup instructions.
- [[concepts/docker-run]]: Command for creating and overriding containers at runtime.

## Main Points
- [[concepts/cmd]] in Docker specifies default arguments for the container's entrypoint, while [[concepts/entrypoint]] defines the fixed executable program.
- In Kubernetes, the command field overrides the entrypoint, and the args field overrides the default arguments, enabling runtime customization.
- Always use JSON-array form in [[concepts/dockerfile]] and Pod specifications to avoid shell parsing issues.
- Understanding the mapping between Docker and Kubernetes configurations allows for customization of container startup without rebuilding images, enhancing flexibility and stability.