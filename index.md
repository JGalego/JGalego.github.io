---
title: Home
layout: default
---

{% assign previousJobs = site.data.jobs | shift %}
{% assign currentJob = site.data.jobs | first %}
{% assign currentEdu = site.data.education | first %}
{% assign currentRole = currentJob.roles | first %}

{% assign previousRoles = "" | split: ',' %}
{% for job in previousJobs %}
	{% for role in job.roles %}
		{% assign previousRoles = previousRoles | push: role.name | uniq %}
	{% endfor %}
{% endfor %}

## `std::cout << "Hi everyone!\n"; 👋`

My name is `{% raw %}{{ name }}{% endraw %}`, I’m `{% raw %}{{ age }}{% endraw %}` y/o, and I live in `{% raw %}{{ location }}{% endraw %}`.

I am a Physics nerd 🌌 and an amateur sleuth 🕵️ with a penchant for solving challenging problems with real-world applications 🌍. I love fixing the ~~un~~fixable.

I've worn many hats 🎩  throughout my professional career - {{ previousRoles | reverse | join: ', ' }}, and god knows what else. On a good day, I see myself as a jack of all trades, master of some 🐙.

Currently, I work as a {{ currentRole.name }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}), {{ currentRole.desc }}.

{% if currentEdu.when.end == nil %}
I also lead a double life as a {{ currentEdu.degree }} candidate in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}) 🎓, where my research focuses on {{ currentEdu.research }}.
{% endif %}

When I'm not working{% if currentEdu.when.end == nil %} or studying{% endif %}, you can usually find me browsing the local bookstore 📚, competing in hackathons 🐱‍💻 or enjoying some quality family time 👪.

I'm quite liberal about <a href="{{ site.data.contact.linkedin }}" class="fa fa-linkedin"></a> and I occasionally `push` things to <a href="{{ site.data.contact.github }}" class="fa fa-github"></a>.

<div title="If you hovered this far, this pastiche was created using Google's DeepDream (https://github.com/google/deepdream) way back in 2015, not one of those fancy diffusion models - I'm old school like that! 👴">
<img src="assets/images/profile_pastiche.png" width="75%"/>
</div>

## What's new?

{% for post in site.posts limit:5 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}
