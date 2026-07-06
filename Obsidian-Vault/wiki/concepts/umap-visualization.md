---
title: UMAP Vector Visualization
category: concepts
tags:
- umap
- dimensionality-reduction
- vector-visualization
- 3d-visualization
- knowledge-base
- user-trust
summary: Using UMAP to project high-dimensional vector embeddings into 3D space for interactive visualization of a knowledge base. Lets users inspect an agent's stored knowledge by clicking on nodes.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/knowledge-base-pattern]]'
  type: uses
- target: '[[concepts/dense-vector-search]]'
  type: related_to
sources: []
---

# UMAP Vector Visualization

UMAP (Uniform Manifold Approximation and Projection) is a dimensionality reduction technique used to project high-dimensional vector embeddings into 2D or 3D space for interactive visualization.

## Application in Knowledge Bases

In the context of AI agent knowledge bases, UMAP is used to project vector embeddings from a vector database (e.g., Pinecone) into three dimensions. The resulting 3D scatter plot renders each chunk as a node in 3D space, where spatial proximity reflects semantic similarity.

## User Experience

The visualization enables users to:

1. **See the agent's knowledge** — Click on any node to view the associated text chunk
2. **Verify accuracy** — Confirm the agent has correctly parsed and stored their business information
3. **Debug issues** — Identify gaps or misclassifications in the knowledge base
4. **Build trust** — Transparency about what the agent "knows" reassures users that it represents their business correctly

## Implementation

1. Retrieve all vectors from the vector database
2. Apply UMAP to project them into 3D coordinates
3. Render as an interactive 3D visualization in the UI
4. Allow clicking on nodes to display the associated chunk content

## Trade-offs

- **Pro** — Intuitive, interactive way to inspect agent knowledge
- **Pro** — Spatial proximity reveals semantic clusters
- **Con** — UMAP is computationally expensive for large datasets
- **Con** — 3D projections inevitably lose some dimensional information
- **Con** — May not scale well to knowledge bases with millions of chunks

## Sources

- AIEF2025 talk: "Building Alice's Brain" by Sherwood & Satwik, 11x
