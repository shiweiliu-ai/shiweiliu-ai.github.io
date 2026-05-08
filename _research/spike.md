---
layout: research
title: "1024-Ch 583-nW/Ch Spike-Sorting SoC"
topic: "In-Memory Computing"
cover_image: /images/research/spike/spike_cover.jpg
order: 2
---

<div style="font-size:19px; line-height:1.9;">

<strong>
<a href="https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=11474584"
   style="color:#000; text-decoration:underline;">
A 1024-Ch 583-nW/Ch Spike-Sorting SoC With Sparsity-Aware Spike Detection Scratchpad and Ultra-Low-Leakage Dual-Voltage 5T-SRAM for 16K-Template Clustering
</a>
</strong>

<br>

<strong style="display:inline-block; margin-top:2px; color:#2b6cb0;">
[TCAS-I 2026]
</strong>

</div>

<figure style="text-align:center; margin:3px 0 0 0;">

  <img src="/images/research/spike/spike_challenge.jpg"
       style="width:100%; max-width:1000px; height:auto; border-radius:12px; display:block; margin:0 auto;">

  <figcaption style="text-align:center; font-size:16px; margin-top:6px; margin-bottom:-6px;">
    Spike sorting flow and challenges.
  </figcaption>

</figure>

High-density Brain-Computer Interfaces require the simultaneous processing of thousands of neural channels, yet they must operate within the extremely tight thermal and power envelopes of implanted electronics. Conventional spike-sorting SoCs face a dual bottleneck: 
- Massive leakage power from large on-chip buffers required for multi-channel data
- Dynamic energy waste from continuously monitoring sparse neural signals. 
- Supporting a large-scale template library (e.g., 16K templates) for accurate clustering typically leads to prohibitive frequent and energy-intensive off-chip data transfers.

<figure style="text-align:center; margin:3px 0 0 0;">

  <img src="/images/research/spike/spike_circuit.jpg"
       style="width:70%; max-width:600px; height:auto; border-radius:12px; display:block; margin:0 auto;">

</figure>

This work presents a **1024-channel spike-sorting SoC** that introduces a cross-layer strategy to minimize both static and dynamic dissipation:
- **Sparsity-Aware Spike Detection Scratchpad**: By implementing a bit-wise differential encoder and zero-friendly readout circuits, the architecture exploits the inherent sparsity of neural firing events to skip redundant computations.
- **Ultra-Low-Leakage Dual-Voltage 5T-SRAM**: To suppress the "always-on" leakage of neural buffers, the design utilizes a 5T-SRAM array operating at half VDD. This is supported by level-shifter embedded sense amplifiers to maintain signal integrity during readout.
- **Hybrid Template Memory Hierarchy**: A firing-rate-aware management scheme combines on-chip SRAM with off-chip FeRAM, allowing the system to scale to 16K-template clustering while minimizing high-energy off-chip memory access.

<figure style="text-align:center; margin:3px 0 0 0;">

  <img src="/images/research/spike/spike_chip.jpg"
       style="width:70%; max-width:800px; height:auto; border-radius:12px; display:block; margin:0 auto;">

</figure>

Fabricated in **28nm CMOS**, the SoC achieves a state-of-the-art power efficiency of 583 nW/Ch. The system effectively supports real-time sorting for 1024 channels and 16,384 templates, providing a robust and scalable hardware foundation for massive-probing-channel closed-loop BCIs.