---
layout: news
title: News
header:
  overlay_color: "#000"
  overlay_filter: "0.8"
  overlay_image: /images/banner.jpg
permalink: /news/
---

{% assign post = site.posts.first %}
{% assign content = post.content %}

<h1 class="entry-title">
{% if post.title %}
    {{ post.title }}
{% endif %}
</h1>

<p align="right"><b><small>{{ post.date | date: "%b %-d, %Y" }}</small></b></p>
{{ content }}

<div>
{% for post in site.posts offset:1 limit:1%}
    <a class="btn btn--inverse" href="{{ root_url }}{{ post.url }}">Next</a>
{% endfor %}
</div>
