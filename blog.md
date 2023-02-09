---
title: Blog
layout: default
---

<div title="In memoriam of John Conway (1937-2020)">
<img src="assets/images/conway_gol.jpg" width="100%" height="175px"/>
</div>

{% for post in site.posts %}
### [{{ post.title }}]({{ post.url }})

{% assign excerptParts = post.excerpt | split: "<!-- excerpt-start -->" %}
{{ excerptParts[1] }}

{% endfor %}
