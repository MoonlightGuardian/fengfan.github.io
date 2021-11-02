
+++
author = "q14060"
title = "ShareX图床配置，大厂CDN，大众点评客服"
date = "2021-11-01T22:34:48+08:00"
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
  "sh",
  "脚本",
  "电脑软件",
"分享",
]

series = [
  "工具"
]
aliases = ["ShareX image bed configuration Dianping customer service"]
images = [
  "https://img.fengfan.win/blogimg/202111012228743.jpg?width=180px&height=110px"
]

+++
ShareX是一个开源免费的截图软件，软件小巧精悍，整个安装包不到5MB。与其它的截图不同，ShareX可以真正实现截图自动化，独有的任务设置系统，你可以添加截图任务，并设置截图后自动处理（例如裁剪、水印、编辑），最后保存或者上传截图，整个操作过程可以在后台自动完成。

ShareX自动上传支持国外各大相册（例如Imgur、Flickr、Google Photo）、各大网盘（例如Dropbox、OneDrive、Amazon S3、Google Drive）、各大文件分享平台等，当然ShareX支持自定义上传，例如你可以将ShareX的截图上传到七牛、又拍等云存储中
![](https://img.fengfan.win/blogimg/202111012312422.jpeg)

## ShareX图床自定义配置 ##
美团点评的服务器
代码如下

```
{
"Version": "13.4.0",
"Name": "大众点评客服",
"DestinationType": "ImageUploader",
"RequestMethod": "POST",
"RequestURL": "https://kf.dianping.com/api/file/burstUploadFile",
"Headers": {
"CSC-VisitId": "access-ba00ca3b-fa67-4a4f-b5d5-4522e8788ba5"
},
"Body": "MultipartFormData",
"Arguments": {
"partSize": "1",
"part": "0",
"fileName": "meituan",
"fileID": "453573879545378"
},
"FileFormName": "files",
"URL": "$json:data.uploadPath$"
}

```
## 配置方法 ##  
目标==>>自定义上传目标==>>导入  

![](https://img.fengfan.win/blogimg/202111012300102.jpg)  

![](https://img.fengfan.win/blogimg/202111012247949.jpg)  

## 使用方法 ##
目标==>>图片上传==>>自定义上传  

![](https://img.fengfan.win/blogimg/202111012304996.png)