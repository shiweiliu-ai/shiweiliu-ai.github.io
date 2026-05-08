---
layout: archive
title: "Lab News"
permalink: /news/
author_profile: true
---

<div class="news-grid">

  {% for news in site.news reversed %}
  <div class="news-card">

    {% if news.image %}
    <img src="{{ news.image }}" class="news-image">
    {% endif %}

    <div class="news-content">

      <!-- 日期 + 类别同行 -->
      <div class="news-meta">
        <span class="news-date">
          {{ news.date | date: "%Y-%m-%d" }}
        </span>

        <span class="news-category">
          {{ news.category }}
        </span>
      </div>

      <div class="news-title">
        {{ news.title }}
      </div>

      <div class="news-excerpt">
        {{ news.content | strip_html | truncate: 120 }}
      </div>

      <a href="{{ news.url }}" class="news-link">Read more →</a>

    </div>
  </div>
  {% endfor %}

</div>