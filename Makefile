
all: update

update:
	cp -R openbsd venus/themes/
	cd venus/; python planet.py -v ../config.ini

copy:
	scp -r atom.xml css foafroll.xml images index.html opml.xml rss10.xml rss20.xml gw.bronevichok.ru:/var/www/html/www.bronevichok.ru/openbsd-planet/
