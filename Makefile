all: pdf

# Generate the PDF using xelatex
pdf: abstract acknowledgements body
	xelatex -output-directory=output output/main.tex
	bibtex output/main.aux
	xelatex -output-directory=output output/main.tex
	xelatex -output-directory=output output/main.tex

body: 
	cp -r figures/ output/figures
	pandoc \
		--natbib \
		--top-level-division=chapter \
		--template=templates/main.tex \
		-o output/main.tex \
		chapters/*.md

acknowledgements:
	pandoc \
		-o output/acknowledgements.tex \
		--template=templates/acknowledgements.tex \
		frontmatter/acknowledgements.md

abstract:
	pandoc \
		-o output/abstract.tex \
		--template=templates/abstract.tex \
		frontmatter/abstract.md

# Clean the output directory
clean:
	rm -rf output/*

.PHONY: all pdf clean