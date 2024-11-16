---
title: Home 🏠
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

<div title="Did you know? 🧐 The developers of the 'Dinosaur Game' chose the dinosaur theme as a reference to the game's function, a joke that not having an internet connection is equivalent to living in the 'prehistoric ages'.">
<img src="assets/images/dinosaur.gif" width="100%"/>
</div>

My name is {% redact %}{{ firstName }} {{ lastName }}{% endredact %}, I’m `0x`{{ dob | age | hex }} y/o and I live in {% redact %}{{ city }}{% endredact %}, {% redact %}{{ country }}{% endredact %}.

I love fixing the ~~un~~fixable, building the ~~im~~possible and learning new things along the way.

I live by Feynman's credo: 🅴🆅🅴🆁🆈🆃🅷🅸🅽🅶 is interesting if you go deep enough 🐇 🕳️.

## What's new?

{% for post in site.posts limit:5 %}
{{ post.date | date: "%Y-%m-%d" }} [{{ post.title }}]({{ post.url }})
{% endfor %}
