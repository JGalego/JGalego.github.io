---
title: Home 🏠
layout: default
---

{% assign random = "now" | date: "%s%N" | modulo: site.data.quotes.size %}

<div title="Did you know? 🧐 The developers of the 'Dinosaur Game' chose the dinosaur theme as a reference to the game's function, a joke that not having an internet connection is equivalent to living in the 'prehistoric ages'. Talk about 'Rawr!' 🦖">
<img src="assets/images/dinosaur.gif" width="100%"/>
</div>

> <span id="quote"></span>
>
> <span id="person" style="font-weight:bold;"></span>

<script>
let quotes = {{ site.data.quotes | jsonify }}
var randIdx = Math.floor(Math.random() * quotes.length);
document.getElementById("quote").textContent = quotes[randIdx].quote;
document.getElementById("person").textContent = "― " + quotes[randIdx].person;
</script>

## What's new?

{% for post in site.posts limit:5 %}
{{ post.date | date: "%Y-%m-%d" }} [{{ post.title }}]({{ post.url }})
{% endfor %}
