---
title: Home
layout: default
---

📍 [{{ site.data.location.city }}, {{ site.data.location.country }}]({{ site.data.location.maps }})

{% assign currentJob = site.data.jobs | first %}
{% assign currentEdu = site.data.education | first %}
{% assign currentRole = currentJob.roles | first %}

I am a bona fide Physics nerd 🌌 and an amateur sleuth 🕵️ with a strong proclivity for solving challenging problems with real-world applications 🌍.

As a {{ currentRole.name }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}), I {{ currentRole.desc }}.

{% if currentEdu.when.end == nil %}
As a {{ currentEdu.degree }} candidate in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}), my research focuses on {{ currentEdu.research }}.
{% endif %}

When I'm not working, you can usually find me browsing the local bookstore 📚, competing in hackathons 🐱‍💻 (both quantum and classical) or enjoying some quality family time 👪.

Follow me on <a href="{{ site.data.contact.linkedin }}" class="fa fa-linkedin"></a> or <a href="{{ site.data.contact.github }}" class="fa fa-github"></a> for additional content.

<img src="assets/images/profile_pastiche.png" width="75%"/>

## What's new?

{% for post in site.posts limit:5 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}