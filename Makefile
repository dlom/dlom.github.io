.PHONY: jekyll server view cache dev

jekyll:
	jekyll build --safe --watch

server:
	cd _site && python -m SimpleHTTPServer

view:
	xdg-open out/index.html

cache:
	sed "s/^#version .\+/#version $(shell date +%s)/" -i manifest.appcache
