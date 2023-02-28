<center><h1> MemeBox </h1></center>

<center>Website template for meme collection.</center>

* * *

### Description

This template is extracted from [NoneMeme/NoneMeme](https://github.com/NoneMeme/NoneMeme).

MemeBox can contain various contents including images and markdown documents.

### Build

1. Prepare a `make` tool.

2. Generate your repo with this template.

3. Clone your repo.

4. Open a shell and switch to the repo directory.

5. Run `make`.

    > NOTE: The default `PAGELANG` is now `en` (English).
    >
    > Read more info in [Custom text](#custom-text).

6. Add your contents to `art/` (for documents) or `meme/` (for pictures).

7. Commit and push.

### Custom text

Usually, you may expect to change some text rather than "MemeBox" etc.

For this, you can define these temporary environment variables below to override the default:

|Name|Description|
|:----|:----|
|PAGELANG|Page language mark for .html file, also decides the default text, e.g. "zh"|
|TITLE|The title of your memebox, e.g. "MemeBox"|
|DESC|A short description for your memebox, e.g. "Joy for Everyone"|
|FOOTER|Footer on every pages|

Just like this:

    PAGELANG=en TITLE=Foo DESC=Bar FOOTER="Lorem ipsum" make

If the default text does not satisfy you, don't worry, they are also customizable with the way above:

|Name|Description|
|:----|:----|
|T_MEMEPIC|Indicates a hyperlink jumping to picture page|
|T_MEMETXT|Indicates a hyperlink jumping to text page|
|T_DOWNLOAD|A hint for downloading a image|
|T_ANOTHER|A hint for randomly picking a image|
|T_BACK|A hint for leaving the full view|
|T_ZOOMIN|A hint for entering the full view|

### License

This template is under the [MIT License](LICENSE).

### Special thanks

- **[modcrafts/a60-shop](https://github.com/modcrafts/a60-shop)**

- **[picocss/pico](https://github.com/picocss/pico/tree/f9e97c0bf430df8fa3f730eb6a6e84f63d4a9b0c)**

- **[MarketingPipeline/Markdown-Tag](https://github.com/MarketingPipeline/Markdown-Tag)**

- **[NoneMeme/NoneMeme](https://github.com/NoneMeme/NoneMeme)**
