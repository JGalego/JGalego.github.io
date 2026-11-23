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

{% capture egg %}If you hovered this far, you may like to know that this pastiche was created way back in 2015 using <a href="https://github.com/google/deepdream">Google's DeepDream</a>, not one of those fancy new diffusion models - I'm old school like that! 👴{% endcapture %}
{% include egg.html src="/assets/images/profile_pastiche.webp" alt="AI-generated DeepDream pastiche portrait of João Galego" text=egg %}

My name is {% redact %}{{ firstName }} {{ lastName }}{% endredact %}, I'm `0x{{ dob | age | hex }}` years old, and I'm based in {% redact %}{{ city }}{% endredact %}, {% redact %}{{ country }}{% endredact %}.

I've built ML at [Siemens](https://www.siemens.com/), wrangled startups at [AWS](https://aws.amazon.com/), and now lead AI at [Critical Software](https://www.criticalsoftware.com/en).

I'm on a mission to [build AI that solves real problems for real people](https://dependable.jgalego.github.io).

[📄 Long CV](/assets/documents/cv_long.pdf){: .btn} // [<small>📃 shorter cv</small>](/assets/documents/cv_shorter.pdf){: .btn}

<img src="/assets/images/sonic.gif" width="10%" alt="Sonic the Hedgehog running animation"/>
