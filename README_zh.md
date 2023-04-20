<center><h1> MemeBox </h1></center>

<center>NoneMeme项目使用的网站模板</center>

* * *

### 描述

本模板提取自 [NoneMeme/NoneMeme](https://github.com/NoneMeme/NoneMeme).

Memebox 可以存放多种内容，如`图片`和`Markdown文档`。

### 构建

1. 准备一个`make`工具。

2. 使用本模板，生成你的仓库。

3. 克隆你的仓库。

4. 打开终端，进入你的仓库。

5. 运行 make。

    > 注意: 默认的变量 `PAGELANG` 现在是 `en` (英文).
    >
    > 详情： [自定义文字](#自定义文字).

6. 将你的资源放入 `art/` (文档) 或 `meme/` (图片).

    > 注意: Memebox **不** 含有网站图标。
    >
    > 你应该将你的图标放入`static/`目录内。
    >
    > 更多信息可查看`make`的输出内容。

7. 提交并推送。

### 自定义文字

通常，你可能想自定义网站的标题等等。

你可以通过在终端中定义以下环境变量值来进行修改操作：

|名称|D描述|
|:----|:----|
|PAGELANG|.html文件的页面语言标记,同时也定义了网站使用的语言，例如："zh"|
|TITLE|网站标题， 例如："MemeBox"|
|DESC|网站描述，例如："Joy for Everyone"|
|TDESC|文字梗的描述|
|FOOTER|每个页面的脚注|

比如：

    PAGELANG=en TITLE=Foo DESC=Bar FOOTER="Lorem ipsum" make

如果默认信息你看不顺眼，没关系，它们也是可以修改的：

|名称|描述|
|:----|:----|
|T_MEMEPIC|跳转至图片页面的链接名称|
|T_MEMETXT|跳转至文字页面的超链接名称|
|T_DOWNLOAD|下载一张图片时弹出的提示|
|T_ANOTHER|随机选择一张图片时弹出的提示|
|T_BACK|返回主页的提示|
|T_ZOOMIN|查看大图的提示|
|T_NIMGS|图片统计信息|

### 许可证

本项目使用 [MIT 协议](LICENSE) 开源。

### 特别感谢

- **[modcrafts/a60-shop](https://github.com/modcrafts/a60-shop)**

- **[picocss/pico](https://github.com/picocss/pico/tree/f9e97c0bf430df8fa3f730eb6a6e84f63d4a9b0c)**

- **[MarketingPipeline/Markdown-Tag](https://github.com/MarketingPipeline/Markdown-Tag)**

- **[NoneMeme/NoneMeme](https://github.com/NoneMeme/NoneMeme)**
