---
title: "Kubernetes Pod command and args"
sources:
  - "[[sources/commands-&-args-in-containers-&-pods_300e3e]]"
tags:
  - deployment
aliases:
  - Container Command Override
  - Docker ENTRYPOINT CMD Mapping
---
# Kubernetes Pod command and args

## Definition
The Kubernetes `command` and `args` fields in a Pod or container specification provide a mechanism to override the default `ENTRYPOINT` and `CMD` instructions defined in a container's Dockerfile. This allows for the customization of the executable and its arguments at runtime, without modifying or rebuilding the original container image.

## Key Characteristics
- The `command` field in the Pod YAML directly replaces the `ENTRYPOINT` executable from the Dockerfile.
- The `args` field in the Pod YAML replaces the default `CMD` arguments from the Dockerfile.
- If only `args` is provided, it overrides the default `CMD` while retaining the image's `ENTRYPOINT`.
- If only `command` is provided, it replaces the `ENTRYPOINT` and the image's default `CMD` is ignored.
- If both `command` and `args` are specified, they fully define the executable and its arguments, overriding both `ENTRYPOINT` and `CMD`.
- This method enables flexible workload configuration and testing different startup behaviors directly in orchestration manifests.

## Applications
- Customizing container startup commands for different deployment environments or testing scenarios.
- Overriding default application arguments for debugging or performance tuning.
- Running alternative utilities within a standard container image (e.g., using `sleep` for debugging).
- Implementing complex or conditional startup logic without creating multiple image variants.

## Related Concepts
- [[concepts/cmd]]
- [[concepts/entrypoint]]

## Related Entities
- [[entities/kubernetes]]
- Pod

## Mentions in Source
- ENTRYPOINT|command|Replaces entrypoint executable — commands-&-args-in-containers-&-pods_300e3e
- CMD|args|Replaces only the default arguments — commands-&-args-in-containers-&-pods_300e3e
- Override args (sleep 10): args: ["10"]      # overrides CMD only — commands-&-args-in-containers-&-pods_300e3e