TARGET?=hagedorn_cv

PDFTEXOPTS = -halt-on-error -pdf -pvc

default: build

clean:
	rm -f *.acn *.acr *.alg *.aux *.bbl *.blg *.dvi *.glg *.glo *.gls *.ist *.lof *.log *.lol *.lot *.out *.pdf *.toc *.pdfsync *.gz *.tdo
build: 
	latexmk $(PDFTEXOPTS) $(TARGET).tex
#	bibtex $(TARGET).aux
#	pdflatex $(PDFTEXOPTS) $(TARGET).tex
#	pdflatex $(PDFTEXOPTS) $(TARGET).tex

open: clean build
	xdg-open $(TARGET).pdf &
