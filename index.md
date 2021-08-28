---
title: Home
layout: default
---

<img class="profile-picture" src="assets/images/avatar.jpg">

I am a certified Physics nerd 🌌 and an amateur forensic scientist 🕵️ with a keen interest in challenging problems with real-world applications 🌍.

I've worked as a data analyst, software tester, DevOps engineer and ML consultant for several companies, in areas ranging from market research to fiber optic telecommunications and mobility.

Currently, I work as a DevOps engineer and ML consultant at the [Siemens Lisbon Tech Hub](https://www.youtube.com/watch?v=kVpoZRwASDU), while pursuing a PhD degree in Cognitive Science at [ULisboa](https://www.ulisboa.pt/en/).

My research focuses on the application of ML algorithms to improve the performance of EEG-based brain-computer interfaces 🧠.

## What's new?

{% for post in site.posts limit:3 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}