---
title: Home
layout: default
---

<img class="profile-picture" src="assets/images/avatar.jpg">

<sub><sup>📍 [{{ site.data.location.city }}, {{ site.data.location.country }}]({{ site.data.location.maps }})</sup></sub>

I am a certified Physics nerd 🌌 and an amateur forensic scientist 🕵️ with a keen interest in challenging problems with real-world applications 🌍.

I've worked as a data analyst, software tester, DevOps engineer and ML consultant for several companies, in areas ranging from market research to fiber optic telecommunications and mobility.

{% assign currentJob = site.data.jobs | first %}

Currently, I work as a {{ currentJob.role }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}), while pursuing a PhD degree in Cognitive Science at [ULisboa](https://www.ulisboa.pt/en/). My research focuses on the application of ML algorithms to improve the performance of EEG-based brain-computer interfaces 🧠.

## What's new?

{% for post in site.posts limit:3 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}