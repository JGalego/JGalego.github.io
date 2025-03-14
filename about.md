---
title: About ✨
layout: default
---

<!-- Personal Info -->
{% assign firstName = site.data.personal.name.first %}
{% assign lastName = site.data.personal.name.last %}
{% assign dob = site.data.personal.date_of_birth | date: '%Y-%m-%d' %}
{% assign city = site.data.personal.residence.city %}
{% assign country = site.data.personal.residence.country %}

<!-- Professional Info -->
{% assign previousJobs = site.data.jobs | shift %}
{% assign currentJob = site.data.jobs | first %}
{% assign currentEdu = site.data.education | first %}
{% assign currentTeaching = site.data.teaching | first %}
{% assign currentRole = currentJob.roles | first %}

{% assign previousRoles = "" | split: ',' %}
{% for job in previousJobs %}
	{% for role in job.roles %}
		{% assign previousRoles = previousRoles | push: role.name | uniq %}
	{% endfor %}
{% endfor %}

<div title="If you hovered this far, you may like to know that this pastiche was created way back in 2015 using Google's DeepDream (https://github.com/google/deepdream), not one of those fancy new diffusion models - I'm old school like that! 👴">
<img src="assets/images/profile_pastiche.png" width="100%"/>
</div>

**TL;DR I am a non-empty set of things.**

My name is {% redact %}{{ firstName }} {{ lastName }}{% endredact %}, I’m `0x`{{ dob | age | hex }} y/o and I live in {% redact %}{{ city }}{% endredact %}, {% redact %}{{ country }}{% endredact %}.

I am a Physics nerd 🌌 and amateur sleuth 🕵️ with a soft spot for <big>big</big>, h͛͛͛a͛͛͛i͛͛͛r͛͛͛y͛͛͛ problems.

I love fixing the ~~un~~fixable, building the ~~im~~possible and learning new things along the way.

<!-- I've worn many hats 🎩 {{ previousRoles | reverse | join: ', ' }} and <small>god</small> knows what else. -->

Currently, I am a {{ currentRole.name }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}), {{ currentRole.desc }}{% if currentTeaching.when.end == nil %}, and I teach a few classes on {% for course in currentTeaching.what %}{% if forloop.last %} and {% endif -%}[{{ course.name }}]({{ course.link }}){% if forloop.rindex > 2 %}, {% endif -%}{% endfor %} at [{{ currentTeaching.where.name }}]({{ currentTeaching.where.link }}){% endif %}.

{% if currentEdu.when.end == nil %}
I also lead a double life as a {{ currentEdu.degree }} candidate in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}) 🎓, where my research focuses on {{ currentEdu.research }}.
{% endif %}

When I'm not working{% if currentTeaching.when.end == nil %} or teaching{% endif %}, you can usually find me browsing the local bookstore 📚, contributing to <a href="{{ site.data.contact.github }}">open source</a> 🐱‍💻 or enjoying some quality family time 👪.

[📄 Long CV](/assets/documents/cv_long.pdf){: .btn} // [📃 Shorter CV](/assets/documents/cv_shorter.pdf){: .btn}

<img src="/assets/images/sonic.gif" width="10%"/>
