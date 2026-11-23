---
layout: default
---

{% capture egg %}Did you know? 🧐 The developers of the 'Dinosaur Game' chose the dinosaur theme as a reference to the game's function, a joke that not having an internet connection is equivalent to living in the 'prehistoric ages'. Talk about 'Rawr!' 🦖{% endcapture %}
{% include egg.html video="/assets/videos/dino-agent.mp4" width=600 height=150 alt="A Q-learning agent playing the Chrome dino game" text=egg %}

{% comment %} Rendered with the first quote so the page works without JavaScript; the script below swaps in a random one. {% endcomment %}
{% assign q = site.data.quotes | first %}
<blockquote markdown="0">
<p><span id="quote">{{ q.quote | escape }}</span></p>
<p><span id="person" style="font-weight:bold;">― {{ q.person | escape }}</span></p>
</blockquote>

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
