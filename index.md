---
title: Home 🏠
layout: default
---

<div title="Did you know? 🧐 The developers of the 'Dinosaur Game' chose the dinosaur theme as a reference to the game's function, a joke that not having an internet connection is equivalent to living in the 'prehistoric ages'.">
<img src="assets/images/dinosaur.gif" width="100%"/>
</div>

I live by Feynman's credo: 🅴🆅🅴🆁🆈🆃🅷🅸🅽🅶 is interesting if you go deep enough 🐇 🕳️.

## What's new?

{% for post in site.posts limit:5 %}
{{ post.date | date: "%Y-%m-%d" }} [{{ post.title }}]({{ post.url }})
{% endfor %}
