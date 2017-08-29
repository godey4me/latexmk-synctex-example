# Use Latexmk With SyncTeX and Constant Preview

This repository accompanies the blog post [paulklemm.com/blog/2014-07-16-use-github-for-scientific-writing/](http://paulklemm.com/blog/2014-07-16-use-github-for-scientific-writing/).

The `makefile` contains rules for compiling the `article.tex` LaTeX file using [latexmk](https://www.ctan.org/pkg/latexmk/). The makefile can be used as follows:

- `make` creates the PDF `article.pdf`,
- `make watch` creates the PDF `article.pdf` and watches for changes in the `article.tex` files and will recompile as soon as it detects changes,
- `make clean` removes all files generated in the compilation process, including the resulting PDF file.

If your editor and PDF viewer both support `SyncTeX` (e.g., [Sublime Text 3](https://www.sublimetext.com/) with [LaTeXTools](https://github.com/SublimeText/LaTeXTools) and [Skim](http://skim-app.sourceforge.net/)) you can jump in between them.

![jump between editor and pdf viewer](http://paulklemm.com/blog/media/2016-03-06-watch-latex-documents-using-latexmk/synctex_sublime_skim.gif)
