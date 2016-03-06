# Use Latexmk With Synctex and Constant Preview

This repository accompanies the blog post [paulklemm.com/zenf/blog/2016/03/06/watch-latex-documents-using-latexmk/](http://paulklemm.com/zenf/blog/2016/03/06/watch-latex-documents-using-latexmk/).

The `makefile` contains rules for compiling the `article.tex` LaTeX file using [latexmk](https://www.ctan.org/pkg/latexmk/). The makefile can be used as follows:

- `make` creates the PDF `article.pdf`,
- `make preview` creates the PDF `article.pdf` and watches for changes in the `article.tex` files and will recompile as soon as it detects changes,
- `make clean` removes all files generated in the compilation process, including the resulting PDF file.
