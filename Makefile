name=Rapport

all: clean
	# Image to PS conversion
	find . | grep ".png" | sed "s/\.png//" | sed "s/\.\///" | xargs -I {} convert {}.png {}.ps
	latex $(name).tex
	latex $(name).tex
	bibtex $(name)
	latex $(name).tex
	latex $(name).tex
	pdflatex $(name).tex

clean:
	rm -f *.dvi *.pdf *.blg *.aux *.log *.toc *.bbl *.ps
