---
title: "CMD"
sources:
  - "[[sources/commands-&-args-in-containers-&-pods_300e3e]]"
tags:
  - deployment
aliases:
  - Docker CMD
  - CMD instruction
---
# CMD

## Definition
CMD is a Dockerfile instruction that declares the default arguments to be passed to the container's entrypoint. It is used to set the default command that runs when the container starts, unless overridden at runtime by command-line arguments.

## Key Characteristics
- Acts as the default command for a container when no command is provided at runtime.
- Can be specified in shell form (`CMD command param1 param2`) or exec form (`CMD ["executable", "param1", "param2"]`).
- The entire CMD instruction can be completely replaced by providing a command at `docker run` or equivalent.
- When combined with an ENTRYPOINT instruction, CMD provides the default arguments to the executable defined by ENTRYPOINT.
- In Kubernetes, the `args` field in a container's specification corresponds to CMD for overriding default arguments.

## Applications
- **Docker Container Startup**: Used to define the main process that a container will execute by default.
- **Base Image Design**: Base images use CMD to specify a sensible default command that child images can inherit or override.
- **Kubernetes Pod Specification**: The `args` field in a Pod's container spec is used to override the default arguments set by the image's CMD, providing flexibility in orchestration.

## Related Concepts
- [[concepts/entrypoint]]
- Kubernetes Pod command and args

## Related Entities
- [[entities/docker]]

## Mentions in Source
- "CMD (default command): Declares default arguments to the container’s entrypoint." — commands-&-args-in-containers-&-pods_300e3e
- "If you run `docker run ubuntu-sleeper 10`, the entire CMD is **replaced** by [\"10\"] → error unless entrypoint is set." — commands-&-args-in-containers-&-pods_300e3e