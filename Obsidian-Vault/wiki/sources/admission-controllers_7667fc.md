---
summary: This source explains that Admission Controllers are critical components in the Kubernetes API Server. They intercept create, update, and delete requests after authentication and authorization but b...
type: source
title: Admission Controllers in Kubernetes - Summary
created: '2026-06-30'
updated: '2026-06-30'
lifecycle: draft
base_confidence: 0.7
source_file: ''
tags:
- MutatingAdmissionWebhook
- ValidatingAdmissionWebhook
- ValidatingAdmissionPolicy
- Mutating Phase
- Validating Phase
- Admission Controller
- AlwaysPullImages
- DefaultStorageClass
- DefaultIngressClass
- LimitRanger
- NamespaceLifecycle
- ResourceQuota
- PodSecurity
- NodeRestriction
- ServiceAccount
- DefaultTolerationSeconds
- TaintNodesByCondition
- NamespaceExists
- NamespaceAutoProvision
- kubeadm
- kube-apiserver
aliases:
- Kubernetes Admission Control
- K8s Admission Controllers
contentHash: 99a-0f024d0e
generation_complete: true
category: sources
sources: []
tier: supporting
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
---
# Admission Controllers in Kubernetes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source explains that [[concepts/admission-controller]] are critical components in the [[concepts/kube-apiserver]]. They intercept create, update, and delete requests after authentication and authorization but before object persistence. Their purpose is to enforce cluster-wide policies through validation, mutation, or rejection of API objects. The admission process is split into two sequential phases: the [[concepts/mutating-phase]] and the [[concepts/validating-phase]]. The mutating phase can alter incoming requests (e.g., injecting defaults), while the validating phase checks for compliance without modification. Extensibility is achieved through [[concepts/mutatingadmissionwebhook]] and [[concepts/validatingadmissionwebhook]] for custom logic, and [[concepts/validatingadmissionpolicy]] for in-cluster CEL rules. The source details several built-in controllers like [[concepts/namespacelifecycle]], [[concepts/limitranger]], and [[concepts/resourcequota]], and discusses enabling them via API server flags.

## Key Entities
- [[concepts/kube-apiserver]]
- [[entities/kubeadm]]

## Key Concepts
- [[concepts/admission-controller]]
- [[concepts/mutatingadmissionwebhook]]
- [[concepts/validatingadmissionwebhook]]
- [[concepts/validatingadmissionpolicy]]
- [[concepts/mutating-phase]]
- [[concepts/validating-phase]]
- [[concepts/alwayspullimages]]
- [[concepts/defaultstorageclass]]
- [[concepts/defaultingressclass]]
- [[concepts/limitranger]]
- [[concepts/namespacelifecycle]]
- [[concepts/resourcequota]]
- [[concepts/podsecurity]]
- [[concepts/noderestriction]]
- [[concepts/serviceaccount]]
- [[concepts/defaulttolerationseconds]]
- [[concepts/taintnodesbycondition]]
- [[concepts/namespaceexists]]
- [[concepts/namespaceautoprovision]]

## Main Points
- Admission Controllers enforce cluster-wide policies, such as image restrictions and security contexts, that go beyond RBAC.
- The admission pipeline runs in two distinct phases: the Mutating Phase can modify objects, while the Validating Phase can only accept or reject them.
- Common built-in controllers provide essential functions like namespace protection, resource quota enforcement, and security standards.
- The system is extensible via external webhooks (Mutating/Validating) and declarative in-cluster policies (ValidatingAdmissionPolicy).
- Controllers are enabled or disabled through API server flags like `--enable-admission-plugins`.