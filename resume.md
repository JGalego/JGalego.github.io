---
title: Resume
layout: default
---

📄 [**Download CV**](/assets/documents/cv_en.pdf)

### Work Experience

{% for job in site.data.jobs %}
[**{{ job.where.name }}**]({{ job.where.link }}) <br>
`{{ job.when.start }} - {{ job.when.end | default: 'Present' }}` <br>
<sub><sup>{{ job.role }}</sup></sub>
{% endfor %}

### Education

{% for course in site.data.education %}
[**{{ course.where.name }}**]({{ course.where.link }}) <br>
`{{ course.when.start }} - {{ course.when.end | default: 'Present' }}`<br>
<sub><sup>{{ course.degree }} {{ course.area }} {% if course.graduated %}🎓{% endif %}<sub><sup>
{% endfor %}
