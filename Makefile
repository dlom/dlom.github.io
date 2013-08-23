.PHONY: jekyll server view cache

jekyll:
	jekyll build --safe --watch

server:
	cd _site && python -m SimpleHTTPServer

view:
	xdg-open out/index.html

dev:
	echo "CACHE MANIFEST" > cache.manifest
	echo "NETWORK:" >> cache.manifest
	echo "*" >> cache.manifest

cache:
	echo "CACHE MANIFEST" > cache.manifest
	echo "#version $(shell date +%s)" >> cache.manifest
	echo "CACHE:" >> cache.manifest
	git ls-files img css js | sed 's#^#/#' >> cache.manifest
	echo "NETWORK:" >> cache.manifest
	echo "*" >> cache.manifest
