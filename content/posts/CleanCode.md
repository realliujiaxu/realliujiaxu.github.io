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
## 第一章 概述
### Clean Code的必要性
作者开头用了一段比较长的篇幅用一个例子说明了Clean Code的必要性，对于理解整本书的motivation十分重要。

随着时间流逝=>代码质量越来越差=>工程团队提出重构代码=>管理层被迫同意

问题在于并不是选出一个优秀的团队（tiger team）去重构代码就可以了，这个tiger team不仅要实现旧系统的所有功能，还要持续更新旧系统的变更。这个周期可能非常长，甚至出现tiger team的人员也离职、轮换的情况，导致新系统的代码质量同样堪忧，整个重构过程失去了意义。

### 态度：代码质量差责任在谁
先说答案：在我们自己，是我们不专业。

你可能会将代码质量差归咎于排期、频繁变化的需求等。然而，勇敢告诉管理者潜在的风险，这是工程师的职责所在。例如，对于外科手术医生，肯定不会因为患者催促就跳过洗手等准备步骤。

不能因为赶排期就降低代码质量。低质量的代码更有可能导致错过deadline，唯一正确的做法是一直尽可能维持clean code。
> The only way to go fast is to keep your code clean.

### 什么是clean code

- 优雅：易于阅读、逻辑清楚、容易发现bug
- 高效：性能接近最优，以防有人为了性能优化而去修改

## 第二章 命名
这部分参考了来自掘金的[文章](https://juejin.cn/post/6844904116766900231)。
我用引用的形式加入了示例。

1. 名副其实：名称不需要注释补充就可见其含义、用途
不要写多余的废话或者容易让人混淆的命名。
比如"customerObject"和"customer", "ProductInfo"和"ProductData"；这种就是意义混杂的废话。如果真的有区别，就用特定的可以区分的命名来描述它。
2. 使用读得出来的名称。
> 对于英语，读的出来的名称便于理解和记忆。
3. **使用可搜索的名称。**
> 单个字母的变量和数字常量经常作为单词或文件的一部分出现，可搜索的名称要求是完整的单词，如设置常量`MAX_CLASSES_PER_STUDENT=7`。
4. 类名和对象名应该是名词或名词短语。
5. 方法名应当是动词或动词短语。
6. 如postPayment、deletePage或save。属性访问器、修改器和断言应该根据其值命名，并依Javabean标准加上get、set和is前缀。
7. 每个抽象概念选一个词，并且一以贯之。
> 不要get、retrive混用。
8. 我的理解中，在同个领域模型中，就应该只有一个命名，比如订单号，同个系统中不应该出现TradeNo、OrderNo等多个命名。
> 就像写论文一样，同样的概念不要用多个同义词来指代
9. 尽量用术语（CS术语，算法，数学术语）命名
10. 尽管用那些计算机科学（Computer Science，CS）术语、算法名、模式名、数学术语。
11. 上一条无法做到的情况下，尽量使用源自所涉问题领域的名称。
12. 如果不能用程序员熟悉的术语来给手头的工作命名，就采用从所涉问题领域而来的名称。
13. 添加富有意义的语境，例如利用UserInfo类封装各种个人信息


