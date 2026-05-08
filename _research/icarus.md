---
layout: research
title: "ICARUS: Routing-in-Memory Sparse LLM Accelerator"
topic: "In-Memory Computing"
cover_image: /images/research/icarus/icarus_cover.jpg
order: 1
---

<div style="font-size:19px; line-height:1.9;">

<strong>
<a href="https://ieeexplore.ieee.org/abstract/document/10067360"
   style="color:#000; text-decoration:underline;">
A 28nm 53.8TOPS/W 8b Sparse Transformer Accelerator with In-Memory Butterfly Zero Skipper for Unstructured-Pruned NN and CIM-Based Local-Attention-Reusable Engine
</a>
</strong>

<br>

<strong style="display:inline-block; margin-top:2px; color:#2b6cb0;">
[ISSCC 2023]
</strong>

</div>

LLMs are notoriously power-hungry due to their massive parameter scales and the quadratic computational complexity of self-attention mechanisms. While In-Memory Computing (IMC) architectures offer high bandwidth and parallelism, they struggle to efficiently handle the irregular sparsity resulting from model pruning. The presence of zero weights leads to significant storage and computational redundancy, which severely degrades hardware utilization. Furthermore, rigid IMC structures fail to adapt to varying local attention spans across different tasks, resulting in wasted computational resources and memory overhead.

<figure style="text-align:center; margin:3px 0 0 0;">

  <img src="/images/research/icarus/icarus_detail.jpg"
       style="width:100%; max-width:1000px; height:auto; border-radius:12px; display:block; margin:0 auto;">

</figure>

This work proposes a scalable sparse Transformer accelerator optimized for semi-structured-pruned networks:

- **In-Memory Butterfly Zero Skipper**: This engine introduces a Transmission Gate (TG)-based butterfly network and a sparse-to-dense routing algorithm to dynamically skip irregular zero weights.

- **Local Attention Reusable Engine**: To exploit self-attention sparsity, this engine supports variable-length attention spans and incorporates a QK-sharing mechanism to eliminate redundant operations, directly translating algorithmic sparsity into hardware-level energy savings.

- **Scalable Multi-Chip Architecture**: A four-chip parallel system is implemented, utilizing cross-chip task partitioning and Die-to-Die (D2D) synchronization to support efficient inference and capacity scaling for large-scale LLMs.

<figure style="text-align:center; margin:3px 0 0 0;">

  <img src="/images/research/icarus/icarus_chip.jpg"
       style="width:100%; max-width:1000px; height:auto; border-radius:12px; display:block; margin:0 auto;">

</figure>

The proposed accelerator was fabricated in **28nm CMOS** technology and validated across various models, including Llama2-7B, GPT, and BERT. Measurement results demonstrate a peak throughput of 186.9 tokens/s and a decoding energy of 0.21 J/token. Compared to the NVIDIA A100 GPU, the architecture achieves up to 4.2× speedup and 27.6× higher energy efficiency. With the combined optimizations of LAR-Engine and BFLY-Engine, the end-to-end energy efficiency is improved by up to 6.8×, achieving near-theoretical limits in area and power optimization at 75% weight sparsity.