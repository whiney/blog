---
title: 浅谈雪碧图和字体图标
date: 2017-11-13 15:03:50
comments: true
tags:
  - 前端
  - 随笔
categories: 前端观察
---

这一次开发，没有什么特别的，就是我在小图标展示的时候。在雪碧图和图标字体中徘徊了很久。于是，简单研究了一下，就当立一个flag,日后在深究一下。


<!--more-->

#### 起因
> 现在是前端技术的大时代。若干年过去之后，也许我们会感慨很多，当年阿当的一篇博文多么的犀利。vue和angular的闹剧。最近临危受命，要做几天的前端开发。说是前端开发，其实就是写`html+css+JavaScript`,真的，当你面对庞大的前端技术体系无所适从的时候,用最简单的技术来一场放松吧。





#### 雪碧图
>除了叫雪碧图外，它还有很多名字，css sprite, css 精灵等。原理就是将一些小图标合并到一张图片上，然后用css的背景定位来显示需要显示的部分。

**工具**：

[sprite-generator](https://www.toptal.com/developers/css/sprite-generator)

**栗子**:

*图片*
![image](http://og3rfccos.bkt.clouddn.com/1510541347700.jpg)

*定位*
```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>css sprite</title>
    <style>
        .bg{
            background: url("css_sprites .png");
        }
        .bg-9 {
            width: 262px; height: 156px;
            background-position: -10px -10px;
        }

        .bg-10 {
            width: 246px; height: 150px;
            background-position: -292px -10px;
        }
    </style>
</head>
<body>
    <div class="bg bg-9"></div>
    <div class="bg bg-10"></div>
</body>
</html>

```
*效果*
![image](http://og3rfccos.bkt.clouddn.com/1510542402120.jpg)

**优点**：
+ 减少对服务器的请求次数`比如页面有五个图标，把他们放到一张背景图上，只需要加载一次。然后用css定位从这张图片来取就可以了`
+ 提高页面的加载速度`减少了页面的请求次数，自然会提高了页面的加载速度`



**缺点**：
+ 维护麻烦，如果修改其中的一张图，你需要修改整张图。
+ 高清失真，为了适应不同的分辨率，可能要准备多个规格的图片。

## 图标字体
> 可以缩放的矢量图标。你可以使用CSS对它们进行修改:大小，颜色，阴影等。体积特别的小。可能几百个图标才几十KB。

**工具**：

[iconfont](http://www.iconfont.cn/home/index?spm=a313x.7781069.1998910419.2)是阿里提供一个矢量图标库。

[fontawesome](http://fontawesome.dashgame.com/) 国外一款优秀的图标库，用bootstrap的都不陌生了。


**栗子**:

[iconfont](http://www.iconfont.cn/home/index?spm=a313x.7781069.1998910419.2)和[fontawesome](http://fontawesome.dashgame.com/)官方都提供了很详细的使用教程，这里不就不做赘述了。
简单的写了一个小[demo](https://github.com/whiney/icon-font)。可以去简单的看一下。

**优点**：
+ 高清保真，因为是SVG图形。
+ 灵活性，可以设置大小，颜色等。
+ [兼容性](https://caniuse.com/#feat=fontface)好，支持IE6
+ 开源的字体库很多
+ 减少HTTP请求

**缺点**：
+ 维护自己的字体库麻烦一些
+ 图表字体只能被渲染为单色的


#### 总结
> 这篇文章只是浅谈了一些雪碧图和图标字体，没有太过的深入，也算是一篇工具介绍吧。这两种方式的出现，都是为了减少HTTP请求次数。优化和提升网页的访问速度。各有千秋。如果实际开发中，可以两种方式结合着来。

[小栗子](https://github.com/whiney/icon-font)

[sprite-generator](https://www.toptal.com/developers/css/sprite-generator)

[iconfont](http://www.iconfont.cn/home/index?spm=a313x.7781069.1998910419.2)

[fontawesome](http://fontawesome.dashgame.com/)