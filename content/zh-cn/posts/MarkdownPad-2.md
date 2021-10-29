
+++
author = "q14060"
title = "MarkdownPad2的安装、配置、优化"
date = "2021-10-29T20:34:48+08:00"
description = "风范网是一个用于记录生活、分享软件、分享技术教程和房屋装修避坑平台，我们的宗旨是乐于分享，收获快乐！"
featured = true
draft = false
comment = false
 toc = true
reward = false
diagram = true
math = true
categories = ["电脑软件"
]
tags = [
  "md",
  "Markdown",
  "电脑软件",
"MarkdownPad2",
]

series = [
  "工具"
]
aliases = ["MarkdownPad"]
images = [
  "https://img.fengfan.win/blogimg/202110292046420.jpg?width=180px&height=110px"
]

+++



## Markdown 介绍  ##


> Markdown 是一种轻量级标记语言，它允许人们使用易读易写的纯文本格式编写文档，然后转换成格式丰富的HTML页面。 —— **维基百科**

---

> Markdown提供了简洁、高效的文档标记语法，被广泛运用于各种开源项目的README文档、说明文档等。同时Markdown语法还兼容HTML语法，在某些场合也可以使用HTML语法来增强Markdown的展现格式。但是一般不建议这样使用，以免导致一些平台对Markdown的兼容问题。


掌握了 Markdown 语法进行写作，可以让多个开发者在编写文档时按照相同的格式写作。同时 Markdown 还能转换为各种其他格式，如 PDF、HTML，甚至通过 pandoc 工具还能转化为 word 格式。因此，掌握 Markdown 对于一个开发者来说是非常重要的一项技能。




## Markdown 编辑器 ##
目前来看，支持Markdown语法的编辑器有很多，其中网页版的多一些，windows桌面版的相对少一些，我下载了多款编辑器，经试用，我觉得 MarkdownPad 2 是最顺手的。
![](https://img.fengfan.win/blogimg/202110292043750.png)
下面说一下 MarkdownPad 2 的安装、配置



##   MarkdownPad 2 的安装、配置##

1. 下载<br>
MarkdownPad 2 的最新版本是 V2.5(当前时间是2021/10/29 )，建议下载安装版的，不要绿色版的。
MarkdownPad 2 的官网下载地址： [http://markdownpad.com/](http://markdownpad.com/ "http://markdownpad.com/")<br>
选择 Free版下载。

2. 安装 
<br>下一步，下一步，不说了<br>
3. 申请购买序列号<br>
此处省略。<br>
序列号生成器下载地址


## 异常 ##
在win10下，html渲染错误 `This view has crashed`<br>
这个异常在 MarkdownPad 的 FAQ（ http://markdownpad.com/faq.html#livepreview-directx） 给出了解决办法。<br>
![](https://img.fengfan.win/blogimg/202110292115852.png)

## 解决方法总结如下： ##

（1）、下载 Microsoft’s DirectX End-User Runtimes (June 2010)<br>
地址：[https://download.microsoft.com/download/8/4/A/84A35BF1-DAFE-4AE8-82AF-AD2AE20B6B14/directx_Jun2010_redist.exe](https://download.microsoft.com/download/8/4/A/84A35BF1-DAFE-4AE8-82AF-AD2AE20B6B14/directx_Jun2010_redist.exe "https://download.microsoft.com/download/8/4/A/84A35BF1-DAFE-4AE8-82AF-AD2AE20B6B14/directx_Jun2010_redist.exe")

（2）、下载 awesomium_v1.6.6_sdk<br>
地址: [http://markdownpad.com/download/awesomium_v1.6.6_sdk_win.exe](http://markdownpad.com/download/awesomium_v1.6.6_sdk_win.exe "http://markdownpad.com/download/awesomium_v1.6.6_sdk_win.exe")
<br>下载安装即可解决问题。

## 修改markdown处理器和渲染模式（必须修改） ##
看图设置<br>
markdown 处理器和渲染模式 ：<br>
![](https://img.fengfan.win/blogimg/202110292122146.png)<br>


## 优化配置 ##
1. 去缓存
 <br>
![](https://img.fengfan.win/blogimg/202110292126968.png)<br>
```<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Cache" content="no-cache">
```

2. 代码高亮
<br>截图：<br>
![](https://img.fengfan.win/blogimg/202110292132621.png)

```
<link href="http://cdn.bootcss.com/highlight.js/8.0/styles/vs.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/highlight.js/8.0/highlight.min.js"></script>  
<script >hljs.initHighlightingOnLoad();</script> 
```
