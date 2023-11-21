# Uncovering the dynamics of viral evolution and pathogenesis from high-throughput datasets: a computational perspective

**Will Hannon**

## Build Instructions

This repository contains the text and code used to compile my MCB Thesis. The bulk of the thesis is written in `markdown` and converted to `LaTeX` using [`Pandoc`](https://pandoc.org/MANUAL.html).

To compile the thesis you'll need to have a `LaTeX` distribution with `xelatex`. You'll also need a recent version of `Pandoc`.

To compile the thesis run:

```bash
make
```

The compiled thesis will be located in the `output/` directory. The name of the compiled thesis is `main.pdf`.

To clean up the output directory use:

```bash
make clean
```

## Overview

- `bibliography`: The bibtex bibliography
- `chapters`: The body of the thesis (written in `markdown`)
- `frontmatter`: The abstract and acknowledgements (written in `markdown`)
- `figures`: Figures for each chapter
- `templates`: LaTeX templates for converting the markdown files into LaTeX with `Pandoc`
- `Makefile`: The pipeline to compile the Thesis
