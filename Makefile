MAIN = main

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex #reference.bib
	latexmk -pdf $<

clean:
	latexmk -c $(MAIN).tex

.PHONY: all clean

