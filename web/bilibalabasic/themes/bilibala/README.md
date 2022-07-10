# 一个基于`ayer`创造的Hexo站点模板

## 介绍

本博客站点模板模仿了`hexo-ayer`主题，进行了完全的去`ayer`化操作，不允许商用，不建议大家进行使用，仅供大家学习和参考，如有侵权请联系站长，邮箱nickmechlin01@outlook.com

## 特性

1. 干净且优雅，文章内容美观易读
2. 首页封面全屏平铺，扁平化设计，简洁又不失高大上
3. 响应式设计，博客在桌面端、平板、手机等设备上均能很好的展现
4. 时间轴式的归档页
5. 支持 `黑夜阅读` 模式
6. 侧边栏可以点击显示或隐藏
7. 支持文章置顶和文章打赏
8. 支持文章字数和阅读时长统计
9. 支持网易云音乐播放
10. 支持  `MathJax` 和 `Katex` 数学公式
11. 支持 `Mermaid` 流程图、状态图、时序图、甘特图
12. `TOC` 目录在文章页悬浮，跳转更方便
13. 集成了博客加密访问的功能
14. 支持评论功能（暂未开放）

## 安装

## Enable

Modify theme setting in _config.yml 

```
theme: bilibala
```

## 多语言支持

zh-CN（中文简体） en（English） zh-TW（中文繁体） ja（日本语） es（Español） de（Deutsch） fr（Français） ru（Русский） ko（한국어） vi（Tiếng Việt） nl（ Nederlands） no（norsk） pt（葡萄牙语）

英文是默认语言，如果要更改，请修改您的Hexo博客根文件夹`language`中的文件中的选项。`_config.yml`

## 配置

如果您有任何问题，请告诉我。

```
# Deployment 部署
## Docs: https://hexo.io/docs/one-command-deployment
deploy:
  type: ''

# Site
title: Zervan的小站
# subtitle: 'Stay hungry, stay foolish'
description: 'Zervan'
keywords: Zervan
author: Zervan
language: zh-CN
timezone: 'asia/shanghai'

## 主题
theme: bilibala

# 站点副标题和打字动效
# https://github.com/mattboldt/typed.js
subtitle: 
  enable: true # 是否开启动效
  text: 你好! ~~ # 显示的文字
  text2: 这里是Zervan的博客! # 滚动播放，如果不需要可以留空
  text3: 又一个码农的家... # 最多支持三段文字
  startDelay: 0 # 延迟时间
  typeSpeed: 200 # 打字速度
  loop: true # 是否循环
  backSpeed: 100 # 回退速度
  showCursor: true # 是否显示光标

# URL
## Set your site url here. For example, if you use GitHub Page, set url as 'https://username.github.io/project'
url: https://zervan.cn
permalink: :year/:month/:day/:title/
permalink_defaults:
pretty_urls:
  trailing_index: true # Set to false to remove trailing 'index.html' from permalinks
  trailing_html: true # Set to false to remove trailing '.html' from permalinks

# Directory
source_dir: source
public_dir: public
tag_dir: tags
archive_dir: archives
category_dir: categories
## 收藏_dir
code_dir: downloads/code
i18n_dir: :lang
skip_render:

# 侧边栏菜单
menu:
  主页: https://zervan29131.github.io/ZervanBlog/
  归档: /archives
  分类: /categories
  标签: /tags
  旅行: /travel
  摄影: /photos
  友链: /friends
  关于我: /about
  播放器: /music

# Writing
new_post_name: :title.md # File name of new posts
default_layout: post
titlecase: false # Transform title into titlecase
external_link:
  enable: true # Open external links in new tab
  field: site # Apply to the whole site
  exclude: ''
filename_case: 0
render_drafts: false
post_asset_folder: false
relative_link: false
future: true
highlight:
  enable: true
  line_number: true
  auto_detect: false
  tab_replace: ''
  wrap: true
  hljs: false
prismjs:
  enable: false
  preprocess: true
  line_number: true
  tab_replace: ''

# Home page setting
# path: Root path for your blogs index page. (default = '')
# per_page: Posts displayed per page. (0 = disable pagination)
# order_by: Posts order. (Order by date descending by default)
index_generator:
  path: ''
  per_page: 10
  order_by: -date

# Category & Tag
default_category: uncategorized
category_map:
tag_map:

# Metadata elements
## https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta
meta_generator: true

# Date / Time format
## Hexo uses Moment.js to parse and display date
## You can customize the date format as defined in
## http://momentjs.com/docs/#/displaying/format/
date_format: YYYY-MM-DD
time_format: HH:mm:ss
## updated_option supports 'mtime', 'date', 'empty'
updated_option: 'mtime'

# Pagination
## Set per_page to 0 to disable pagination
per_page: 10
pagination_dir: page

# Include / Exclude file(s)
## include:/exclude: options only apply to the 'source/' folder
include:
exclude:
ignore:

# 网站图标和侧边栏logo
favicon: /images/favicon.ico
logo: /images/console.svg

# 封面配置
# enable-是否启用封面；path-封面背景图；logo-封面logo
cover:
  enable: true
  path: /images/cover.jpg # /source/images目录下的壁纸
  logo: /images/console.svg # 如果不要直接设置成false

# 页面顶部进度条
progressBar: true

# 告示板模块
broadcast:
  enable: true # true开启，false关闭
  type: 1 # 1：自定义输入，2：一言api(https://hitokoto.cn/)
  text: Stay hungry, stay foolish # type为1时有效

# 文章配置
# 文章太长，截断按钮文字(在需要截断的行增加此标记：<!--more-->)
excerpt_link: 阅读更多...
# 如果你嫌每篇文章手动加more标记比较麻烦，又不想在首页全文显示，可以把excerpt_all设置成true，这样首页只会显示文章归档
excerpt_all: true

# 是否开启代码复制按钮
copy_btn: true
# 是否开启文章分享按钮
share_enable: true
# 国内的社交平台(If you are not in China, maybe you prefer to set:false)
share_china: true
# 文章分享文字
share_text: 分享(除了微信扫一扫, 其他的都没啥用)

# 分页文字
nav_text:
  page_prev: 上一页
  page_next: 下一页
  post_prev: 上一篇
  post_next: 下一篇

# 文章页是否显示目录
toc: true

# 文章中的图片是否支持点击放大
image_viewer: true

# https://github.com/willin/hexo-wordcount
# 是否开启字数统计(关闭请设置enable为false)
# 也可以单独在md文件里Front-matter设置`no_word_count: true`属性，来自定义关闭字数统计
word_count:
  enable: true
  # 只在文章详情显示(不在首页显示)
  only_article_visit: true

# 打赏
# 打赏type设定：0-关闭打赏； 1-文章对应的md文件里有reward:true属性，才有打赏； 2-默认开启所有文章均有打赏，如果有些文章你不需要，请在文章对应的md文件里设置no_reward:true
reward_type: 2
# 打赏wording
reward_wording: "请我喝杯咖啡吧~"
# 支付宝二维码图片地址
alipay: /images/alipay.png
# 微信二维码图片地址
weixin: /images/weichat.png

# 版权声明
# 版权声明type设定：0-关闭版权声明； 1-文章对应的md文件里有copyright: true属性，才有版权声明； 2-所有文章均有版权声明
copyright_type: 2

# 是否启用搜索
search: true

# RSS订阅(先安装hexo-generator-feed插件，再去博客根目录config进行配置)
# 不想显示可以直接留空
rss:

# 是否启用黑夜模式开关
darkmode: true

# 动态背景效果: 0-关闭，1-动态线条(跟随鼠标)
canvas_bg: 0

# 自定义鼠标样式，直接替换/images/mouse.cur文件
mouse:
  enable: false
  path: /images/mouse.cur

# 鼠标点击效果：0-关闭，1-爱心，2-爆炸烟花，3-粒子烟花
click_effect: 0

# 页面宽度自定义（不建议修改，可能造成布局混乱），article_width文章宽度，sidebar_width侧边栏宽度
layout:
  article_width: 80rem
  sidebar_width: 8rem

# GitHub Ribbons-封面右上角的forkme，换样式直接在source/images目录下替换forkme图片
github:
  # (关闭请设置为false)
  enable: true
  url: https://github.com/Zervan29131/bilibala

# 网易云音乐插件
music:
  enable: true
  # 播放器尺寸类型(1：小尺寸、2：大尺寸)
  type: 2
  id: 22707008 # 网易云分享的音乐ID(更换音乐请更改此配置项)
  autoPlay: false # 是否开启自动播放

# 访问量统计(不蒜子)
busuanzi:
  enable: true

# 友盟cnzz统计(url填js代码src链接)
cnzz:
  enable: true
  url: #

# Mathjax数学公式
mathjax: true

# Katex数学公式(allpost设置为false时只有头部设置math:true的文章才开启)
# 需要更换hexo渲染器，npm un hexo-renderer-marked -S && npm i hexo-renderer-markdown-it-katex -S
katex:
  enable: false # true
  allpost: true
  copy_tex: false

# mermaid流程图 三个选项缺一不可(https://mermaid-js.github.io/mermaid/#/)
mermaid:
  enable: false
  cdn: https://cdn.jsdelivr.net/npm/mermaid@8.9.2/dist/mermaid.min.js
  theme: forest

# 网站成立年份(默认为 2019，若填入年份小于当前年份，则显示为 2018-2019 类似的格式)
since: 2021-2022

# ICP备案信息尾部显示
icp:
  enable: false
  url: "http://www.beian.miit.gov.cn/" # 备案链接
  text: "鲁ICP备88888888" # 备案信息
# 公安备案信息尾部显示
gongan:
  enable: true
  img: /images/beian.png #公安备案图片
  url: "http://www.beian.gov.cn/" #公安备案链接
  text: "鲁ICP备2021036977号-1" #公安备案信息

# 友情链接
friends_link:
  Thaumy: #网站名称
    #网站地址
    url: https://www.thaumy.cn
    #网站图片(可忽略不写)
    #img: /images/console.png
  GitHub:
    url: https://github.com/zervan29131
    img: https://i.loli.net/2020/09/07/indb4PRYDA98EkN.png
  码云:
    url: https://gitee.com/
    img: https://i.loli.net/2020/09/07/K3AqO7h6krQFlRX.png
  Hexo官网:
    url: https://hexo.io
    img: https://i.loli.net/2020/09/07/UYGzjo7h68CRWny.png
  Hexo图表插件:
    url: https://github.com/
    img: https://i.loli.net/2020/09/07/GIXBYE5SoylhR1r.png


# 评论：1、Valine(推荐)；2、Gitalk；3、Twikoo; 4.MiniValine

# 1、Valine[一款快速、简洁且高效的无后端评论系统](https://github.com/xCss/Valine)
# 启用Valine必须先创建leancloud应用， 获取 id|key 填入即可
leancloud:
  enable: true
  app_id: #
  app_key: #
# Valine配置
valine:
  enable: true # 是否启用
  avatar: monsterid # 头像样式(https://valine.js.org/avatar.html)
  placeholder: 给我的文章加点评论吧~ # placeholder

# 2、Gitalk(https://github.com/gitalk/gitalk)
gitalk:
  enable: false # true
  clientID: # GitHub Application Client ID
  clientSecret: # Client Secret
  repo: # Repository name
  owner: # GitHub ID
  admin: # GitHub ID

# 3、Twikoo(https://github.com/imaegoo/twikoo)
twikoo:
  enable: false
  envId: #

# 4、MiniValine
# See: https://github.com/MiniValine/MiniValine
minivaline:
  enable: false
  serverURL: https://minivaline.your-domain.com

# 首页广告配置
# 可以根据需要自行增加ad_3，ad_4...，留空则不显示
# ads:
#   ad_1:
#     title: vultr优惠vps
#     img: https://cdn.jsdelivr.net/gh/Shen-Yu/cdn/img/vultr.png
#     url: https://www.vultr.com/?ref=8630075
#     width: 300
#   ad_2:
#     title: 云服务器全球购低至2折
#     img: https://cdn.jsdelivr.net/gh/Shen-Yu/cdn/img/ad_2.jpg
#     url: https://curl.qcloud.com/kvO7hb43
#     width: 300

# 网站开启加密访问，密码可设置任何字符
lock:
  enable: false
  password: 123456
```

## 插件

- [hexo-generator-search](https://github.com/wzpan/hexo-generator-search)（用于本地搜索）

  ```
  $ npm install hexo-generator-searchdb --save
  ```

  然后在hexo的配置文件中添加插件配置`_config.yml`（注意：不是主题的配置文件）：

  ```
  # Hexo-generator-search
  search:
    path: search.xml
    field: post
    format: html
  ```

- [hexo-generator-feed](https://github.com/hexojs/hexo-generator-feed)（用于 RSS）

  ```
  $ npm install hexo-generator-feed --save
  ```

  然后在hexo的配置文件中添加插件配置`_config.yml`（注意：不是主题的配置文件）：

  ```
  feed:m
      type: atom
      path: atom.xml
      limit: 20
      hub:
      content:
      content_limit: 140
      content_limit_delim: ' '
      order_by: -date
  ```

- [hexo-generator-index-pin-top](https://github.com/netcan/hexo-generator-index-pin-top)（用于 Sticky Post）

  ```
  $ npm uninstall hexo-generator-index --save
  $ npm install hexo-generator-index-pin-top --save
  ```

## 插件(可选)

- [hexo-generator-index-pin-top](https://github.com/netcan/hexo-generator-index-pin-top) 用于文章置顶
- [hexo-blog-encrypt](https://github.com/MikeCoder/hexo-blog-encrypt/blob/master/ReadMe.zh.md) 用于文章加密
- [hexo-tag-aplayer](https://github.com/MoePlayer/hexo-tag-aplayer/blob/master/docs/README-zh_cn.md) 用于播放音乐
- [hexo-tag-dplayer](https://github.com/MoePlayer/hexo-tag-dplayer) 用于播放视频
- [hexo-helper-live2d](https://github.com/EYHN/hexo-helper-live2d/blob/master/README.zh-CN.md) 二次元看板娘

更多插件请见 [hexo 插件市场](

## 类别

```
  hexo新页面分类
```

然后将以下代码粘贴到文件中：/source/categories/index.md

```
---
title: categories
type: categories
layout: "categories"
---
```

## 标签

与类别相同。

## 朋友链接

```
hexo new page friends
```

然后将以下代码粘贴到文件中：/source/friends/index.md

```
---
title: friends
type: friends
layout: "friends"
---
```

然后`friends_link`在里面编辑`_config.yml`

## 画廊

需要写在markdown的头部，这不是一个好的写法，希望能在github上得到更好的写法。

```
---
title: Gallery
albums: [["img_url", "img_caption"], ["img_url", "img_caption"]]
---
```

## 目录

使用 Tocbot 解析内容中的标题标签（h1~h6）并插入目录。

- 将以下配置复制到你主题目录下的 _config.yml

  ```
  # Toc
  toc: true
  ```

- 如果在_config.yml中开启了Toc，那么Tocbot会在每个博客解析内容的title标签中生成一个Toc文章目录，但并不是所有博客都需要Toc，所以在markdown的Front-matter部分可以关闭：

  
  
  ```
  ---
  no_toc: true
  ---
  ```

## 引用图片

> 插入图片的两种方法：

1. 引用图床
2. 引用本地图片。为了防止路径出错，建议使用图床。

参照 [Hexo 文档](https://hexo.io/zh-cn/docs/asset-folders)，然后用这种方式引用图片：

```
{% asset_img image.jpg [title] %}
```

如果还是无法显示，请尝试在文章里用 html 的 img 标签来引用本地图片。

## 查看文章的访问量

在 ayer 的 config 配置里有 `busuanzi` 选项，默认设置为 `enable:true`，就开启了站点访问量的统计，站点尾部左下角的 `PV` 代表了当前页的访问次数，`UV` 代表了当前站点的访问人数。注意：不蒜子统计是根据当前域名来统计的，你在本地启动的时候由于是 localhost，所以数字会很大，部署到线上之后就会根据域名重新统计。

## 网易云音乐播放

这是由于网易云音乐对部分歌曲做了版权限制，你可以多换几首试试，配置文件里的默认歌曲 `潮鳴り` 是可以播放的。如果你动手能力强，也可以试试音乐播放插件 [hexo-tag-aplayer](https://github.com/MoePlayer/hexo-tag-aplayer/blob/master/docs/README-zh_cn.md)，配合`MetingJS`可以支持对于 QQ 音乐、网易云、虾米、酷狗、百度等平台的音乐播放。

## 分享链接

你需要在 Hexo 博客目录下的 `_config.yml` 文件中把 url 配置成部署后的域名。

## 让搜索引擎收录站点

参考：[Hexo 站点 SEO 优化技巧](https://shen-yu.gitee.io/2020/hexo-seo)
