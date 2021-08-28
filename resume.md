---
title: Resume
layout: default
---

<!--img src="/assets/images/xkcd_diacritics.png" title="https://xkcd.com/1647/" width="200"/-->

📄 [**Download CV**](/cv_en.pdf)

## Work Experience

{% for job in site.data.jobs %}
[**{{ job.where.name }}**]({{ job.where.link }}) <br>
`{{ job.when }}` <br>
{{ job.role }}
{% endfor %}

## Education

{% for degree in site.data.education %}
[**{{ degree.where.name }}**]({{ degree.where.link }}) <br>
`{{ degree.when }}` <br>
{{ degree.name }} {% if degree.graduated %}🎓{% endif %}
{% endfor %}
