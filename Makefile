.PHONY: all default fab12_bericht sonstige-dateien

default: all sonstige-dateien fab12_bericht

# Sonstige Dateien (Openoffice, Inkscape, was auch immer)
sonstige-dateien: ./output/AusleihlisteWerkzeug.pdf

./output/AusleihlisteWerkzeug.pdf: ./ausleihliste/AusleihlisteWerkzeug.xls
	./ausleihliste/build.sh

./output/geraetenutung.pdf:
	cp geraetenutzung.pdf output/geraetenutzung.pdf

./output/oeffnungsschilder.pdf:
	cp oeffnungsschilder.pdf output/oeffnungsschilder.pdf

fab12_bericht:
	$(MAKE) -C fab12_bericht

# TeX Dateien
TARGET=nachkaufliste abrechnung
include fablab-document/Makefile.include
