TEX = fab12_bericht.tex
PDF = $(TEX:%.tex=%.pdf)

.PHONY: all clean dist-clean

all: $(PDF)

$(PDF): $(TEX)
	@echo $(PDF)
	latexmk -quiet -pdf $<
	mkdir -p ../output/
	cp $@ ../output/

clean:
	latexmk -c

dist-clean: clean
	rm -f $(PDF)
