html:
	rm -rf build
	mkdir -p build
	cp src/recipes.org build/
	cd build; emacs --batch -Q recipes.org --eval "(org-html-export-to-html)" --eval "(kill-emacs)"
	rm build/recipes.org
	mv build/recipes.html build/index.html

publish:
	./publish.sh

all: html publish

