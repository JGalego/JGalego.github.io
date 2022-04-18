---
title: Home
layout: default
---

📍 [{{ site.data.location.city }}, {{ site.data.location.country }}]({{ site.data.location.maps }})

{% assign currentJob = site.data.jobs | first %}
{% assign currentEdu = site.data.education | first %}
{% assign currentRole = currentJob.roles | first %}

I am a bona fide Physics nerd 🌌 and an amateur sleuth 🕵️ with a strong proclivity for solving challenging problems with real-world applications 🌍.

I work as a {{ currentRole.name }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}){% if currentRole.desc != nil %}, where I {{ currentRole.desc }}{% endif %}{% if currentEdu.when.end == nil %}, while pursuing a {{ currentEdu.degree }} in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}){% if currentEdu.research %}, where my research focuses on {{ currentEdu.research }}{% endif %}{% endif %}.

When I'm not working, you can usually find me browsing the local bookstore 📚, competing in hackathons 🐱‍💻 (both quantum and classical) or enjoying some quality family time 👪.

Follow me on <a href="{{ site.data.contact.linkedin }}" class="fa fa-linkedin"></a> or <a href="{{ site.data.contact.github }}" class="fa fa-github"></a> for additional content.

<img src="assets/images/profile_pastiche.png" width="75%"/>

## What's new?

{% for post in site.posts limit:5 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}