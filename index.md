---
title: Home
layout: default
---

{% assign currentJob = site.data.jobs | first %}
{% assign currentEdu = site.data.education | first %}
{% assign currentRole = currentJob.roles | first %}

## Who am I?

```cpp
std::cout << "Hi everyone!\n"; 👋
```

My name is `{% raw %}{{ name }}{% endraw %}`, I’m `{% raw %}{{ age }}{% endraw %}` yo, and I live in `{% raw %}{{ location }}{% endraw %}`.

I am a *bona fide* Physics nerd 🌌 and an amateur sleuth 🕵️ with a penchant for solving challenging problems with real-world applications 🌍.

I work as a {{ currentRole.name }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}), {{ currentRole.desc }}.

{% if currentEdu.when.end == nil %}
I lead a double life as a {{ currentEdu.degree }} candidate in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}), where my research focuses on {{ currentEdu.research }}.
{% endif %}

When I'm not working{% if currentEdu.when.end == nil} or studying{% endif %}, you can usually find me browsing the local bookstore 📚, competing in hackathons 🐱‍💻 or enjoying some quality family time 👪.

Feel free to connect with me on <a href="{{ site.data.contact.linkedin }}" class="fa fa-linkedin"></a> or <a href="{{ site.data.contact.github }}" class="fa fa-github"></a>.

<div title="If you hovered this far, this pastiche was created using Google's DeepDream (https://github.com/google/deepdream) way back in 2015, not one of those fancy diffusion models - I'm old school like that! 👴">
	<img src="assets/images/profile_pastiche.png" width="75%"/>
</div>

## What's new?

{% for post in site.posts limit:5 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}
