---
title: Resume
layout: default
---

### 📄 [**Download CV**](/assets/documents/cv_en.pdf)

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
