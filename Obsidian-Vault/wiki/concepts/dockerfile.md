---
title: "Dockerfile"
sources:
  - "[[sources/commands-&-args-in-containers-&-pods_300e3e]]"
tags:
  - deployment
aliases:
  - Docker Build File
---
# Dockerfile

## Definition
A Dockerfile is a text file containing a series of instructions for building a Docker image. It defines the base image, environment settings, commands, and entry points that determine the container's startup behavior. Dockerfiles are essential for creating reproducible container images.

## Key Characteristics
- Declarative, instruction-based syntax for defining container image contents
- Specifies a base image as the foundation for subsequent layers
- Contains commands like `CMD` and `ENTRYPOINT` that control default container startup behavior
- Produces immutable, versioned images through the Docker build process
- Supports build-time configuration via environment variables, file copying, and command execution
- Enables reproducible builds across different environments

## Applications
- Creating standardized container images for application deployment
- Defining default container startup commands and arguments via `CMD` and `ENTRYPOINT`
- Integrating with CI/CD pipelines for automated image building
- Overriding container commands at runtime or in Kubernetes Pod specifications to adjust application startup without rebuilding images
- Packaging applications with all dependencies for consistent deployment

## Related Concepts
- [[concepts/cmd]]
- [[concepts/entrypoint]]
- [[concepts/kubernetes-pod-command-and-args]]

## Related Entities
- [[entities/docker]]

## Mentions in Source
- "In Dockerfile, CMD declares default arguments to the container's entrypoint." — commands-&-args-in-containers-&-pods_300e3e
- "Always use JSON-array form in Dockerfile and Pod spec to avoid shell parsing surprises." — commands-&-args-in-containers-&-pods_300e3e