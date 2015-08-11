GITHUB_PAGES_BRANCH=gh-pages
SITENAME=evansuva.github.io

paradise:
	cd paradise; make html

github: html paradise
	git add -A
	git commit -m "Rebuilt site"
	git push origin master
	cp -r main/public public/
	cp -r paradise/public public/paradise
	git subtree push --prefix=public https://evansuva@github.com/$(SITENAME).git gh-pages


.PHONY: html clean develop
