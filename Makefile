title = essay
SHELL = /bin/bash

clean:
	rm -v $(title).{aux,blg,log,toc,bbl}

count:	compile
	pdftotext "$(title).pdf" - | wc -w
	
compile:
	pdflatex $(title).tex
	bibtex $(title)
	pdflatex $(title).tex
	pdflatex $(title).tex
