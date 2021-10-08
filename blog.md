---
title: Blog
layout: default
---

<img src="/assets/images/blog.gif" width="50%" style="max-width: 300px; margin-left: auto; margin-right: auto; display: block"/>

{% for post in site.posts %}
### [{{ post.title }}]({{ post.url }})

{% assign excerptParts = post.excerpt | split: "<!-- excerpt-start -->" %}
{{ excerptParts[1] }}

{% endfor %}
