---
type: concept
title: Volume-mounted files
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/env-configmaps-&-secrets_9586ac]]'
tags:
- deployment
aliases:
- Volume File Mounting
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Volume-mounted files
---
# Volume-mounted files

## Definition
A method in Kubernetes where the data from a ConfigMap or Secret is mounted as individual files within a Pod's container filesystem. Each key from the source object becomes a file name, and its corresponding value becomes the content of that file.

## Key Characteristics
- Mounts the entire ConfigMap or Secret as a volume.
- Each key in the ConfigMap/Secret is represented as a separate file.
- The file content is the value associated with that key.
- Changes to the source ConfigMap or Secret are automatically reflected in the mounted files.
- Does not require a container restart for the application to pick up new configuration.
- Ideal for applications that consume configuration or secrets via the filesystem.

## Applications
- Providing application configuration files (e.g., `database.conf`, `nginx.conf`) to containers.
- Injecting TLS certificates and keys into containers for secure communication.
- Managing application secrets (like API keys) as files instead of environment variables.
- Forcing configuration refresh in applications that watch file changes (e.g., via inotify).

## Related Concepts
- [[concepts/configmaps]]
- [[concepts/secrets]]
- [[concepts/volumes]]

## Related Entities
No related entities.

## Mentions in Source
- "Volume-mounted files (advanced): mount whole ConfigMap as files in a volume." — env-configmaps-&-secrets_9586ac
- "Volume: mount secret as files; each key becomes a file with its value." — env-configmaps-&-secrets_9586ac