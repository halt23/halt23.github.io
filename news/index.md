---
layout: news
title: News
header:
  overlay_color: "#000"
  overlay_filter: "0.8"
  overlay_image: /images/banner2.png
permalink: /news/
---

{% assign post = site.posts.first %}
{% assign content = post.content %}

<h1 class="entry-title">
{% if post.title %}
    {{ post.title }}
{% endif %}
</h1>

{{ content }}

<div>
  {% if page.next.url %}
    <a class="btn btn--inverse" href="{{page.next.url}}">Back</a>
  {% endif %}
  {% if page.previous.url %}
    <a class="btn btn--inverse" href="{{page.previous.url}}">Next</a>
  {% endif %}
</div>
