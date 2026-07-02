---
type: concept
title: "DefaultStorageClass"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "admission-controllers_7667fc"
tags:
  - deployment
aliases:
  - Default StorageClass
  - Default SC
---
# DefaultStorageClass

## Definition
DefaultStorageClass is a built-in mutating admission controller in Kubernetes that automatically assigns a default StorageClass to PersistentVolumeClaims (PVCs) when no StorageClass is explicitly specified. It operates during the mutating phase of admission control and modifies incoming PVC objects by adding a default StorageClass annotation, simplifying storage provisioning in clusters.

## Key Characteristics
- Built-in mutating admission controller shipped with the Kubernetes API server
- Runs during the mutating phase of admission control, modifying objects before they are persisted
- Automatically injects a `storageclass.kubernetes.io/is-default-class: "true"` annotation on the designated StorageClass
- Annotates incoming PVCs with the default StorageClass name when no `storageClassName` is explicitly set
- Only one StorageClass in a cluster can be marked as the default at any given time
- Does not retroactively affect existing PVCs — only new PVCs without an explicit StorageClass are modified
- Works in conjunction with the StorageClass object to determine which class should serve as the cluster default

## Applications
- **Simplified PVC creation**: Allows developers to create PersistentVolumeClaims without specifying a StorageClass, reducing boilerplate in manifests
- **Default storage provisioning**: Ensures that every PVC in a cluster has a valid StorageClass assigned, preventing failures due to missing storage class references
- **Cluster standardization**: Provides a uniform storage backend for workloads that do not have specific storage performance requirements
- **Reduced configuration errors**: Eliminates a common source of PVC errors where users forget to specify the StorageClass in their deployment manifests
- **Dynamic provisioning**: Works with CSI drivers and dynamic provisioners to automatically provision PersistentVolumes based on the default StorageClass

## Related Concepts
- [[concepts/mutating-phase]]
- [[concepts/admission-controller]]

## Related Entities

## Mentions in Source
- "Runs **MutatingAdmissionWebhook** and built-in mutating controllers (e.g., **AlwaysPullImages**, **DefaultStorageClass**, **DefaultIngressClass**, **LimitRanger**)." — admission-controllers_7667fc
- "Can modify the incoming object or related resources." — admission-controllers_7667fc