---
title: Blog ✍️
layout: default
---

{% capture egg %}Meet <a href="https://www.smithsonianmag.com/smart-news/meet-boss-largest-structure-universe-180958378/">BOSS, the Largest Structure in the Universe</a> 🤯 Now that's what I call the fullest feeling of the sublime!{% endcapture %}
{% include egg.html src="/assets/images/boss.jpg" alt="Baryon Oscillation Spectroscopic Survey (BOSS) map, the largest known structure in the universe" text=egg %}

<div class="blog-layout">

<nav class="tag-filter" aria-label="Filter posts by topic" markdown="0">
<span class="tag-filter-title">Topics</span>
<button type="button" class="tag-chip is-active" data-tag="all" aria-pressed="true"><span>All</span> <span class="n">{{ site.posts.size }}</span></button>
{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
{% assign key = tag[0] %}
{% assign meta = site.data.tags[key] %}
<button type="button" class="tag-chip" id="{{ key }}" data-tag="{{ key }}" aria-pressed="false"><span>{% if meta %}{{ meta.emoji }} {{ meta.label }}{% else %}{{ key }}{% endif %}</span> <span class="n">{{ tag[1].size }}</span></button>
{% endfor %}
</nav>

<div class="blog-posts">

<div id="post-list">
{% for post in site.posts %}
<article class="post-card" data-tags="{{ post.tags | join: ' ' }}">

### [{{ post.title }}]({{ post.url }})

<div class="post-meta">
<time>{{ post.date | date: "%Y-%m-%d" }}</time>
{% for t in post.tags %}
{% assign meta = site.data.tags[t] %}
<a class="tag-label" href="#{{ t }}">{% if meta %}{{ meta.emoji }} {{ meta.label }}{% else %}{{ t }}{% endif %}</a>
{% endfor %}
</div>

{% assign excerptParts = post.excerpt | split: "<!-- excerpt-start -->" %}
{{ excerptParts[1] }}

</article>
{% endfor %}
</div>

<p id="empty-state" class="hidden">Nothing tagged with that topic yet — try another one.</p>

</div>

</div>

<script>
(function () {
  var chips = document.querySelectorAll(".tag-chip");
  var cards = document.querySelectorAll(".post-card");
  var empty = document.getElementById("empty-state");

  function applyTag(tag) {
    var chip = chips[0];
    chips.forEach(function (c) { if (c.getAttribute("data-tag") === tag) chip = c; });
    tag = chip.getAttribute("data-tag");
    chips.forEach(function (c) {
      c.classList.toggle("is-active", c === chip);
      c.setAttribute("aria-pressed", c === chip ? "true" : "false");
    });

    var visible = 0;
    cards.forEach(function (card) {
      var tags = (card.getAttribute("data-tags") || "").split(" ");
      var show = tag === "all" || tags.indexOf(tag) !== -1;
      card.style.display = show ? "" : "none";
      if (show) visible++;
    });
    empty.classList.toggle("hidden", visible !== 0);
  }

  // Keep the selected topic in the URL (/blog#aws) so a filtered view can be
  // shared or bookmarked.
  chips.forEach(function (chip) {
    chip.addEventListener("click", function () {
      var tag = chip.getAttribute("data-tag");
      applyTag(tag);
      history.replaceState(null, "", tag === "all" ? window.location.pathname + window.location.search : "#" + tag);
    });
  });

  function applyHash() {
    applyTag(decodeURIComponent(window.location.hash.replace("#", "")) || "all");
  }
  window.addEventListener("hashchange", applyHash);
  if (window.location.hash) applyHash();
})();
</script>
