---
title: "ENTRYPOINT"
sources:
  - "[[sources/commands-&-args-in-containers-&-pods_300e3e]]"
tags:
  - deployment
aliases:
  - ENTRYPOINT instruction
---
# ENTRYPOINT

## Definition
ENTRYPOINT is a Dockerfile instruction that specifies the fixed executable program to run when a container starts. Unlike CMD, ENTRYPOINT is not easily overridden by command-line arguments; instead, arguments passed to `docker run` are appended to the ENTRYPOINT command.

## Key Characteristics
- Specifies the primary executable that runs when the container starts
- Arguments passed at runtime are appended to the ENTRYPOINT command rather than replacing it
- Not easily overridden by command-line arguments (unlike CMD)
- Can be defined in exec form (e.g., `ENTRYPOINT ['sleep']`) or shell form
- In Kubernetes, the `command` field in the Pod spec replaces the ENTRYPOINT executable, allowing override at the Pod level

## Applications
- Setting a container's main process that always executes (e.g., a specific application binary)
- Creating containers that behave like executables with fixed behavior
- Running long-lived services where the entry program should remain consistent
- Combining with CMD to provide default arguments (e.g., `ENTRYPOINT ['sleep']` with `CMD ['5']` produces `sleep 5`)

## Related Concepts
- [[concepts/cmd]] — the complementary Dockerfile instruction for default arguments
- Pod command and args — Kubernetes Pod-level command and argument configuration

## Related Entities
- [[entities/docker]] — container runtime platform using ENTRYPOINT
- [[entities/kubernetes]] — orchestrator that can override ENTRYPOINT via Pod command field

## Mentions in Source
- ENTRYPOINT (fixed executable): Declares the program to run at container start. — commands-&-args-in-containers-&-pods_300e3e
- `docker run ubuntu-sleeper 10` → runs `sleep 10` (argument override). — commands-&-args-in-containers-&-pods_300e3e
- **command** = ENTRYPOINT → you're picking the program. — commands-&-args-in-containers-&-pods_300e3e