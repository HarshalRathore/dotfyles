---
title: Kubernetes Free Resources
category: references
tags: [kubernetes, learning, resources, free, devops]
aliases:
  - K8s Learning Resources
  - Free Kubernetes Resources
sources:
  - 'https://x.com/ghumare64/status/1625365398156877826'
summary: Curated list of free Kubernetes learning resources from Rohit Ghumare's tweet, including roadmaps, GitHub repos, courses, and newsletters.
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
relationships:
  - target: "[[entities/rohit-ghumare]]"
    type: related_to
---
# Kubernetes Free Resources

A curated collection of free Kubernetes learning resources shared by [[entities/rohit-ghumare]] in a tweet (Feb 14, 2023) that received 67.1K views and 635 bookmarks. The resources span from beginner roadmaps to advanced tool directories.

## Key Resources

### Roadmap & Learning Path

- **Learnk8s Troubleshooting Guide** ([learnk8s.io/troubleshooting-deployments](https://learnk8s.io/troubleshooting-deployments)) — A visual guide for debugging Kubernetes deployments by Daniele Polencic (May 2024). Covers the Deployment → Service → Ingress architecture and provides a 3-step troubleshooting workflow. Available in 12+ languages with downloadable PDF/PNG diagrams.^[extracted]

- **Kubernetes Learning Path** ([github.com/techiescamp/kubernetes-learning-path](https://github.com/techiescamp/kubernetes-learning-path)) — 7.6K stars. A complete roadmap from beginner to advanced covering container fundamentals, Kubernetes architecture, cluster setup (kubeadm, minikube, kind), pods, services, ingress, security (CIS, Falco, OPA), Helm, GitOps (Argo CD, FluxCD), production practices, and real-world case studies (OpenAI, Airbnb, Medium). Includes cloud credits for practice across GCP, AWS, DigitalOcean, and more.^[extracted]

### Curated Resource Lists

- **Awesome K8s Resources** ([github.com/tomhuang12/awesome-k8s-resources](https://github.com/tomhuang12/awesome-k8s-resources)) — 4.2K stars. A comprehensive curated list covering CLI tools (Helm, K9s, kubectx), cluster provisioning (k3s, kind, kops, Talos), CI/CD (Argo CD, Argo Rollouts, Flux2, Spinnaker), networking (Cilium, Calico, Istio), security (Falco, Trivy, Kyverno), monitoring (Prometheus, Grafana), backup (Velero), and development tools (Tilt, Telepresence).^[extracted]

- **Awesome K8s Tools** ([github.com/vilaca/awesome-k8s-tools](https://github.com/vilaca/awesome-k8s-tools)) — 1.1K stars. Ranked list of 500+ Kubernetes and container tools sorted by GitHub stars. Top entries: Kubernetes (123.7K), Netdata (79.6K), Grafana (75.5K), Prometheus (65.1K), Minio (61.3K), Istio (38.2K), K3s (33.4K), Helm (29.9K), Argo CD (23.6K).^[extracted]

### Courses & Paid Resources

- **Kubernetes Intro to Deployment** ([rohitghumare.gumroad.com](https://rohitghumare.gumroad.com/l/RG-k8s)) — Free/pay-what-you-want ebook by Rohit Ghumare. 8 pages covering the entire Kubernetes journey from scratch. 4-star rating (3 reviews).^[extracted]

- **Kubernetes 101 Workshop** ([youtube.com](https://www.youtube.com/watch?v=PN3VqbZqmD8)) — Complete hands-on workshop by Kubesimplify (46.6K subscribers, 1.7M views). A livestreamed workshop available as a highlight clip (3:42).^[extracted]

### Newsletter

- **DevOps Advocate Newsletter** ([thatdevopsguy.substack.com](https://thatdevopsguy.substack.com)) — Rohit Ghumare's monthly newsletter with 10K+ subscribers covering DevOps, cloud-native, DevRel, and life.^[extracted]

## Resource Categories Covered

The curated resources collectively address the full Kubernetes learning journey:

1. **Fundamentals** — Container basics, distributed systems, YAML, DNS, networking
2. **Architecture** — Control plane components, pods, services, ingress
3. **Cluster Setup** — kubeadm, minikube, kind, KubeTheHardWay
4. **Advanced Topics** — Admission controllers, CRDs, operators, GitOps
5. **Security** — CIS benchmarking, Falco, OPA, network policies
6. **Observability** — Prometheus, Grafana, logging, monitoring
7. **Production** — Capacity planning, case studies, best practices
8. **Ecosystem Tools** — Helm, Kustomize, Argo CD, service mesh, CNI plugins

## Related Resources

- [[concepts/kubernetes-cluster]] — Understanding cluster architecture
- [[concepts/self-managed-kubernetes]] — Deploying your own cluster
- [[concepts/troubleshooting]] — Debugging methodologies (general)
- [[concepts/production-troubleshooting]] — Production-specific debugging

## Open Questions

- Are there more recent (2024–2025) curated lists that have superseded these?
- How does the Learnk8s troubleshooting guide compare to other Kubernetes debugging resources?
- Which of these free resources map to specific [[concepts/certification]] tracks (CKA, CKAD, CKS)?

## Sources

- Rohit Ghumare tweet: https://x.com/ghumare64/status/1625365398156877826 (Feb 14, 2023)
- Learnk8s: A visual guide on troubleshooting Kubernetes deployments (Daniele Polencic, May 2024)
- techiescamp/kubernetes-learning-path — GitHub repository
- tomhuang12/awesome-k8s-resources — GitHub repository (CC0 license)
- vilaca/awesome-k8s-tools — GitHub repository (MIT license)
