---
title: Resume
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

<div title="Meet the BOSS, the Largest Structure in the Universe (https://www.smithsonianmag.com/smart-news/meet-boss-largest-structure-universe-180958378/) 🤯 Talk about fullest feeling of the sublime!">
<img src="assets/images/boss.jpg" width="100%" height="175px"/>
</div>

## About Me

I am a Physics nerd 🌌 and an amateur sleuth 🕵️ with a penchant for solving challenging problems with real-world applications 🌍.

I've worn many hats 🎩 {{ previousRoles | reverse | join: ', ' }}, and god knows what else. On a good day, I see myself as a jack of all trades, master of some 🐙.

Currently, I work as a {{ currentRole.name }} at [{{ currentJob.where.name }}]({{ currentJob.where.link }}), {{ currentRole.desc }}.

{% if currentEdu.when.end == nil %}
I also lead a double life as a {{ currentEdu.degree }} candidate in {{ currentEdu.area }} at [{{ currentEdu.where.name }}]({{ currentEdu.where.link }}) 🎓, where my research focuses on {{ currentEdu.research }}.
{% endif %}

When I'm not working{% if currentEdu.when.end == nil %} or studying{% endif %}, you can usually find me browsing the local bookstore 📚, competing in hackathons 🐱‍💻 or enjoying some quality family time 👪.

I'm quite liberal about <a href="{{ site.data.contact.linkedin }}" class="fa fa-linkedin"></a> and I occasionally `git push` things to <a href="{{ site.data.contact.github }}" class="fa fa-github"></a>.

<button name="download_cv" onclick="/assets/documents/cv_en.pdf">📄 Download CV</button>

<!--img src="/assets/images/dilbert-resume.jpg" width="50%" style="max-width: 450px"/-->

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