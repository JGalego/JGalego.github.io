---
title: Home
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
{% assign currentRole = currentJob.roles | first %}

<div title="If you hovered this far, this pastiche was created way back in 2015 using Google's DeepDream (https://github.com/google/deepdream), not one of those fancy new diffusion models - I'm old school like that! 👴">
<img src="assets/images/profile_pastiche.png" width="100%"/>
</div>

## `std::cout << "Hi everyone!\n"; 👋`

My name is {% redact %}{{ firstName }} {{ lastName }}{% endredact %}, I’m `0x`{{ dob | age | hex }} y/o, and I live in {% redact %}{{ city }}{% endredact %}, {% redact %}{{ country }}{% endredact %}.

I love fixing the ~~un~~fixable, building the ~~im~~possible and learning new things along the way.

I live by Feynman's credo: **everything** is interesting if you go deep enough 🐇 🕳️.

## What's new?

{% for post in site.posts limit:5 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}
