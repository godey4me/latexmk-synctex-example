# File adapted from this stackoverflow question: https://tex.stackexchange.com/questions/40738/how-to-properly-make-a-latex-project

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all: article.pdf

# MAIN LATEXMK RULE

# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.
# -interaction=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.
# -synctex=1 is required to jump between the source PDF and the text editor
# -pvc causes latexmk to watch the file directory for changes. Removing this command causes a single build
# -quiet suppresses most status messages (https://tex.stackexchange.com/questions/40783/can-i-make-latexmk-quieter)
article.pdf: article.tex
	latexmk -quiet -bibtex $(PREVIEW) -f -pdf -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode" -use-make article.tex

# The .PHONY rule keeps make from doing something with a file named preview or clean.
.PHONY: preview
# Set the preview variable to -pvc to switch latexmk into the preview continuously mode
preview: PREVIEW=-pvc
preview: article.pdf

.PHONY: clean
# Adding the -bibtex also removes the .bbl files (http://tex.stackexchange.com/a/83384/79184)
clean:
	latexmk -CA -bibtex
