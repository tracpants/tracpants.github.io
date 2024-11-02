---
layout: page
title: Archive
permalink: /archive/
---

{% for post in site.posts %}
  {% assign current_year = post.date | date: "%Y" %}
  {% if current_year != previous_year %}
## {{ current_year }}
  {% assign previous_year = current_year %}
  {% endif %}
* {{ post.date | date: "%B %-d" }} - [{{ post.title }}]({{ post.url }})
{% endfor %}
