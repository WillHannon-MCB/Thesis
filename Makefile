all: pdf html

# LaTeX generation using pandoc
latex: 
	pandoc \
		--metadata-file=metadata.yml \
		--natbib \
		--template=thesis.tex \
		-o output/thesis.tex \
		chapters/*.md

# PDF generation: This will depend on the LaTeX file being present, so 'latex' target is a dependency.
pdf: latex
	xelatex -output-directory=output output/thesis.tex
	bibtex output/thesis.aux
	xelatex -output-directory=output output/thesis.tex
	xelatex -output-directory=output output/thesis.tex

# HTML generation using pandoc
html: 
	pandoc \
		--metadata-file=metadata.yml \
		--citeproc \
		--embed-resources \
		--standalone \
		-o output/thesis.html \
		chapters/*.md

# Clean the output directory
clean:
	rm -f output/*

.PHONY: all latex pdf html clean