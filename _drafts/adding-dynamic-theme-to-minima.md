---
layout: post
title: "Adding dynamic theme to minima"
categories: []
tags: []
author: 
excerpt: 
published: false
---

Write your content here...

Update `_config.yml` to add
```
# theme: minima 
remote_theme: jekyll/minima

plugins:
  - jekyll-feed
  - jekyll-remote-theme

minima:
  skin: auto
```

References: 
- https://stackoverflow.com/questions/68518590/does-minima-dark-skin-work-on-github-pages

