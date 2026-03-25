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

My name is {% redact %}{{ firstName }} {{ lastName }}{% endredact %}, I'm `0x{{ dob | age | hex }}` years old, and I'm based in {% redact %}{{ city }}{% endredact %}, {% redact %}{{ country }}{% endredact %}.

I've built ML at [Siemens](https://www.siemens.com/), wrangled startups at [AWS](https://aws.amazon.com/), and now lead AI at [Critical Software](https://www.criticalsoftware.com/en).

I'm on a mission to [build AI that solves real problems for real people](https://dependable.critical-ai.dev).

[📄 Long CV](/assets/documents/cv_long.pdf){: .btn} // [<small>📃 shorter cv</small>](/assets/documents/cv_shorter.pdf){: .btn}

<img src="/assets/images/sonic.gif" width="10%"/>
