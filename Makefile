# memebox generating

PAGELANG?=zh

TITLE?=MemeBox
DESC?=Joy for Everyone
FOOTER?=** Footer **

ifeq (${PAGELANG}, en)
T_MEMEPIC?=Picture memes
T_MEMETXT?=Text memes
T_DOWNLOAD?=Download
T_ANOTHER?=Not prefer to it? Try another one
T_BACK?=Back to gallery
T_ZOOMIN?=Zoom in
endif

ifeq (${PAGELANG}, zh)
T_MEMEPIC?=图片梗
T_MEMETXT?=文字梗
T_DOWNLOAD?=下载图片
T_ANOTHER?=梗图不喜欢？换一张试试看
T_BACK?=返回画廊
T_ZOOMIN?=查看大图
endif

.PHONY: clean pagetext structure

shell/genartlist.sh shell/art2text.sh index.html: %: src/%.in
	sed 's%@TITLE@%${TITLE}%g' $^ | sed 's%@DESC@%${DESC}%g' | \
		sed 's%@FOOTER@%${FOOTER}%g' | sed 's%@PAGELANG@%${PAGELANG}%g' | \
		sed 's%@T_MEMEPIC@%${T_MEMEPIC}%g' | sed 's%@T_MEMETXT@%${T_MEMETXT}%g' | \
		sed 's%@T_DOWNLOAD@%${T_DOWNLOAD}%g' | sed 's%@T_ANOTHER@%${T_ANOTHER}%g' | \
		sed 's%@T_BACK@%${T_BACK}%g' | sed 's%@T_ZOOMIN@%${T_ZOOMIN}%g' > $@

static/favicon.ico: favicon.ico
	mv $^ $@

static/favicon.png: favicon.png
	mv $^ $@

structure:
	mkdir -pv art meme shell static/data/images static/image text
	touch art/.gitkeep meme/.gitkeep static/data/.gitkeep \
		static/data/images/.gitkeep static/image/.gitkeep text/.gitkeep
	cp -rf src/.github src/static .
	cp -rf src/shell/computed.sh src/shell/imgcheck.py shell/

all: structure static/favicon.*