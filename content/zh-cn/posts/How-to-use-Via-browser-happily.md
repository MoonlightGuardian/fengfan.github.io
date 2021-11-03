+++
author = "q14060"
title = "如何愉快的使用Via浏览器"
date = "2021-10-28"
description = "风范网是一个用于记录生活、分享软件、分享技术教程和房屋装修避坑平台，我们的宗旨是乐于分享，收获快乐！"
featured = true
draft = false
comment = false
 toc = true
reward = false
diagram = true
math = true
categories = ["Android"
]
tags = [
  "via",
  "浏览器脚本",
  "Android",
"安卓",
"脚本",
]

series = [
  "Android"
]
aliases = ["via浏览器"]
images = [
  "https://img.fengfan.win/blogimg/202110282243704.png?width=180px&height=110px"
]

+++


# 软件介绍 #
Via，简洁轻快浏览器。堪称最小巧最强安卓极简浏览器，纯净无广告、界面简约、功能强大、麻雀虽小，五脏俱全！该手机迷你浏览器采用的webkit内核，支持定制主题、广告拦截、扩展脚本、保护隐私等功能。<br/>
![via浏览器](https://img.fengfan.win/blogimg/202110211931605.png)

【最良心】不偷取用户数据，权限只必要<br/>
【最快速】基于WebView内核, 原生体验<br/>
【最强悍】各种设置项自定义，为你专属<br/>
- 非常小巧，仅几百KB，该有的功能都有<br/>
- 隐私保护、隐私防追踪、自定义浏览器标识ua<br/>
- 支持广告拦截、自定义广告标记（可添加拦截规则）<br/>
- 支持沉浸式、支持定制主页风格、LOGO、搜索栏<br/>
- 支持HTML5、插件管理、下载插件、下载链接解析<br/>
- 书签可以登陆云同步，支持夜间模式，夜间模式、电脑模式、有图/无图模式<br/>
- 支持翻译网页、离线网页、保存网页、查看网页源码、网页资源嗅探、网页内查找等<br/>
- 支持自定义添加脚本<br/>

----------



###  适用移动设备的广告规则订阅地址分享  ###
    



`https://banbendalao.coding.net/p/adgk/d/ADgk/git/raw/master/ADgk.txt`
`https://gitee.com/halflife/list/raw/master/ad.txt`
`https://filters.adtidy.org/android/filters/2_optimized.txt`
`https://filters.adtidy.org/android/filters/224_optimized.txt`

----------


### 复制授权 ###

----------

```广告via
/*
 * @name: 复制授权
 * @Author: Sky
 * @version: 1.3
 * @description: 管理网页复制行为
 * @include: *
 * @createTime: 2020-8-8 11:55
 * @updateTime: 2020-5-9 3:10
 */
(function(){const
/* 等号后的数可供修改
 1为是 0为否 */
needc = 1, /* 拦截复制时是否弹窗确认 */
shows = 0, /* 是否显示小红点开关 */
/*－－－－以下勿改－－－－*/
 key = encodeURIComponent('复制授权:执行判断');
 if(window[key]){return;}
 try {
  window[key] = true;
  let red = true;
  function pc(e){if(red && !(needc && confirm('网页正在尝试复制，是否允许？'))){e.preventDefault();e.stopPropagation();}}
  document.addEventListener('copy',(e)=>pc(e),{'passive':false, 'capture':true});
Array.from(document.getElementsByTagName('iframe')).forEach((i)=>i.contentDocument.addEventListener('copy',(e)=>pc(e),{'passive':false, 'capture':true}));
 if(shows){
   const sw = document.createElement("div");
   sw.style = 'position:fixed!important;bottom:45%;right:10px;z-index:999999;width:14px;height:14px;opacity:0.4;border-radius:7px;background:red';
   document.body.appendChild(sw);
   sw.addEventListener('touchmove', function(e){
    sw.style.right = sw.style.bottom = '';
    sw.style.left = (e.touches[0].clientX - 7) + 'px';
    sw.style.top = (e.touches[0].clientY - 7) + 'px';
   }, {'passive':true});
   sw.addEventListener('click', function(e){
    sw.style.background = red ? 'green' : 'red'
    red = !red;
   }, {'passive':true});
  }
 } catch(err){console.log('复制授权：', err);}
})();
```

----------

### 蓝奏云链接自动修复 ###

----------

```
;(function(){window.onload = setTimeout(function(){ if (location.href==='chrome-error://chromewebdata/') { let a = document.querySelector('a'), b = /\/\/(\w+\.)*lanzou\w?\.com\//; a = (a) ? a.href :  document.querySelector('strong').innerHTML; if (b.test(a)) { location.href = a.replace(b,'//pan.lanzoui.com/'); }}},70)})();
```
