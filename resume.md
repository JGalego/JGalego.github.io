---
title: Resume
layout: default
---

📄 [**Download CV**](/assets/documents/cv_en.pdf)

### Work Experience

{% for job in site.data.jobs %}
[**{{ job.where.name }}**]({{ job.where.link }}) <br>
`{{ job.when }}` <br>
<sub><sup>{{ job.role }}</sup></sub>
{% endfor %}

### Education

{% for degree in site.data.education %}
[**{{ degree.where.name }}**]({{ degree.where.link }}) <br>
`{{ degree.when }}` <br>
<sub><sup>{{ degree.name }} {% if degree.graduated %}🎓{% endif %}<sub><sup>
{% endfor %}
