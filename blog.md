---
title: Blog ✍️
layout: default
---

<div title="Meet BOSS, the Largest Structure in the Universe (https://www.smithsonianmag.com/smart-news/meet-boss-largest-structure-universe-180958378/) 🤯 Now that's what I call the fullest feeling of the sublime!">
<img src="assets/images/boss.jpg" width="100%"/>
</div>

{% for post in site.posts %}
### [{{ post.title }}]({{ post.url }})

{% assign excerptParts = post.excerpt | split: "<!-- excerpt-start -->" %}
{{ excerptParts[1] }}

---
{% endfor %}
