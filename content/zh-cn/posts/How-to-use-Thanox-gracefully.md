+++
author = "q14060"
title = "如何优雅的使用灭霸（Thanox）"
date = "2021-11-19T21:24:57+08:00"
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
  "Thanox",
  "灭霸",
  "情景模式",
"教程",
"分享",
]

series = [
  "Android",
"工具"
]
aliases = ["How to use Thanox gracefully"]
images = [
  "https://img.fengfan.win/blogimg/202111192148555.jpg?width=180px&height=110px"
]

+++
 Thanox权限神器是一款功能非常强大且实用的手机应用管理软件，还能够帮助你进行手机后台应用进行记录，让你可以更好进行后台的管理，它是基于xposed框架开发的一个软件，让你轻松就可以上手实用，它需要root之后进行使用。
![](https://img.fengfan.win/blogimg/202111192148010.jpg)
**Thanox权限神器特点**
Thanox是基于X-APM进行重构的版本。  
不能与X-APM同时激活。  
**Thanox权限神器优势  **
为什么重构：  
X-APM代码臃肿难以维护。  
由于X-APM项目结构设计原因，导致其难以升级到最新Android SDK。
插件暂时在github发布 
  
[https://github.com/Tornaco/Thanox/releases](https://github.com/Tornaco/Thanox/releases) 

----------
# 情景模式 #
## 数据和wifi自动切换开关 ##
```
[
{
"name": "数据和wifi自动切换开关",
"description": " 数据和wifi自动切换开关  ",
"priority": 1,
"condition": "if( wifiStateChanged == true && wifiState.ssid == null && data.isDataEnabled() == false) {( ui.showShortToast(\"打开数据流量\") + data.setDataEnabled(true)+hw.disableWifi())} else if ( wifiStateChanged == true && wifiState.enabled == true && wifiState.ssid != null && data.isDataEnabled()== true) { (ui.showShortToast(\"关闭数据流量\") + data.setDataEnabled(false) )}",
"actions": [""
]
}
]
```
## 需要定位界面自动开关GPS ##
```
[
{
"name": "需要定位界面自动开关GPS",
"description": "打界面需要定位的界面时自动打开GPS，离开界面时关闭GPS，使用全局变量GPSON和全局变量GPSOFF",
"priority": 1,
"condition": "if( activityResumed == true && hw.isLocationEnabled() == false && globalVarOf$GPSON.contains(componentNameAsShortString)) { ui.showShortToast(\"GPS打开\" + (hw.enableLocation() ? \"成功\" : \"失败\")) } else if ( activityResumed == true && hw.isLocationEnabled() == true && globalVarOf$GPSOFF.contains(componentNameAsShortString)) { ui.showShortToast(\"GPS关闭\" + (hw.disableLocation() ? \"成功\" : \"失败\")) }",
"actions": [
""
]
}
]
```
**上边用到的部分全局变量变量**
变量名称  
 ```GPSON```  

```
[
  "com.tencent.mm/.plugin.appbrand.ui.AppBrandUI",
  "com.tencent.mm/.plugin.appbrand.ui.AppBrandUI2",
  "com.tencent.mm/.plugin.appbrand.ui.AppBrandUI3",
  "com.tencent.mm/.plugin.appbrand.ui.AppBrandUI4",
  "com.tencent.mm/.plugin.location_soso.SoSoProxyUI",
  "com.tencent.mm/.plugin.webview.ui.tools.WebViewUI",
  "com.tencent.mm/.plugin.sns.ui.SnsUploadUI",
  "com.mobike.mola/mobike.mola.mola2k.MainActivity",
  "com.mobike.mola/mobike.mola.mola2k.mola.performance.index.PerformanceIndexActivity",
  "com.xhe2y.xcamerb/com.xhey.xcamera.ui.camera.SplashActivity",
  "com.xbcx.waiqing_xunfang/com.xbcx.waiqing.activity.main.MainActivity",
  "com.droi.adocker.pro/com.droi.adocker.ui.main.MainActivity",
  "com.droi.adocker.pro/com.droi.adocker.ui.splash.SplashActivity",
  "com.autonavi.minimap/com.autonavi.map.activity.NewMapActivity",
  "com.autonavi.minimap/com.autonavi.map.activity.SplashActivity",
  "com.eg.android.AlipayGphone/com.alipay.mobile.nebulax.integration.mpaas.activity.NebulaActivity$Main"
]
```
----------
## 保活APP ##
```
[
{
"name": "保活APP",
"description": "如果APP被杀死，重启APP，配置了全局变量BH",
"priority": 1,
"condition": "pkgKilled == true && globalVarOf$BH.contains(pkgName)",
"actions": [
"ui.showShortToast(\"重新启动APP\");",
"activity.launchProcessForPackage(pkgName)"
]
}
]
```
# 移花接木 #
## 12306跳过启动广告 ##
原
```
com.MobileTicket/com.alipay.mobile.quinox.LauncherActivity
```
改
```
com.MobileTicket/com.MobileTicket.ui.activity.MainActivity
```