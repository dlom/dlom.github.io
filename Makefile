.PHONY: jekyll server view cache dev

jekyll:
	jekyll build --safe --watch

server:
	cd _site && python -m SimpleHTTPServer

view:
	xdg-open out/index.html

dev:
	echo "CACHE MANIFEST" > manifest.appcache
	echo "NETWORK:" >> manifest.appcache
	echo "*" >> manifest.appcache

cache:
	echo "CACHE MANIFEST" > manifest.appcache
	echo "#version $(shell date +%s)" >> manifest.appcache
	echo "CACHE:" >> manifest.appcache
	git ls-files img css js | sed 's#^#/#' >> manifest.appcache
	echo "NETWORK:" >> manifest.appcache
	echo "*" >> manifest.appcache
