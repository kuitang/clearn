LATEX = pdflatex
#LATEX_FLAGS = -shell-escape -interaction=batchmode
LATEX_FLAGS = -shell-escape 

all: main.pdf 

unimatch.pdf: unimatch.py
	python unimatch.py

bimatch.pdf: bimatch.py
	python bimatch.py

main.pdf: main.tex
	$(LATEX) $(LATEX_FLAGS) main.tex
	bibtex main
	$(LATEX) $(LATEX_FLAGS) main.tex
	$(LATEX) $(LATEX_FLAGS) main.tex

.PHONY: clean

clean:
	rm -f *.pdf *.aux *.bbl

