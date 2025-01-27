doc: main.tex
	@xelatex -synctex=1 main.tex
	make clean

all: main.tex 
	@xelatex -synctex=1 main.tex
	@biber main 
	@xelatex -synctex=1 main.tex
	@xelatex -synctex=1 main.tex
	make clean

.PHONY: clean
clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.run.xml *.blg *.bcf *.cpt
