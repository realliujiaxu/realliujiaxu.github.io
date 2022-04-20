---
title: "CleanCode笔记"
subtitle: ""
date: 2022-04-20T20:54:13+08:00
lastmod: 2022-04-20T20:54:13+08:00
draft: false
author: ""
authorLink: ""
description: ""
license: ""
images: []

tags: [读书笔记]
categories: [技术]
featuredImage: ""
featuredImagePreview: ""

hiddenFromHomePage: false
hiddenFromSearch: false
twemoji: false
lightgallery: true
ruby: true
fraction: true
fontawesome: true
linkToMarkdown: true
rssFullText: false

toc:
  enable: true
  auto: true
code:
  copy: true
  # ...
math:
  enable: true
  # ...
mapbox:
  accessToken: ""
  # ...
share:
  enable: true
  # ...
comment:
  enable: true
  # ...
library:
  css:
    # someCSS = "some.css"
    # 位于 "assets/"
    # 或者
    # someCSS = "https://cdn.example.com/some.css"
  js:
    # someJS = "some.js"
    # 位于 "assets/"
    # 或者
    # someJS = "https://cdn.example.com/some.js"
seo:
  images: []
  # ...
---

## Clean Code的必要性
作者开头用了一段比较长的篇幅用一个例子说明了Clean Code的必要性，对于理解整本书的motivation十分重要。

随着时间流逝=>代码质量越来越差=>工程团队提出重构代码=>管理层被迫同意

问题在于并不是选出一个优秀的团队（tiger team）去重构代码就可以了，这个tiger team不仅要实现旧系统的所有功能，还要持续更新旧系统的变更。这个周期可能非常长，甚至出现tiger team的人员也离职、轮换的情况，导致新系统的代码质量同样堪忧，整个重构过程失去了意义。

## 态度：代码质量差责任在谁
先说答案：在我们自己，是我们不专业。

你可能会将代码质量差归咎于排期、频繁变化的需求等。然而，勇敢告诉管理者潜在的风险，这是工程师的职责所在。例如，对于外科手术医生，肯定不会因为患者催促就跳过洗手等准备步骤。

不能因为赶排期就降低代码质量。低质量的代码更有可能导致错过deadline，唯一正确的做法是一直尽可能维持clean code。
> The only way to go fast is to keep your code clean.

## 什么是clean code

- 优雅：易于阅读、逻辑清楚、容易发现bug
- 高效：性能接近最优，以防有人为了性能优化而去修改
