.PHONY: jekyll server view

jekyll:
	jekyll build --safe --watch

server:
	cd _site && python -m SimpleHTTPServer

view:
	xdg-open out/index.html
