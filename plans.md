---
layout: page
title: Plans
permalink: /plans/
---

{% for plan in site.plans %}
<div class="thin-project">
    <div class="thin-thumbnail">
        <a href="{{ site.baseurl }}{{ plan.url }}">
        {% if plan.img %}
        <img class="thin-thumbnail" src="{{ plan.img }}"/>
        {% else %}
        <div class="thin-thumbnail blankbox"></div>
        {% endif %}
        <span>
            <h1>{{ plan.title }}</h1>
        </span>
        </a>
    </div>
</div>
{% endfor %}
