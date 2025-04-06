GITHUB_PAGES_BRANCH=gh-pages
SITENAME=evansuva.github.io

github:
	git add -A
	git commit -m "Rebuilt site"
	git push origin master
	git add -A :/; git commit -m "Rebuilt site" ; git push

.PHONY: html clean develop
