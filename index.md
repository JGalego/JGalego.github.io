---
title: Home
layout: default
---

📍 [{{ site.data.location.city }}, {{ site.data.location.country }}]({{ site.data.location.maps }})

I am a certified Physics nerd 🌌 and an amateur forensic scientist 🕵️ with a keen interest in solving challenging problems with real-world applications 🌍.

I've worked as a data analyst, software tester, DevOps engineer and ML consultant for several companies, in areas ranging from market research to fiber optic telecommunications and mobility.

{% assign currentJob = site.data.jobs | first %}
{% assign currentEdu = site.data.education | first %}

Currently, I work as a **{{ currentJob.role }}** at [{{ currentJob.where.name }}]({{ currentJob.where.link }}){% if currentEdu.when.end == nil %}, while pursuing a {{ currentEdu.degree }} in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}). {% if currentEdu.research %} My research focuses on {{ currentEdu.research }}.{% endif %}{% endif %}

When I'm not working, you can usually find me browsing the local bookstore 📚, participating in hackathons 🐱‍💻 or enjoying some quality family time 👪.

Follow me on <a href="{{ site.data.contact.linkedin }}" class="fa fa-linkedin"></a> or <a href="{{ site.data.contact.github }}" class="fa fa-github"></a> for additional content.

<img src="assets/images/profile_pastiche.png" width="75%" /><!--style="max-width: 500px"/-->

## What's new?

{% for post in site.posts limit:3 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}