---
layout: default
title: "Home"
---

# Posts

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url }})
{% endfor %}
