---
layout: research
title: "rDXE: Multi-Core TPU Accelerator for LLMs"
topic: "Chiplet and Multi-Core Architecture"
cover_image: /images/research/rdex/rdex.jpg
order: 1
---

<div style="font-size:19px; line-height:1.9;">

<strong>
<a href="/papers/rdxe-cicc2026"
   style="color:#000; text-decoration:underline;">
A 11.16μJ/token Edge LLM Accelerator with Scalable Ring-based Configuration for Token-wise Pipelining in 16nm FinFET
</a>
</strong>

<br>

<strong style="display:inline-block; margin-top:2px; color:#2b6cb0;">
[CICC 2026]
</strong>

</div>

Edge deployment of small language models (SLMs) is fundamentally limited by the memory-bound decode stage and insufficient batch-level parallelism. 
- Existing LLM accelerators become highly inefficient with concurrent user requests, irregular sequence lengths, and strict power constraints. 
- Non-linear operations such as Softmax and RMSNorm interrupt GEMV execution.
- KV-cache accesses introduce significant memory and bandwidth overhead.

<figure style="text-align:center; margin:3px 0 0 0;">

  <img src="/images/research/rdex/rdex.jpg"
       style="width:70%; max-width:600px; height:auto; border-radius:12px; display:block; margin:0 auto;">

</figure>

This work proposes rDXE, a scalable ring-based decoder accelerator for edge SLM inference. 
- The architecture introduces token-level pipelining to enable efficient multi-request and multi-token execution while maintaining high hardware utilization. 
- A Vector Recompute (VRC) mechanism fuses nonlinear operations directly into the GEMV pipeline to reduce latency without sacrificing accuracy. 
- An irregular-write uniform-read (iWuR) KV-cache organization with hardware-efficient GQA support is proposed to improve data reuse, reduce memory traffic, and lower KV-cache storage requirements.

<figure style="text-align:center; margin:3px 0 0 0;">

  <img src="/images/research/rdex/rdex_chip.jpg"
       style="width:70%; max-width:500px; height:auto; border-radius:12px; display:block; margin:0 auto;">

</figure>

The proposed accelerator was fabricated in **16nm FinFET** technology. Measurement results show up to 5.26 TOPS/W energy efficiency and 11.16 μJ/token decoding energy. The token-level pipeline sustains up to 77.8% utilization and achieves up to 4412 tokens/s throughput in scalable multi-chip configurations. In addition, VRC achieves up to 4.66× latency reduction for nonlinear layers, while the optimized KV-cache organization reduces latency by up to 1.54× and KV-cache capacity demand by up to 83%.