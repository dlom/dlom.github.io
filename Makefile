.PHONY: jekyll server view cache dev

jekyll:
	jekyll serve --safe

view:
	xdg-open out/index.html
