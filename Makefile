.PHONY: all default fab12_bericht

default: all fab12_bericht

./output/geraetenutung.pdf:
	cp geraetenutzung.pdf output/geraetenutzung.pdf

./output/oeffnungsschilder.pdf:
	cp oeffnungsschilder.pdf output/oeffnungsschilder.pdf

fab12_bericht:
	$(MAKE) -C fab12_bericht

# TeX Dateien
TARGET=nachkaufliste abrechnung AusleihlisteWerkzeug Drehzahltabelle
include fablab-document/Makefile.include
