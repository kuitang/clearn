LATEX = pdflatex
#LATEX_FLAGS = -shell-escape -interaction=batchmode
LATEX_FLAGS = -shell-escape 

all: main.pdf talk.pdf

main.pdf: main.tex
	$(LATEX) $(LATEX_FLAGS) main.tex
	bibtex main
	$(LATEX) $(LATEX_FLAGS) main.tex
	$(LATEX) $(LATEX_FLAGS) main.tex

talk.pdf: talk.tex
	$(LATEX) $(LATEX_FLAGS) talk.tex
	bibtex talk
	$(LATEX) $(LATEX_FLAGS) talk.tex
	$(LATEX) $(LATEX_FLAGS) talk.tex

.PHONY: clean

clean:
	rm -f *.pdf *.aux *.bbl *.bcf *.blg *.log *.out *.pdfsync *.snm *.toc *.run.xml *.nav *.brf

