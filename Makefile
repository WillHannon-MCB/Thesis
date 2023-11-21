all: pdf

pdf: abstract acknowledgements body
	xelatex -output-directory=output output/main.tex
	bibtex output/main.aux
	xelatex -output-directory=output output/main.tex
	xelatex -output-directory=output output/main.tex

body: output
	cp -r figures/ output/figures
	pandoc \
		--natbib \
		--top-level-division=chapter \
		--template=templates/main.tex \
		-o output/main.tex \
		chapters/*.md

acknowledgements: output
	pandoc \
		-o output/acknowledgements.tex \
		--template=templates/acknowledgements.tex \
		frontmatter/acknowledgements.md

abstract: output
	pandoc \
		-o output/abstract.tex \
		--template=templates/abstract.tex \
		frontmatter/abstract.md

output:
	mkdir -p output

clean:
	rm -rf output/*

.PHONY: all pdf clean