---
title: Resume
layout: default
---

📄 [**Download CV**](/assets/documents/cv_en.pdf)

<img src="/assets/images/dilbert-resume.jpg" width="50%" style="max-width: 450px"/>

### Background

<table>
    <tr>
        <th>Work Experience</th>
        <th>Education</th>
    </tr>
    <tr>
        <td>
            {% for job in site.data.jobs %}
            <a href="{{ job.where.link }}"><b>{{ job.where.name }}</b></a> <br>
            {{ job.role }} <br>
            <tt>{{ job.when.start }}</tt> - <tt>{{ job.when.end | default: 'Present' }}</tt> <br>
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

### Technical Skills

<!-- Cloud skills -->

{% assign cloudSkills = site.data.skills.cloud | sort: 'name' %}

* Hands-on experience with major public cloud providers ({% for cloud in cloudSkills %}[{{ cloud.name }}]({{ cloud.url}}){% if forloop.last == false %}, {% endif %}{% endfor %}) ☁️

<!-- Programming skills -->

{% assign programmingSkills = site.data.skills.programming %}

* Working knowledge of multiple programming and scripting languages

{% for p_skill in programmingSkills %}
    - **{{ p_skill.level }}** - {{ p_skill.languages | sort | join: ", "}}
{% endfor %}

<!-- DevOps skills -->

{% assign devopsSkills = site.data.skills.devops | sort: 'area' %}

* Expert knowledge of multiple DevOps and DevSecOps tools

{% for do_skill in devopsSkills %}
{% assign devopsTools = do_skill.tools | sort: 'name' %}
    - **{{ do_skill.area }}** - {% for do_tool in devopsTools %}[{{ do_tool.name }}]({{ do_tool.url}}){% if forloop.last == false %}, {% endif %}{% endfor %}
{% endfor %}

<!-- Python skills -->

{% assign pythonSkills = site.data.skills.python %}

* Extensive experience with common Python packages

{% for py_skill in pythonSkills %}
{% assign pythonPackages = py_skill.packages | sort: 'name' %}
    - **{{ py_skill.area }}** - {% for py_pkg in pythonPackages %}[{{ py_pkg.name }}]({{ py_pkg.url}}){% if forloop.last == false %}, {% endif %}{% endfor %}
{% endfor %}

<!-- Data Science & MLE skills -->

{% assign mleSkills = site.data.skills.mle %}

* Expert knowledge of data and ML engineering tools and frameworks

{% for mle_skill in mleSkills %}
{% assign mleTools = mle_skill.tools | sort: 'name' %}
    - **{{ mle_skill.area }}** - {% for mle_tool in mleTools %}[{{ mle_tool.name }}]({{ mle_tool.url}}){% if forloop.last == false %}, {% endif %}{% endfor %}
{% endfor %}
