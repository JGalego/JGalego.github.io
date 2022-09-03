---
title: Home
layout: default
---

{% assign currentJob = site.data.jobs | first %}
{% assign currentEdu = site.data.education | first %}
{% assign currentRole = currentJob.roles | first %}

```python
print('Hi everyone!')
```

My name is João Galego, but everyone just calls me Galego 👋  I'm currently living in 📍 [{{ site.data.location.city }}, {{ site.data.location.country }}]({{ site.data.location.maps }})

I am a *bona fide* Physics nerd 🌌 and an amateur sleuth 🕵️ with a penchant for solving challenging problems with real-world applications 🌍.

Over the years, I've worked as a data analyst, software tester, DevOps engineer and machine learning (ML) consultant for several companies, across multiple industries. Currently, I work as a {{ currentRole.name }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}), where I {{ currentRole.desc }}.

{% if currentEdu.when.end == nil %}
I also lead a double life as a {{ currentEdu.degree }} candidate in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}), where my research focuses on {{ currentEdu.research }}.
{% endif %}

When I'm not working, you can usually find me 1) browsing the local bookstore 📚, 2) competing in hackathons (both quantum and classical) 🐱‍💻 or 3) enjoying some quality family time 👪.

Follow me on <a href="{{ site.data.contact.linkedin }}" class="fa fa-linkedin"></a> or <a href="{{ site.data.contact.github }}" class="fa fa-github"></a> for additional content.

<img src="assets/images/profile_pastiche.png" width="75%"/>

## What's new?

{% for post in site.posts limit:5 %}
[{{ post.title }}]({{ post.url }})
{% endfor %}

## Useful Links

* Looking for resources on Startups?
    - [AWS Activate](https://aws.amazon.com/activate/) offers startups, founders and entrepreneurs a wide range of benefits like AWS credits (up to $100k), support plans and expert architectural guidance to help their businesses flourish
    - [AWS Startup Loft Accelerator](https://aws-startup-lofts.com/emea/program/accelerator) is an equity-free program focused on supporting early stage startups in EMEA
    - The [AWS Startups Blog](https://aws.amazon.com/blogs/startups/) is a great way to keep up-to-date on what's happening within the startup ecosystem
    - Finally, be sure to check the [AWS Startups](https://aws.amazon.com/startups) landing page
* Quick tips for those in a hurry
    - For a quick tour of (almost) every programming language, check out [Learn X in Y minutes](https://learnxinyminutes.com/)
    - For cost estimation on AWS, use the [AWS Pricing Calculator](https://calculator.aws/)
        * If you're using Terraform, check out [Infracost](https://infracost.io) - it integrates nicely with GitOps and CI/CD workflows
        * For migrations, check out [Migration Evaluator](https://aws.amazon.com/migration-evaluator) (formerly known as TSO Logic)
    - Need a quick way to create an IAM policy, try out [AWS Policy Generator](https://awspolicygen.s3.amazonaws.com/policygen.html)

## Fun Stuff

* [xkcd](https://xkcd.com) - a webcomic of romance, sarcasm, math, and language
* [smbc](https://smbc-comics.com) - a webcomic that covers science, research, superheroes, religion, romance, dating, parenting and the meaning of life (uff!)