---
title: About ✨
layout: default
---

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

<div title="If you hovered this far, this pastiche was created way back in 2015 using Google's DeepDream (https://github.com/google/deepdream), not one of those fancy new diffusion models - I'm old school like that! 👴">
<img src="assets/images/profile_pastiche.png" width="100%"/>
</div>

tl;dr I am a non-empty set of things.

I am a Physics nerd 🌌 and an amateur sleuth 🕵️ with a penchant for solving challenging problems with real-world applications 🌍.

I've worn many hats 🎩 {{ previousRoles | reverse | join: ', ' }} and <small>god</small> knows what else.

On a good day, I see myself as a jack of all trades, master of some 🐙.

Currently, I work as a {{ currentRole.name }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}), {{ currentRole.desc }}{% if currentTeaching.when.end == nil %}, and I teach a few classes on {% for course in currentTeaching.what %}{% if forloop.last %} and {% endif -%}[{{ course.name }}]({{ course.link }}){% if forloop.rindex > 2 %}, {% endif -%}{% endfor %} at [{{ currentTeaching.where.name }}]({{ currentTeaching.where.link }}){% endif %}.

{% if currentEdu.when.end == nil %}
I also lead a double life as a {{ currentEdu.degree }} candidate in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}) 🎓, where my research focuses on {{ currentEdu.research }}.
{% endif %}

When I'm not working{% if currentEdu.when.end == nil %} or studying{% endif %}{% if currentTeaching.when.end == nil %} or teaching{% endif %}, you can usually find me browsing the local bookstore 📚, contributing to open source 🐱‍💻 or enjoying some quality family time 👪.

I'm quite liberal about <a href="{{ site.data.contact.linkedin }}" class="fa fa-linkedin"></a> and I occasionally `git push` things to <a href="{{ site.data.contact.github }}" class="fa fa-github"></a>.

[📄 Download CV](/assets/documents/cv_en.pdf){: .btn}

<img src="/assets/images/sonic.gif" width="10%"/>

<!--
<table>
    <tr>
        <th>Work Experience</th>
        <th>Education</th>
    </tr>
    <tr>
        <td>
            {% for job in site.data.jobs %}
            <a href="{{ job.where.link }}"><b>{{ job.where.name }}</b></a> <br>
            {% for role in job.roles %}
            {{ role.name }} <br>
            <tt>{{ role.when.start }}</tt> - <tt>{{ role.when.end | default: 'Present' }}</tt> <br>
            {% endfor %}
            {% if forloop.last == false %}
            <br>
            {% endif %}
            {% endfor %}
        </td>
        <td>
            {% for course in site.data.education %}
            <a href="{{ course.where.link }}"><b>{{ course.where.name }}</b></a> <br>
            {{ course.degree }} {{ course.area }} {% if course.graduated %}🎓{% endif %} <br>
            <tt>{{ course.when.start }}</tt> - <tt>{{ course.when.end | default: 'Present' }}</tt> <br>
            {% if forloop.last == false %}
            <br>
            {% endif %}
            {% endfor %}
        </td>
    </tr>
</table>
-->