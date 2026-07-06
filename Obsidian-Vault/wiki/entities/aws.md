---
type: entity
title: AWS
created:
- 2026-06-30
updated:
- 2026-07-04
sources:
- '[[sources/introduction_804367]]'
- AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo
tags:
- organization
aliases:
- Amazon Cloud
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: AWS
---
# AWS

## Basic Information
- Type: organization
- Source: introduction_804367

## Description
Amazon Web Services (AWS) is a comprehensive cloud computing platform provided by Amazon. It offers a wide range of on-demand services including compute, storage, networking, and databases, delivered over the internet. In the context of building a Kubernetes cluster from scratch, AWS serves as the infrastructure provider for provisioning virtual servers (EC2 instances) that form the cluster nodes. Users can leverage AWS services like [[concepts/vpc]] for network isolation and [[concepts/security-groups]] for firewall rules to configure secure networking. AWS also provides a [[concepts/aws-free-tier]] that offers limited free resources for 12 months, making it suitable for demonstration and learning purposes. The platform requires users to create an account a…

## AI Ecosystem at Scale

AWS operates one of the largest internal AI ecosystems known:

- **1,000+** generative AI applications built or in development across Amazon, transforming inventory forecasting, delivery route optimization, customer shopping, and smart home interactions.
- **600+ million** Alexa devices worldwide, now being reimagined as Alexa Plus — the largest integration of services, agentic capabilities, and LLMs that any organization knows of.
- **Hundreds** of specialized expert systems coordinating across tens of thousands of partner services and devices.
- **6,000+** tools managed by an internal AWS agent using semantic search-based tool discovery.

## AI Products and Services

- **Amazon Bedrock** — Fully managed service for building generative AI applications
- **Amazon Q Developer** — AI-powered coding assistant, including CLI agent built in three weeks
- **Alexa Plus** — Complete reimagining of Alexa with agentic capabilities
- **Strands Agents** — Open-source Python SDK for building AI agents (released at AIEF2025)

## Amazon Nova Models

Amazon Nova is Amazon's family of foundational AI models, available through Bedrock. Simon Willison described them as Amazon's first competitive model family: ^[extracted]

- **1 million token context windows** — the largest context capacity among models he tracked
- **Extremely low pricing** — Nova Micro is the cheapest model Willison tracks
- **Behavior** — "behave like the cheaper Gemini models"
- **Pelican SVG benchmark** — "unimpressive" on code-output quality, but the models are "worth knowing about" for their pricing and context capacity

## Related Entities
- [[entities/ec2]] — Elastic Compute Cloud; provides virtual servers for running workloads
- [[entities/iam]] — Identity and Access Management; controls user access to AWS resources
- [[entities/ubuntu-server]] — Linux distribution used as the operating system for cluster nodes
- [[entities/alexa]] — Alexa Plus, the largest AI agent integration
- [[entities/amazon-bedrock]] — Managed AI service platform
- [[entities/strands-agents]] — Open-source agent SDK
- [[entities/amazon-q-developer]] — AI coding assistant

## Related Concepts
- [[concepts/vpc]] — Virtual Private Cloud; provides isolated network environment within AWS
- [[concepts/security-groups]] — Firewall rules controlling inbound and outbound traffic to AWS resources
- [[concepts/aws-free-tier]] — Free usage tier offering limited resources for 12 months
- [[concepts/model-driven-agent-design]] — Design approach for building agents at AWS
- [[concepts/agentic-services]] — Paradigm shift from web services to AI agents
- [[concepts/agent-at-scale]] — Patterns for deploying agents at massive scale
