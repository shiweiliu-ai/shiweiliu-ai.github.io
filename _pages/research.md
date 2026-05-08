---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---

{% assign sorted = site.research | sort: "order" | reverse %}
{% assign grouped = sorted | group_by: "topic" %}

<!-- ⭐ 手动定义 topic 顺序 -->
{% assign topic_order = 
  "Chiplet and Multi-Core Architecture,In-Memory Computing" | split: "," %}

{% assign grouped_sorted = "" | split: "" %}

{% for t in topic_order %}
  {% for g in grouped %}
    {% if g.name == t %}
      {% assign grouped_sorted = grouped_sorted | push: g %}
    {% endif %}
  {% endfor %}
{% endfor %}

<!-- =========================
     RENDER TOPICS IN ORDER
========================= -->
{% for topic in grouped_sorted %}

<!-- TOPIC TITLE -->
<h2 class="research-topic-title">
  {{ topic.name }}
</h2>

<!-- SINGLE COLUMN SHOWCASE -->
<div class="research-grid">

  {% for r in topic.items %}

  <div class="research-card">

    <!-- COVER IMAGE -->
    {% if r.cover_image %}
    <img src="{{ r.cover_image }}" class="research-image">
    {% endif %}

    <!-- CONTENT -->
    <div class="research-content">

      <div class="research-meta">

        {% if r.category %}
        <span class="research-category">
          {{ r.category }}
        </span>
        {% endif %}

      </div>

      <!-- TITLE -->
      <div class="research-title">
        {{ r.title }}
      </div>

      <!-- EXCERPT -->
      <div class="research-excerpt">
        {{ r.content | strip_html | truncate: 160 }}
      </div>

      <!-- LINK -->
      <a href="{{ r.url }}" class="research-link">
        Read more →
      </a>

    </div>

  </div>

  {% endfor %}

</div>

{% endfor %}