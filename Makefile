FILES = atom.xml
FILES += css
FILES += foafroll.xml
FILES += images
FILES += index.html
FILES += openbsd.png
FILES += opml.xml
FILES += rss10.xml
FILES += rss20.xml

DIR = "/var/www/htdocs/bronevichok.ru/openbsdnow/"

all: update

update:
	cp -R openbsd venus/themes/
	cd venus/; python planet.py -v ../config.ini

copy:
	scp -r ${FILES} www.bronevichok.ru:${DIR}

publish:
	cp -R ${FILES} ${DIR}
