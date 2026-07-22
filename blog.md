---
title: Blog ✍️
layout: default
---

<div title="Meet BOSS, the Largest Structure in the Universe (https://www.smithsonianmag.com/smart-news/meet-boss-largest-structure-universe-180958378/) 🤯 Now that's what I call the fullest feeling of the sublime!">
<img src="assets/images/boss.jpg" width="100%"/>
</div>

<p>{{ site.posts.size }} posts on AWS, GenAI, agents and building AI that actually holds up. Pick a topic below, or browse everything.</p>

<div class="tag-filter">
<button class="tag-chip is-active" data-tag="all">All ({{ site.posts.size }})</button>
{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
{% assign key = tag[0] %}
{% assign meta = site.data.tags[key] %}
<button class="tag-chip" data-tag="{{ key }}">{% if meta %}{{ meta.emoji }} {{ meta.label }}{% else %}{{ key }}{% endif %} ({{ tag[1].size }})</button>
{% endfor %}
</div>

<div id="post-list">
{% for post in site.posts %}
<article class="post-card" data-tags="{{ post.tags | join: ' ' }}">

### [{{ post.title }}]({{ post.url }})

<div class="post-meta">
<time>{{ post.date | date: "%Y-%m-%d" }}</time>
{% for t in post.tags %}
{% assign meta = site.data.tags[t] %}
<span class="tag-label">{% if meta %}{{ meta.emoji }} {{ meta.label }}{% else %}{{ t }}{% endif %}</span>
{% endfor %}
</div>

{% assign excerptParts = post.excerpt | split: "<!-- excerpt-start -->" %}
{{ excerptParts[1] }}

</article>
{% endfor %}
</div>

<p id="empty-state" class="hidden">Nothing tagged with that topic yet — try another one.</p>

<script>
(function () {
  var chips = document.querySelectorAll(".tag-chip");
  var cards = document.querySelectorAll(".post-card");
  var empty = document.getElementById("empty-state");

  function applyTag(tag) {
    var chip = document.querySelector('.tag-chip[data-tag="' + tag + '"]') || chips[0];
    chips.forEach(function (c) { c.classList.remove("is-active"); });
    chip.classList.add("is-active");

    var visible = 0;
    cards.forEach(function (card) {
      var tags = (card.getAttribute("data-tags") || "").split(" ");
      var show = tag === "all" || tags.indexOf(tag) !== -1;
      card.style.display = show ? "" : "none";
      if (show) visible++;
    });
    empty.classList.toggle("hidden", visible !== 0);
  }

  chips.forEach(function (chip) {
    chip.addEventListener("click", function () {
      applyTag(chip.getAttribute("data-tag"));
    });
  });

  var hashTag = window.location.hash.replace("#", "");
  if (hashTag) applyTag(hashTag);
})();
</script>
