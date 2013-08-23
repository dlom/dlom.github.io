.PHONY: jekyll server view cache dev

jekyll:
	jekyll serve --safe --watch

view:
	xdg-open out/index.html
