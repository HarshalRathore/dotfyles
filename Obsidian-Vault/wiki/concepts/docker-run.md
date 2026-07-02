---
title: "docker run"
sources:
  - "commands-&-args-in-containers-&-pods_300e3e"
tags:
  - deployment
aliases:
  - Docker Run Command
---
# docker run

## Definition
The `docker run` command is a fundamental Docker CLI command used to create and start a new container from a Docker image. It provides the primary interface for users to execute and interact with containerized applications locally.

## Key Characteristics
- **Creates and Starts Containers:** Instantiates a new container from a specified image and starts it immediately.
- **Command Override:** Allows overriding the default `CMD` instruction defined in the Dockerfile by appending arguments to the command.
- **Entrypoint Override:** Enables overriding the default `ENTRYPOINT` instruction using the `--entrypoint` flag, providing flexible container startup.
- **Primary Local Testing Tool:** Serves as the key command for testing, debugging, and customizing container behavior directly on a developer's machine.

## Applications
- **Local Development & Testing:** Used to run and test container images before deploying to orchestrators like Kubernetes.
- **Environment Customization:** Allows developers to launch containers with specific commands or parameters to simulate different production environments or debug issues.
- **Learning & Experimentation:** The primary tool for learning containerization concepts, demonstrating how Dockerfile instructions like `CMD` and `ENTRYPOINT` behave.
- **Quick Scripting:** Employed in scripts for quick container execution tasks, such as running one-off database migrations or utility tasks.

## Related Concepts
- [[concepts/cmd]]
- [[concepts/entrypoint]]
- [[concepts/dockerfile]]
- [[concepts/kubernetes-pod-command-and-args]]

## Related Entities
- [[entities/docker]]

## Mentions in Source
- "If you run docker run ubuntu-sleeper 10, the entire CMD is replaced by [\"10\"] → error unless entrypoint is set." — commands-&-args-in-containers-&-pods_300e3e
- "docker run --entrypoint sleep2.0 ubuntu-sleeper 10 Runs: sleep2.0 10" — commands-&-args-in-containers-&-pods_300e3e