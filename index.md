---
title: Home
layout: default
---

{% assign currentJob = site.data.jobs | first %}
{% assign currentEdu = site.data.education | first %}
{% assign currentRole = currentJob.roles | first %}

## Who am I?

📍 [{{ site.data.location.city }}, {{ site.data.location.country }}]({{ site.data.location.maps }})

`print('Hi everyone!')` 👋 

I am a {{ currentRole.name }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}), where I {{ currentRole.desc }}.

{% if currentEdu.when.end == nil %}
I also lead a double life as a {{ currentEdu.degree }} candidate in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}), where my research focuses on {{ currentEdu.research }}.
{% endif %}

I am a *bona fide* Physics nerd 🌌 and an amateur sleuth 🕵️ with a penchant for solving challenging problems with real-world applications 🌍.

When I'm not working, you can usually find me 1) browsing the local bookstore 📚, 2) competing in hackathons (both quantum and classical) 🐱‍💻 or 3) enjoying some quality family time 👪.

Follow me on <a href="{{ site.data.contact.linkedin }}" class="fa fa-linkedin"></a> or <a href="{{ site.data.contact.github }}" class="fa fa-github"></a> for additional content.

<img src="assets/images/profile_pastiche.png" width="75%"/>

## What's new?

{% for post in site.posts limit:5 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}
