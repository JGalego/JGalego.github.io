---
title: Blog
layout: default
---

{% for post in site.posts %}
### [{{ post.title }}]({{ post.url }})

{% assign excerptParts = post.excerpt | split: "<!-- excerpt-start -->" %}
{{ excerptParts[1] }}

{% endfor %}
