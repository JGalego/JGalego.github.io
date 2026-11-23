---
title: Projects 🛠️
layout: default
---

Things I've built and put on the web — click a card to try it out.

<ul class="project-grid" markdown="0">
{%- for p in site.data.projects %}
  {%- assign host = p.url | remove: "https://" | remove: "http://" | remove_last: "/" %}
  <li class="project-card">
    <a href="{{ p.url }}">
      <img src="{{ '/assets/images/projects/' | append: p.image | relative_url }}" width="640" height="400" loading="lazy" alt="Screenshot of the {{ p.name }} landing page"/>
      <span class="project-body">
        <span class="project-name">{{ p.name }}</span>
        <span class="project-desc">{{ p.description }}</span>
        <span class="project-url">{{ host }}</span>
      </span>
    </a>
  </li>
{%- endfor %}
</ul>
