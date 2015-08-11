GITHUB_PAGES_BRANCH=gh-pages
SITENAME=evansuva.github.io

paradise:
	cd paradise; make html

github: html paradise
	cp -r main/public public/
	cp -r paradise/public public/paradise
	git add -A
	git commit -m "Rebuilt site"
	git push origin master
	git subtree push --prefix=public https://evansuva@github.com/$(SITENAME).git gh-pages


.PHONY: html clean develop
