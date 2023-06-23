---
title: Markdown语法与外挂标签格式
tags:
  - Markdown
categories:
  - 技术
copyright: true
abbrlink: 790844471
date: 2023-06-22 21:04:46
description: 汇总Markdown格式以及外挂标签在网页端的渲染效果
swiper_index: 9999
---
<br />
<blockquote class="blockquote-center">
<p id="hitokoto"></p>
<script src="https://v1.hitokoto.cn/?encode=js&select=%23hitokoto" defer></script>
</blockquote>

# Markdown基本语法

{% note info flat %}参考：[构建在 Markdown 基本语法上的扩展功能](https://www.markdown.xyz/extended-syntax/){% endnote %}
{% note warning flat %}请注意：此页面可能会偶尔遇到 CSS 冲突问题。{% endnote %}

## 1. 代码块

{% tabs sheet %}

<!-- tab 源码 -->
```markdown
\```html
<!DOCTYPE html>
<html>
<head>
    <title>Hello</title>
</head>
<body>
    <h1>Hello</h1>
</body>
</html>
\```
```
<!-- endtab -->

<!-- tab 预览 -->
```html
<!DOCTYPE html>
<html>
<head>
    <title>Hello</title>
</head>
<body>
    <h1>Hello</h1>
</body>
</html>
```
<!-- endtab -->

{% endtabs %}

## 2. 多级标题

{% tabs sheet %}

<!-- tab 源码 -->
```markdown
# H1
## H2
### H3
#### H4
##### H5
###### H6
```
<!-- endtab -->

<!-- tab 预览 -->
如标题所示！
<!-- endtab -->

{% endtabs %}

## 3. 文字样式

{% tabs sheet %}

<!-- tab 源码 -->
```markdown
<u>下划线演示</u>

文字**加粗**演示

文字*斜体*演示

文本`高亮`演示

文本~~删除~~线演示

<font size = 5>5号字</font>
<font face="黑体">黑体</font>
<font color=blue>蓝色</font>

相对论质能方程（E=MC<sup>2</sup>）
Plants need CO<sub>2</sub>

<table><tr><td bgcolor=MistyRose>这里的背景色是：MistyRosen，此处输入任意想输入的内容</td></tr></table>
```
<!-- endtab -->

<!-- tab 预览 -->
<u>下划线演示</u>

文字**加粗**演示

文字*斜体*演示

文本`高亮`演示

文本~~删除~~线演示

<font size = 5>5号字</font>
<font face="黑体">黑体</font>
<font color=blue>蓝色</font>

相对论质能方程（E=MC<sup>2</sup>）
Plants need CO<sub>2</sub>

<table><tr><td bgcolor=MistyRose>这里的背景色是：MistyRosen，此处输入任意想输入的内容</td></tr></table>
<!-- endtab -->

{% endtabs %}

## 4. 引用

{% tabs sheet %}

<!-- tab 源码 -->
```markdown
> 一级引用
> 数据库
> 二级引用
> >SQL
> >
> >执行计划
> >
> >**索引**
>
> ...
```
<!-- endtab -->

<!-- tab 预览 -->
> 一级引用
> 数据库
> 二级引用
> >SQL
> >
> >执行计划
> >
> >**索引**
>
> ...
<!-- endtab -->

{% endtabs %}

## 5. 分割线

{% tabs sheet %}

<!-- tab 源码 -->
```markdown
---
***
- - -
```
<!-- endtab -->

<!-- tab 预览 -->
---
***
- - -
<!-- endtab -->

{% endtabs %}

## 6. 列表

### 6.1 无序列表

{% tabs sheet %}

<!-- tab 源码 -->
```markdown
* 面向对象语言
    * Java
    * C#

* 动态脚本语言
    - Python
    - JavaScript

* 系统级语言
    + C/CPP
    + Rust
```
<!-- endtab -->

<!-- tab 预览 -->
* 面向对象语言
  * Java
  * C#

* 动态脚本语言
  - Python
  - JavaScript

* 系统级语言
  + C/CPP
  + Rust
<!-- endtab -->

{% endtabs %}

### 6.2 有序列表

{% tabs sheet %}

<!-- tab 源码 -->
```markdown
1. 水果
    1. 苹果 🍎
    2. 香蕉 🍌
    3. 桃子 🍑
2. 蔬菜
    1. 白菜 🥬
    2. 萝卜 🥕
```
<!-- endtab -->

<!-- tab 预览 -->
1. 水果
    1. 苹果 🍎
    2. 香蕉 🍌
    3. 桃子 🍑
2. 蔬菜
   1. 白菜 🥬
   2. 萝卜 🥕
<!-- endtab -->

{% endtabs %}

## 7. 图片

{% tabs sheet %}

<!-- tab 源码 -->
```markdown
# 本地图片
<img src="../lib/img/background.png" alt="示例图片" style="zoom:50%;" />

# 在线图片
![code](https://w.wallhaven.cc/full/j3/wallhaven-j3m8y5.png)
```
<!-- endtab -->

<!-- tab 预览 -->
- 本地图片:
<img src="../lib/img/background.png" alt="示例图片" style="zoom:50%;" />

- 在线图片:
![code](https://w.wallhaven.cc/full/j3/wallhaven-j3m8y5.png)
<!-- endtab -->

{% endtabs %}

## 8. 表格

{% tabs sheet %}

<!-- tab 源码 -->
```markdown
| 序号 | 姓名    | 分数 |
| --- | ------ | ---- |
| 1   | `John` |  78  |
| 2   | `Tom`  |  43  |
| 3   | `Lee`  |  92  |
```
<!-- endtab -->

<!-- tab 预览 -->
| 序号 | 姓名    | 分数 |
| --- | ------ | ---- |
| 1   | `John` |  78  |
| 2   | `Tom`  |  43  |
| 3   | `Lee`  |  92  |
<!-- endtab -->

{% endtabs %}


# Butterfly 外挂标签引入

## 1. 行内文本样式 text

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% u 文本内容 %}
{% emp 文本内容 %}
{% wavy 文本内容 %}
{% del 文本内容 %}
{% kbd 文本内容 %}
{% psw 文本内容 %}
```
<!-- endtab -->

<!-- tab 源码 -->
```markdown
- 带 {% u 下划线 %} 的文本
- 带 {% emp 着重号 %} 的文本
- 带 {% wavy 波浪线 %} 的文本
- 带 {% del 删除线 %} 的文本
- 键盘样式的文本 {% kbd command %} + {% kbd D %}
- 密码样式的文本：{% psw 这里没有验证码 %}
```
<!-- endtab -->

<!-- tab 预览 -->
- 带 {% u 下划线 %} 的文本
- 带 {% emp 着重号 %} 的文本
- 带 {% wavy 波浪线 %} 的文本
- 带 {% del 删除线 %} 的文本
- 键盘样式的文本 {% kbd command %} + {% kbd D %}
- 密码样式的文本：{% psw 这里没有验证码 %}
<!-- endtab -->

{% endtabs %}

## 2. 行内文本 span

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% span 样式参数(参数以空格划分), 文本内容 %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `字体`: logo, code
- `颜色`: red,yellow,green,cyan,blue,gray
- `大小`: small, h4, h3, h2, h1, large, huge, ultra
- `对齐方向`: left, center, right
<!-- endtab -->

<!-- tab 源码 -->
```markdown
- 彩色文字
在一段话中方便插入各种颜色的标签，包括：{% span red, 红色 %}、{% span yellow, 黄色 %}、{% span green, 绿色 %}、{% span cyan, 青色 %}、{% span blue, 蓝色 %}、{% span gray, 灰色 %}。
- 超大号文字
文档「开始」页面中的标题部分就是超大号文字。
{% span center logo large, Volantis %}
{% span center small, A Wonderful Theme for Hexo %}
```
<!-- endtab -->

<!-- tab 预览 -->
- 彩色文字
  在一段话中方便插入各种颜色的标签，包括：{% span red, 红色 %}、{% span yellow, 黄色 %}、{% span green, 绿色 %}、{% span cyan, 青色 %}、{% span blue, 蓝色 %}、{% span gray, 灰色 %}。
- 超大号文字
  文档「开始」页面中的标题部分就是超大号文字。
  {% span center logo large, Volantis %}
  {% span center small, A Wonderful Theme for Hexo %}
<!-- endtab -->

{% endtabs %}

## 3. 段落文本 p

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% p 样式参数(参数以空格划分), 文本内容 %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `字体`: logo, code
- `颜色`: red,yellow,green,cyan,blue,gray
- `大小`: small, h4, h3, h2, h1, large, huge, ultra
- `对齐方向`: left, center, right
<!-- endtab -->

<!-- tab 源码 -->
```markdown
- 彩色文字
在一段话中方便插入各种颜色的标签，包括：{% p red, 红色 %}、{% p yellow, 黄色 %}、{% p green, 绿色 %}、{% p cyan, 青色 %}、{% p blue, 蓝色 %}、{% p gray, 灰色 %}。
- 超大号文字
文档「开始」页面中的标题部分就是超大号文字。
{% p center logo large, Volantis %}
{% p center small, A Wonderful Theme for Hexo %}
```
<!-- endtab -->

<!-- tab 预览 -->
- 彩色文字
  在一段话中方便插入各种颜色的标签，包括：{% p red, 红色 %} {% p yellow, 黄色 %} {% p green, 绿色 %} {% p cyan, 青色 %} {% p blue, 蓝色 %} {% p gray, 灰色 %}
- 超大号文字
  文档「开始」页面中的标题部分就是超大号文字。
  {% p center logo large, Volantis %}
  {% p center small, A Wonderful Theme for Hexo %}
<!-- endtab -->

{% endtabs %}

## 4. 上标标签 tip

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% tip [参数，可选] %}文本内容{% endtip %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `样式`: success,error,warning,bolt,ban,home,sync,cogs,key,bell
- `自定义图标`: 支持fontawesome。
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% tip %}default{% endtip %}
{% tip info %}info{% endtip %}
{% tip success %}success{% endtip %}
{% tip error %}error{% endtip %}
{% tip warning %}warning{% endtip %}
{% tip bolt %}bolt{% endtip %}
{% tip ban %}ban{% endtip %}
{% tip home %}home{% endtip %}
{% tip sync %}sync{% endtip %}
{% tip cogs %}cogs{% endtip %}
{% tip key %}key{% endtip %}
{% tip bell %}bell{% endtip %}
{% tip fa-atom %}自定义font awesome图标{% endtip %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% tip %}default{% endtip %}
{% tip info %}info{% endtip %}
{% tip success %}success{% endtip %}
{% tip error %}error{% endtip %}
{% tip warning %}warning{% endtip %}
{% tip bolt %}bolt{% endtip %}
{% tip ban %}ban{% endtip %}
{% tip home %}home{% endtip %}
{% tip sync %}sync{% endtip %}
{% tip cogs %}cogs{% endtip %}
{% tip key %}key{% endtip %}
{% tip bell %}bell{% endtip %}
{% tip fa-atom %}自定义font awesome图标{% endtip %}
<!-- endtab -->

{% endtabs %}

## 5. 动态标签 anima

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% tip [参数，可选] %}文本内容{% endtip %}
```
<!-- endtab -->

<!-- tab 配置 -->
{% note info flat %}
- 将所需的CSS类添加到图标（或DOM中的任何元素）。
- 对于父级悬停样式，需要给目标元素添加指定CSS类，同时还要给目标元素的父级元素添加CSS类`faa-parent animated-hover`。（详情见示例及示例源码）
   You can regulate the speed of the animation by adding the CSS class or . faa-fastfaa-slow
- 可以通过给目标元素添加CSS类`faa-fast`或`faa-slow`来控制动画快慢。
{% endnote %}
<!-- endtab -->
   
<!-- tab 源码 -->
- On DOM load（当页面加载时显示动画）
```markdown
{% tip warning faa-horizontal animated %}warning{% endtip %}
{% tip ban faa-flash animated %}ban{% endtip %}
```
- 调整动画速度
```markdown
{% tip warning faa-horizontal animated faa-fast %}warning{% endtip %}
{% tip ban faa-flash animated faa-slow %}ban{% endtip %}
```
- On hover（当鼠标悬停时显示动画）
```markdown
{% tip warning faa-horizontal animated-hover %}warning{% endtip %}
{% tip ban faa-flash animated-hover %}ban{% endtip %}
```
- On parent hover（当鼠标悬停在父级元素时显示动画）
```markdown
{% tip warning faa-parent animated-hover %}<p class="faa-horizontal">warning</p>{% endtip %}
{% tip ban faa-parent animated-hover %}<p class="faa-flash">ban</p>{% endtip %}
```
<!-- endtab -->

<!-- tab 预览 -->
- On DOM load（当页面加载时显示动画）
{% tip warning faa-horizontal animated %}warning{% endtip %}
{% tip ban faa-flash animated %}ban{% endtip %}
- 调整动画速度
{% tip warning faa-horizontal animated faa-fast %}warning{% endtip %}
{% tip ban faa-flash animated faa-slow %}ban{% endtip %}
- On hover（当鼠标悬停时显示动画）
{% tip warning faa-horizontal animated-hover %}warning{% endtip %}
{% tip ban faa-flash animated-hover %}ban{% endtip %}
- On parent hover（当鼠标悬停在父级元素时显示动画）
{% tip warning faa-parent animated-hover %}<p class="faa-horizontal">warning</p>{% endtip %}
{% tip ban faa-parent animated-hover %}<p class="faa-flash">ban</p>{% endtip %}
<!-- endtab -->

{% endtabs %}

## 6. 复选列表 checkbox

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% checkbox 样式参数（可选）, 文本（支持简单md） %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `样式`: plus, minus, times
- `颜色`: red,yellow,green,cyan,blue,gray
- `选中状态`: checked
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% checkbox 纯文本测试 %}
{% checkbox checked, 支持简单的 [markdown](https://guides.github.com/features/mastering-markdown/) 语法 %}
{% checkbox red, 支持自定义颜色 %}
{% checkbox green checked, 绿色 + 默认选中 %}
{% checkbox yellow checked, 黄色 + 默认选中 %}
{% checkbox cyan checked, 青色 + 默认选中 %}
{% checkbox blue checked, 蓝色 + 默认选中 %}
{% checkbox plus green checked, 增加 %}
{% checkbox minus yellow checked, 减少 %}
{% checkbox times red checked, 叉 %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% checkbox 纯文本测试 %}
{% checkbox checked, 支持简单的 [markdown](https://guides.github.com/features/mastering-markdown/) 语法 %}
{% checkbox red, 支持自定义颜色 %}
{% checkbox green checked, 绿色 + 默认选中 %}
{% checkbox yellow checked, 黄色 + 默认选中 %}
{% checkbox cyan checked, 青色 + 默认选中 %}
{% checkbox blue checked, 蓝色 + 默认选中 %}
{% checkbox plus green checked, 增加 %}
{% checkbox minus yellow checked, 减少 %}
{% checkbox times red checked, 叉 %}
<!-- endtab -->

{% endtabs %}

## 7. 单选列表 radio

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% radio 样式参数（可选）, 文本（支持简单md） %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `颜色`: red,yellow,green,cyan,blue,gray
- `选中状态`: checked
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% radio 纯文本测试 %}
{% radio checked, 支持简单的 [markdown](https://guides.github.com/features/mastering-markdown/) 语法 %}
{% radio red, 支持自定义颜色 %}
{% radio green, 绿色 %}
{% radio yellow, 黄色 %}
{% radio cyan, 青色 %}
{% radio blue, 蓝色 %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% radio 纯文本测试 %}
{% radio checked, 支持简单的 [markdown](https://guides.github.com/features/mastering-markdown/) 语法 %}
{% radio red, 支持自定义颜色 %}
{% radio green, 绿色 %}
{% radio yellow, 黄色 %}
{% radio cyan, 青色 %}
{% radio blue, 蓝色 %}
<!-- endtab -->

{% endtabs %}

## 8. 链接卡片 link

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% link 标题, 链接, 图片链接（可选） %}
```
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% link Markdown教程, https://www.markdownguide.org/, https://www.markdownguide.org/assets/favicons/apple-touch-icon.png %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% link Markdown教程, https://www.markdownguide.org/, https://www.markdownguide.org/assets/favicons/apple-touch-icon.png %}
<!-- endtab -->

{% endtabs %}

## 9. 行内图片 inlineimage

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% inlineimage 图片链接, height=高度（可选） %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `高度`：height=20px
<!-- endtab -->

<!-- tab 源码 -->
```markdown
这🉑真的是 {% inlineimage /lib/img/reaction_yyds.jpeg %} ！

咦，瞧一瞧 {% inlineimage https://img.rttt.net/2021/06/18/91b136ef87591.jpg, height=40px %}
```
<!-- endtab -->

<!-- tab 预览 -->
这🉑真的是 {% inlineimage /lib/img/reaction_yyds.jpeg %} ！

咦，瞧一瞧 {% inlineimage https://img.rttt.net/2021/06/18/91b136ef87591.jpg, height=80px %}
<!-- endtab -->

{% endtabs %}

## 10 单张图片 image

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% image 链接, width=宽度（可选）, height=高度（可选）, alt=描述（可选）, bg=占位颜色（可选） %}
```
<!-- endtab -->

<!-- tab 配置 -->
- 图片宽度高度：width=300px, height=32px
- 图片描述：alt=图片描述（butterfly需要在主题配置文件中开启图片描述）
- 占位背景色：bg=#f2f2f2
<!-- endtab -->

<!-- tab 源码 -->
- 添加描述：
```markdown
{% image https://w.wallhaven.cc/full/1p/wallhaven-1ppld1.jpg, alt=是个可爱的二次元小姐姐。 %}
```
- 指定宽度：
```markdown
{% image https://w.wallhaven.cc/full/1p/wallhaven-1ppld1.jpg, width=400px %}
```
- 设置占位背景色：
```markdown
{% image https://w.wallhaven.cc/full/1p/wallhaven-1ppld1.jpg, width=400px, bg=#1D0C04 %}
```
<!-- endtab -->

<!-- tab 预览 -->
- 添加描述：
{% image https://w.wallhaven.cc/full/1p/wallhaven-1ppld1.jpg, alt=是个可爱的二次元小姐姐。 %}
- 指定宽度：
{% image https://w.wallhaven.cc/full/1p/wallhaven-1ppld1.jpg, width=400px %}
- 设置占位背景色：
{% image https://w.wallhaven.cc/full/1p/wallhaven-1ppld1.jpg, width=400px, bg=#1D0C04 %}
<!-- endtab -->

{% endtabs %}

## 11. 音频 audio

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% audio 音频链接 %}
```
<!-- endtab -->

<!-- tab 源码 -->
```markdown
- 可本地或网络mp3的URL
{% audio /lib/media/龙战骑士.mp3 %}
- 通过网易云音乐生外链播放器
<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=86 src="//music.163.com/outchain/player?type=2&id=1406686876&auto=1&height=66"></iframe>
```
<!-- endtab -->

<!-- tab 预览 -->
- 可本地或网络mp3的URL
{% audio /lib/media/audio_demo.mp3 %}
- 通过网易云音乐生外链播放器
<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=86 src="//music.163.com/outchain/player?type=2&id=1406686876&auto=1&height=66"></iframe>
<!-- endtab -->

{% endtabs %}

## 12. 视频 video

{% tabs sheet %}
<!-- tab 语法 -->
```markdown
{% video 视频链接 %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `对齐方向`：left, center, right
- `列数`：逗号后面直接写列数，支持 1 ～ 4 列。
<!-- endtab -->

<!-- tab 源码 -->
- 100%宽度
```markdown
{% video /lib/media/video_demo.mp4 %}
```
- 50%宽度
```markdown
{% videos, 2 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% endvideos %}
```
- 25%宽度
```markdown
{% videos, 4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% endvideos %}
```
<!-- endtab -->

<!-- tab 预览 -->
- 100%宽度
{% video /lib/media/video_demo.mp4 %}
- 50%宽度
{% videos, 2 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% endvideos %}
- 25%宽度
{% videos, 4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% video /lib/media/video_demo.mp4 %}
{% endvideos %}
<!-- endtab -->

{% endtabs %}

## 13. 特效标签 wow

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% wow [animete], [duration], [delay], [offset], [iteration] %}
内容
{% endwow %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `animate`: 动画样式，效果详见[animate.css参考文档](https://animate.style/)
- `duration`: 选填项，动画持续时间，单位可以是`ms`也可以是`s`。例如`3s`，`700ms`。
- `delay`: 选填项，动画开始的延迟时间，单位可以是`ms`也可以是`s`。例如`3s`，`700ms`。
- `offset`: 选填项，开始动画的距离（相对浏览器底部）。
- `iteration`: 选填项，动画重复的次数。
<!-- endtab -->

<!-- tab 源码 -->
- flip动画效果。
```markdown
{% wow animate__zoomIn,5s,5s,100,10 %}
{% note blue 'fas fa-bullhorn' modern%}
`zoomIn`动画效果，持续`5s`，延时`5s`，离底部`100`距离时启动，重复`10`次
{% endnote %}
{% endwow %}
```
- zoomIn动画效果，持续5s，延时5s，离底部100距离时启动，重复10次
```markdown
{% wow animate__zoomIn,5s,5s,100,10 %}
{% note blue 'fas fa-bullhorn' modern%}
`zoomIn`动画效果，持续`5s`，延时`5s`，离底部`100`距离时启动，重复`10`次
{% endnote %}
{% endwow %}
```
- slideInRight动画效果，持续5s，延时5s
```markdown
{% wow animate__slideInRight,5s,5s %}
{% note orange 'fas fa-car' modern%}
`slideInRight`动画效果，持续`5s`，延时`5s`。
{% endnote %}
{% endwow %}
```
- heartBeat动画效果，延时5s，重复10次。此处注意不用的参数位置要留空，用逗号间隔。
```markdown
{% wow animate__heartBeat,,5s,,10 %}
{% note red 'fas fa-battery-half' modern%}
`heartBeat`动画效果，延时`5s`，重复`10`次。
{% endnote %}
{% endwow %}
```
<!-- endtab -->

<!-- tab 预览 -->
- flip动画效果。
{% wow animate__zoomIn,5s,5s,100,10 %}
{% note blue 'fas fa-bullhorn' modern%}
`zoomIn`动画效果，持续`5s`，延时`5s`，离底部`100`距离时启动，重复`10`次
{% endnote %}
{% endwow %}
- zoomIn动画效果，持续5s，延时5s，离底部100距离时启动，重复10次
{% wow animate__zoomIn,5s,5s,100,10 %}
{% note blue 'fas fa-bullhorn' modern%}
`zoomIn`动画效果，持续`5s`，延时`5s`，离底部`100`距离时启动，重复`10`次
{% endnote %}
{% endwow %}
- slideInRight动画效果，持续5s，延时5s
{% wow animate__slideInRight,5s,5s %}
{% note orange 'fas fa-car' modern%}
`slideInRight`动画效果，持续`5s`，延时`5s`。
{% endnote %}
{% endwow %}
- heartBeat动画效果，延时5s，重复10次。此处注意不用的参数位置要留空，用逗号间隔。
{% wow animate__heartBeat,,5s,,10 %}
{% note red 'fas fa-battery-half' modern%}
`heartBeat`动画效果，延时`5s`，重复`10`次。
{% endnote %}
{% endwow %}
<!-- endtab -->

{% endtabs %}

## 14. 进度条 progress

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% progress [width] [color] [text] %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `width`: 0到100的阿拉伯数字
- `color`: 颜色，取值有red,yellow,green,cyan,blue,gray
- `text`:进度条上的文字内容
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% progress 10 red 进度条样式预览 %}
{% progress 30 yellow 进度条样式预览 %}
{% progress 50 green 进度条样式预览 %}
{% progress 70 cyan 进度条样式预览 %}
{% progress 90 blue 进度条样式预览 %}
{% progress 100 gray 进度条样式预览 %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% progress 10 red 进度条样式预览 %}
{% progress 30 yellow 进度条样式预览 %}
{% progress 50 green 进度条样式预览 %}
{% progress 70 cyan 进度条样式预览 %}
{% progress 90 blue 进度条样式预览 %}
{% progress 100 gray 进度条样式预览 %}
<!-- endtab -->

{% endtabs %}

## 15. 诗词标签 poem

{% tabs sheet %}

<!-- tab语法 -->
```markdown
{% poem [title], [author] %}
诗词内容
{% endpoem %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `title`：诗词标题
- `author`：作者，可以不写
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% poem 沁园春·雪, 毛泽东 %}
北国风光，千里冰封，万里雪飘。望长城内外，惟余莽莽；大河上下，顿失滔滔。山舞银蛇，原驰蜡象，欲与天公试比高。须晴日，看红装素裹，分外妖娆。
江山如此多娇，引无数英雄竞折腰。惜秦皇汉武，略输文采；唐宗宋祖，稍逊风骚。一代天骄，成吉思汗，只识弯弓射大雕。俱往矣，数风流人物，还看今朝。
{% endpoem %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% poem 沁园春·雪, 毛泽东 %}
北国风光，千里冰封，万里雪飘。望长城内外，惟余莽莽；大河上下，顿失滔滔。山舞银蛇，原驰蜡象，欲与天公试比高。须晴日，看红装素裹，分外妖娆。
江山如此多娇，引无数英雄竞折腰。惜秦皇汉武，略输文采；唐宗宋祖，稍逊风骚。一代天骄，成吉思汗，只识弯弓射大雕。俱往矣，数风流人物，还看今朝。
{% endpoem %}
<!-- endtab -->

{% endtabs %}

## 16. 注释 notation

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% nota [label], [text] %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `label`: 注释词汇
- `text`: 悬停显示的注解内容
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% nota 把鼠标悬浮到这儿试试, 可以看到注解内容出现在顶栏 %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% nota 把鼠标悬浮到这儿试试, 可以看到注解内容出现在顶栏 %}
<!-- endtab -->

{% endtabs %}

## 17. 气泡注释 bubble

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% bubble [content], [notation], [background-color] %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `content`: 注释词汇
- `notation`: 悬停显示的注解内容
- `background-color`: 可选，气泡背景色。默认为“#71a4e3”
<!-- endtab -->

<!-- tab 源码 -->
```markdown
一些前端小知识：
- CSS的 {% bubble 兄弟相邻选择器, "例如 h1 + p {margin-top: 50px;}，用于在选择器选中的 h1 元素后的第一个相邻的 p 元素上应用样式，设置 margin-top 为 50px。" %}
- {% bubble Flex布局是指, "Flexible Box 的缩写，意为弹性布局", "#ec5830" %}，用于为盒状模型提供最大的灵活性。
- {% bubble , "Transform变换属性用于向元素应用 2D 或 3D 转换。该属性允许我们对元素进行旋转、缩放、移动或倾斜。", "#1db675" %}
- {% bubble Animation的贝塞尔速度曲线，贝塞尔曲线（Bézier curve），又称, "贝兹曲线或贝济埃曲线，是应用于二维图形应用程序的数学曲线。", "#de4489" %} 一般的矢量图形软件通过它来精确绘制曲线。贝塞尔曲线由线段与节点组成，节点是可拖动的支点，线段像可伸缩的皮筋写法。
- Clip-path属性使用裁剪方式创建元素的可显示区域。区域内的部分显示，区域外的隐藏。
```
<!-- endtab -->

<!-- tab 预览 -->
一些前端小知识：
- CSS的 {% bubble 兄弟相邻选择器, "例如 h1 + p {margin-top: 50px;}，用于在选择器选中的 h1 元素后的第一个相邻的 p 元素上应用样式，设置 margin-top 为 50px。" %}
- {% bubble Flex布局是指, "Flexible Box 的缩写，意为弹性布局", "#ec5830" %}，用于为盒状模型提供最大的灵活性。
- {% bubble , "Transform变换属性用于向元素应用 2D 或 3D 转换。该属性允许我们对元素进行旋转、缩放、移动或倾斜。", "#1db675" %}
- {% bubble Animation的贝塞尔速度曲线，贝塞尔曲线（Bézier curve），又称, "贝兹曲线或贝济埃曲线，是应用于二维图形应用程序的数学曲线。", "#de4489" %} 一般的矢量图形软件通过它来精确绘制曲线。贝塞尔曲线由线段与节点组成，节点是可拖动的支点，线段像可伸缩的皮筋写法。
- Clip-path属性使用裁剪方式创建元素的可显示区域。区域内的部分显示，区域外的隐藏。
<!-- endtab -->

{% endtabs %}

## 18. 引用文献 reference

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% referto [id], [literature] %}
{% referfrom [id], [literature], [url] %}
```
<!-- endtab -->

<!-- tab 配置 -->
- referto 引用上标
  + `id`: 上标序号内容，需与referfrom标签的id对应才能实现跳转
  + `literature`: 引用的参考文献名称
- referfrom 引用出处
  + `id`: 序号内容，需与referto标签的id对应才能实现跳转
  + `literature`: 引用的参考文献名称
  + `url`: 引用的参考文献链接，可省略
<!-- endtab -->

<!-- tab 源码 -->
```markdown
Google（中文译名：谷歌{% referto '[1]', 'Google Inc.' %}）是总部位于美国加州芒廷维尤的跨国科技公司，为Alphabet（字母控股）的子公司，业务范围涵盖互联网广告、互联网搜索、云计算等领域，开发并提供大量基于互联网的产品与服务，其主要利润来自Ads等广告服务。Google由在斯坦福大学攻读理工博士的拉里·佩奇和谢尔盖·布林共同创建，因此两人也被称为“Google Guys”。

1998年9月4日，Google以私营公司的形式创立，目的是设计并管理互联网搜索引擎“Google搜索”。2004年8月19日，Google公司在纳斯达克{% referto '[2]', 'Nasdaq' %}上市，后来被称为“三驾马车”的公司两位共同创始人与出任首席执行官的埃里克·施密特在此时承诺：共同在Google工作至少二十年，即至2024年止。Google的宗旨是“整合全球信息，供大众使用，使人人受益”（To organize the world's information and make it universally accessible and useful）；而非正式的口号则为“不作恶”（Don't be evil），由工程师阿米特·帕特尔（Amit Patel）所创，并得到了保罗·布赫海特的支持。Google公司的总部称为“Googleplex”，位于美国加州圣克拉拉县的芒廷维尤。2011年4月，佩奇接替施密特担任首席执行官。在2015年8月，Google宣布进行资产重组。重组后，Google划归新成立的Alphabet底下。同时，此举把Google旗下的核心搜索和广告业务与Google无人车等新兴业务分离开来。

Google自创立起开始的快速成长同时也带动了一系列的产品研发、并购事项与合作关系，而不仅仅是公司核心的网络搜索业务。Google公司提供丰富的线上软件服务，如云硬盘、Gmail电子邮件，包括Orkut、Google Buzz以及Google+在内的社交网络服务。Google的产品同时也以应用软件的形式进入用户桌面，例如Google Chrome网页浏览器、Picasa图片整理与编辑软件、Google Hangouts即时通讯工具等。另外，Google还进行了移动设备的Android{% referto '[3]', 'Android' %}操作系统以及Google Chrome OS{% referto '[4]', 'ChromeOS' %}操作系统的开发。其安卓系统至今为止仍是移动端的主要操作系统之一。硬件系列方面，则有Google Pixel手机及平板电脑，穿戴设备如Google Pixel Watch及Google Pixel Buds等。

{% referfrom '[1]', 'Google Inc.', 'https://zh.wikipedia.org/zh-cn/Google' %}
{% referfrom '[2]', 'Nasdaq', 'https://zh.wikipedia.org/zh-cn/Nasdaq' %}
{% referfrom '[3]', 'Android', 'https://zh.wikipedia.org/zh-cn/Android' %}
{% referfrom '[4]', 'ChromeOS', 'https://zh.wikipedia.org/zh-cn/ChromeOS' %}
```
<!-- endtab -->

<!-- tab 预览 -->
Google（中文译名：谷歌{% referto '[1]', 'Google Inc.' %}）是总部位于美国加州芒廷维尤的跨国科技公司，为Alphabet（字母控股）的子公司，业务范围涵盖互联网广告、互联网搜索、云计算等领域，开发并提供大量基于互联网的产品与服务，其主要利润来自Ads等广告服务。Google由在斯坦福大学攻读理工博士的拉里·佩奇和谢尔盖·布林共同创建，因此两人也被称为“Google Guys”。

1998年9月4日，Google以私营公司的形式创立，目的是设计并管理互联网搜索引擎“Google搜索”。2004年8月19日，Google公司在纳斯达克{% referto '[2]', 'Nasdaq' %}上市，后来被称为“三驾马车”的公司两位共同创始人与出任首席执行官的埃里克·施密特在此时承诺：共同在Google工作至少二十年，即至2024年止。Google的宗旨是“整合全球信息，供大众使用，使人人受益”（To organize the world's information and make it universally accessible and useful）；而非正式的口号则为“不作恶”（Don't be evil），由工程师阿米特·帕特尔（Amit Patel）所创，并得到了保罗·布赫海特的支持。Google公司的总部称为“Googleplex”，位于美国加州圣克拉拉县的芒廷维尤。2011年4月，佩奇接替施密特担任首席执行官。在2015年8月，Google宣布进行资产重组。重组后，Google划归新成立的Alphabet底下。同时，此举把Google旗下的核心搜索和广告业务与Google无人车等新兴业务分离开来。

Google自创立起开始的快速成长同时也带动了一系列的产品研发、并购事项与合作关系，而不仅仅是公司核心的网络搜索业务。Google公司提供丰富的线上软件服务，如云硬盘、Gmail电子邮件，包括Orkut、Google Buzz以及Google+在内的社交网络服务。Google的产品同时也以应用软件的形式进入用户桌面，例如Google Chrome网页浏览器、Picasa图片整理与编辑软件、Google Hangouts即时通讯工具等。另外，Google还进行了移动设备的Android{% referto '[3]', 'Android' %}操作系统以及Google Chrome OS{% referto '[4]', 'ChromeOS' %}操作系统的开发。其安卓系统至今为止仍是移动端的主要操作系统之一。硬件系列方面，则有Google Pixel手机及平板电脑，穿戴设备如Google Pixel Watch及Google Pixel Buds等。

{% referfrom '[1]', 'Google Inc.', 'https://zh.wikipedia.org/zh-cn/Google' %}
{% referfrom '[2]', 'Nasdaq', 'https://zh.wikipedia.org/zh-cn/Nasdaq' %}
{% referfrom '[3]', 'Android', 'https://zh.wikipedia.org/zh-cn/Android' %}
{% referfrom '[4]', 'ChromeOS', 'https://zh.wikipedia.org/zh-cn/ChromeOS' %}
<!-- endtab -->

{% endtabs %}

## 19. 折叠框 folding

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% folding 参数（可选）, 标题 %}
content
{% endfolding %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `颜色`：blue, cyan, green, yellow, red
- `状态`：状态填写 open 代表默认打开。
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% folding cyan open, 查看默认打开的折叠框 %}
这是一个默认打开的折叠框。
{% endfolding %}

{% folding yellow, 查看列表测试 %}
- hello
- 你好
{% endfolding %}

{% folding red, 查看嵌套测试 %}
这里是嵌套父页面。
{% folding blue, 查看子节点 %}
这里是嵌套子页面。
{% folding green, 查看孙子节点 %}
这里是嵌套孙子页面。
{% endfolding %}
{% endfolding %}
{% endfolding %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% folding cyan open, 查看默认打开的折叠框 %}
这是一个默认打开的折叠框。
{% endfolding %}

{% folding yellow, 查看列表测试 %}
- hello
- 你好
{% endfolding %}

{% folding red, 查看嵌套测试 %}
这里是嵌套父页面。
{% folding blue, 查看子节点 %}
这里是嵌套子页面。
{% folding green, 查看孙子节点 %}
这里是嵌套孙子页面。
{% endfolding %}
{% endfolding %}
{% endfolding %}
<!-- endtab -->

{% endtabs %}

## 20. 分栏 tabs

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% tabs Unique name, [index] %}
<!-- tab [Tab caption] [@icon] -->
Any content (support inline tags too).
<!-- endtab -->
{% endtabs %}
```
<!-- endtab -->

<!-- tab 配置 -->
- Unique name :
  + 选项卡块标签的唯一名称，不带逗号。
  + 将在#id中用作每个标签及其索引号的前缀。
  + 如果名称中包含空格，则对于生成#id，所有空格将由破折号代替。
  + 仅当前帖子/页面的URL必须是唯一的！
- [index]:
  + 活动选项卡的索引号。
  + 如果未指定，将选择第一个标签（1）。
  + 如果index为-1，则不会选择任何选项卡。
  + 可选参数。
- [Tab caption]:
  + 当前选项卡的标题。
  + 如果未指定标题，则带有制表符索引后缀的唯一名称将用作制表符的标题。
  + 如果未指定标题，但指定了图标，则标题将为空。
  + 可选参数。
- [@icon]:
  + FontAwesome图标名称（全名，看起来像“ fas fa-font”）
  + 可以指定带空格或不带空格；
  + 例如’Tab caption @icon’ 和 ‘Tab caption@icon’.
  + 可选参数。
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% tabs example %}
<!-- tab -->
**This is Tab 1.**
<!-- endtab -->

<!-- tab -->
**This is Tab 2.**
<!-- endtab -->

<!-- tab -->
**This is Tab 3.**
<!-- endtab -->
{% endtabs %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% tabs example %}
<!-- tab Good@fas fa-thumbs-up -->
```python
return "ok" if val else "not"
```
<!-- endtab -->

<!-- tab Bad@fas fa-thumbs-down -->
```python
if val == True:
    return "ok"
else:
    return "not"
```
<!-- endtab -->
{% endtabs %}
<!-- endtab -->

{% endtabs %}

## 21. 隐藏块 hideBlock

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% hideBlock display, bg, color %}
content
{% endhideBlock %}
```
<!-- endtab -->

<!-- tab 配置 -->
- content：要隐藏的内容
- display：展示前按钮显示的文字（可选）
- bg：按钮的背景颜色（可选）
- color：按钮显示的文字的颜色（可选）
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% hideBlock 点我预览, blue %}
这里有张图片：
<img src="https://w.wallhaven.cc/full/x6/wallhaven-x6pl9v.jpg" alt="image" style="zoom:67%;" />
{% endhideBlock %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% hideBlock 点我预览, blue %}
这里有张图片：
<img src="https://w.wallhaven.cc/full/x6/wallhaven-x6pl9v.jpg" alt="image" style="zoom:67%;" />
{% endhideBlock %}
<!-- endtab -->

{% endtabs %}

## 22. 时间轴 timeline

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% timeline 时间线标题（可选）[,color] %}
<!-- timeline 时间节点（标题） -->
正文内容
<!-- endtimeline -->
<!-- timeline 时间节点（标题） -->
正文内容
<!-- endtimeline -->
{% endtimeline %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `title`:标题/时间线
- `color`:`timeline`颜色:default(留空) / blue / pink / red / purple / orange / green
<!-- endtab -->

<!-- tab 源码 -->
```markdown
{% timeline 时间轴样式, blue %}

<!-- timeline 史前战争 [公元前3000年以前](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(%E5%85%AC%E5%85%83%E5%89%8D)) -->
- 约300、400万年前：人类在地球上出现。
- 约170万年前：元谋人生活在今中国元谋一带，已能制造和使用石器。
- 约前8000年－前2000年：人类先后进入新石器时代。磨光加工的石器流行，出现了原始农业和畜牧业。母系氏族公社繁荣。
- 前1567年－前1085年：古埃及新王国时期。
- 前9世纪末：古希腊斯巴达国家形成。
- 前475年：中国战国时期开始。
- 前4年：基督教创始人耶稣诞生。
<!-- endtimeline -->

<!-- timeline 古代战争 [公元前3000年至公元5世纪](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(1%E4%B8%96%E7%BA%AA-10%E4%B8%96%E7%BA%AA)) -->
- 9年：中国西汉王莽即真天子位，国号新。
- 30年或33年：耶稣被钉于十字架，其后耶稣门徒开始传布基督教。
- 221年：刘备称帝立蜀，史称蜀汉。
- 372年：匈奴人入侵欧洲。
<!-- endtimeline -->

<!-- timeline 中世纪战争 [公元5世纪至公元15世纪](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(11%E4%B8%96%E7%BA%AA-15%E4%B8%96%E7%BA%AA)) -->
- 589年：隋灭陈，中国南北统一。
- 611年：穆罕默德创伊斯兰教。
- 618年：中国李渊称帝，国号唐。
- 1405年－1433年：郑和七次下西洋。
- 1452年－1519年：达芬奇在世。
- 1488年：迪亚士到达好望角。
<!-- endtimeline -->

<!-- timeline 近代战争 [公元15世纪至公元19世纪](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(16%E4%B8%96%E7%BA%AA-19%E4%B8%96%E7%BA%AA)) -->
- 1775年：美国独立战争爆发，第二次大陆会议召开。
- 1778年：法国介入美国独立战争，英法战争爆发。
- 1839年：清朝林则徐虎门销烟。中英鸦片战争。
- 1859年：达尔文出版物种起源。
- 1886年：可口可乐被发明。汽车于德国诞生。
- 1895年：中日签订马关条约要求割让辽东半岛、台湾岛、澎湖群岛，甲午战争结束。
<!-- endtimeline -->

<!-- timeline 现代战争 [20世纪早期（约1914年至1945年）](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(20%E4%B8%96%E7%BA%AA-%E7%8E%B0%E5%9C%A8)) -->
- 1911年：中国辛亥革命。
- 1912年：中华民国正式成立；清帝溥仪退位；泰坦尼克号沉没。
- 1914年：巴拿马运河完工；6月，萨拉热窝事件，第一次世界大战爆发。
- 1931年：九一八事变。
- 1945年：日本宣布无条件投降，同盟国获得第二次世界大战最终胜利。
<!-- endtimeline -->

<!-- timeline 工业战争 [20世纪中期至末期（约1945年至1991年）](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(20%E4%B8%96%E7%BA%AA-%E7%8E%B0%E5%9C%A8)) -->
- 1949年：中华人民共和国正式成立；北大西洋公约组织成立。
- 1966年－1976年：中国文化大革命。
- 1969年：人类首次登陆月球；中苏珍宝岛事件。
- 1978年：中国开始改革开放。
- 1991年：波斯湾战争，伊拉克占领科威特，联合国决定对伊拉克动武，伊拉克战败；苏联解体，冷战结束。
<!-- endtimeline -->

{% endtimeline %}
```
<!-- endtab -->

<!-- tab 预览 -->
{% timeline 时间轴样式, blue %}

<!-- timeline 史前战争 [公元前3000年以前](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(%E5%85%AC%E5%85%83%E5%89%8D)) -->
- 约300、400万年前：人类在地球上出现。
- 约170万年前：元谋人生活在今中国元谋一带，已能制造和使用石器。
- 约前8000年－前2000年：人类先后进入新石器时代。磨光加工的石器流行，出现了原始农业和畜牧业。母系氏族公社繁荣。
- 前1567年－前1085年：古埃及新王国时期。
- 前9世纪末：古希腊斯巴达国家形成。
- 前475年：中国战国时期开始。
- 前4年：基督教创始人耶稣诞生。
<!-- endtimeline -->

<!-- timeline 古代战争 [公元前3000年至公元5世纪](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(1%E4%B8%96%E7%BA%AA-10%E4%B8%96%E7%BA%AA)) -->
- 9年：中国西汉王莽即真天子位，国号新。
- 30年或33年：耶稣被钉于十字架，其后耶稣门徒开始传布基督教。
- 221年：刘备称帝立蜀，史称蜀汉。
- 372年：匈奴人入侵欧洲。
<!-- endtimeline -->

<!-- timeline 中世纪战争 [公元5世纪至公元15世纪](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(11%E4%B8%96%E7%BA%AA-15%E4%B8%96%E7%BA%AA)) -->
- 589年：隋灭陈，中国南北统一。
- 611年：穆罕默德创伊斯兰教。
- 618年：中国李渊称帝，国号唐。
- 1405年－1433年：郑和七次下西洋。
- 1452年－1519年：达芬奇在世。
- 1488年：迪亚士到达好望角。
<!-- endtimeline -->

<!-- timeline 近代战争 [公元15世纪至公元19世纪](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(16%E4%B8%96%E7%BA%AA-19%E4%B8%96%E7%BA%AA)) -->
- 1775年：美国独立战争爆发，第二次大陆会议召开。
- 1778年：法国介入美国独立战争，英法战争爆发。
- 1839年：清朝林则徐虎门销烟。中英鸦片战争。
- 1859年：达尔文出版物种起源。
- 1886年：可口可乐被发明。汽车于德国诞生。
- 1895年：中日签订马关条约要求割让辽东半岛、台湾岛、澎湖群岛，甲午战争结束。
<!-- endtimeline -->

<!-- timeline 现代战争 [20世纪早期（约1914年至1945年）](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(20%E4%B8%96%E7%BA%AA-%E7%8E%B0%E5%9C%A8)) -->
- 1911年：中国辛亥革命。
- 1912年：中华民国正式成立；清帝溥仪退位；泰坦尼克号沉没。
- 1914年：巴拿马运河完工；6月，萨拉热窝事件，第一次世界大战爆发。
- 1931年：九一八事变。
- 1945年：日本宣布无条件投降，同盟国获得第二次世界大战最终胜利。
<!-- endtimeline -->

<!-- timeline 工业战争 [20世纪中期至末期（约1945年至1991年）](https://zh.wikipedia.org/zh-sg/%E4%B8%96%E7%95%8C%E5%8F%B2%E5%B9%B4%E8%A1%A8_(20%E4%B8%96%E7%BA%AA-%E7%8E%B0%E5%9C%A8)) -->
- 1949年：中华人民共和国正式成立；北大西洋公约组织成立。
- 1966年－1976年：中国文化大革命。
- 1969年：人类首次登陆月球；中苏珍宝岛事件。
- 1978年：中国开始改革开放。
- 1991年：波斯湾战争，伊拉克占领科威特，联合国决定对伊拉克动武，伊拉克战败；苏联解体，冷战结束。
<!-- endtimeline -->

{% endtimeline %}
<!-- endtab -->

{% endtabs %}

## 23. 便携文档 pdf

{% tabs sheet %}

<!-- tab 语法 -->
```markdown
{% pdf 文件路径 %}
```
<!-- endtab -->

<!-- tab 配置 -->
- `文件路径`: 可以是相对路径或者是在线链接
<!-- endtab -->

<!-- tab 源码 -->
```markdown
# 可以是本地文件或在线链接
<div class="row">
  <embed src="../lib/docs/pdf_demo.pdf" width="100%" height="550" type="application/pdf">
</div>
```
<!-- endtab -->

<!-- tab 预览 -->
<div class="row">
  <embed src="../lib/docs/pdf_demo.pdf" width="100%" height="550" type="application/pdf">
</div>
<!-- endtab -->

{% endtabs %}
