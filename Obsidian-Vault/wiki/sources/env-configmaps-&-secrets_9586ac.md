---
summary: 'This source provides a comprehensive guide to managing application configuration and sensitive data within Kubernetes. It details the use of the `env` field to inject '
tags:
- Environment Variables in Pods
- Encryption at Rest
- EncryptionConfiguration
- AES-CBC
- ConfigMap
- Secret
- envFrom
- Volume-mounted files
aliases:
- 'Kubernetes Config Management: Env'
- ConfigMaps & Secrets
- K8s Configuration and Secrets Summary
contentHash: faa-b895240b
generation_complete: true
title: 'Kubernetes Configuration Management: Environment Variables, ConfigMaps, Secrets, and Encryption - Summary'
category: sources
sources: []
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-02T13:38:25.556024+00:00'
updated: '2026-07-02T13:38:25.556024+00:00'
---
# Kubernetes Configuration Management: Environment Variables, ConfigMaps, Secrets, and Encryption - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source provides a comprehensive guide to managing application configuration and sensitive data within Kubernetes. It details the use of the `env` field to inject [[concepts/environment-variables-in-pods]] into Pods, which can be sourced from literal values, [[concepts/configmap]] for non-sensitive data, or [[concepts/secret]] for sensitive information. The document contrasts ConfigMaps and Secrets, noting that Secrets use base64 encoding but are unencrypted by default. It strongly emphasizes the critical security practice of enabling [[concepts/encryption-at-rest]] for Secrets in etcd, requiring the setup of an [[concepts/encryptionconfiguration]] resource and re-encrypting existing Secrets. Practical methods like using [[concepts/envfrom]] for bulk injection and mounting data as files via volumes are also covered.

## Key Entities
- [[concepts/authentication-kubernetes]]
- [[concepts/kubectl-proxy]]
- [[entities/etcd]]

## Key Concepts
- [[concepts/environment-variables-in-pods]]
- [[concepts/configmap]]
- [[concepts/secret]]
- [[concepts/envfrom]]
- [[concepts/volume-mounted-files]]
- [[concepts/encryption-at-rest]]
- [[concepts/encryptionconfiguration]]
- [[concepts/aes-cbc]]

## Main Points
- The `env` field in a container spec is used to inject environment variables, with options for literal values or references to ConfigMaps/Secrets.
- ConfigMaps store non-sensitive plaintext configuration, while Secrets store sensitive data in base64 format; neither is encrypted by default in etcd.
- **Critical Security Recommendation:** Secrets must be encrypted at rest using an `EncryptionConfiguration` (e.g., with AES-CBC encryption) to protect data in etcd.
- ConfigMaps and Secrets can be injected into Pods as individual environment variables (using `env` with `valueFrom`) or as entire sets of variables (using `envFrom` with `configMapRef` or `secretRef`).
- Advanced configuration can be mounted as files within a Pod's filesystem using volumes, suitable for applications that read config from files.