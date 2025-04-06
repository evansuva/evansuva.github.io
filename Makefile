GITHUB_PAGES_BRANCH=gh-pages
SITENAME=evansuva.github.io

github:
	git add -A
	git commit -m "Rebuilt site"
	git push origin master
	git subtree push --prefix=public https://evansuva@github.com/$(SITENAME).git gh-pages

.PHONY: html clean develop
