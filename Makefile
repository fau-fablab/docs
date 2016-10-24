.PHONY: all default fab12_bericht sonstige-dateien

default: all sonstige-dateien fab12_bericht

# Sonstige Dateien (Openoffice, Inkscape, was auch immer)
sonstige-dateien: ./output/Laserzeit_Bezahlzettel_DinA4_4x2_extra_klein.pdf ./output/AusleihlisteWerkzeug.pdf

./output/Laserzeit_Bezahlzettel_DinA4_4x2_extra_klein.pdf: ./laserbezahlzettel/Laserzeit_Bezahlzettel_DinA6.odt
	./laserbezahlzettel/build.sh

./output/AusleihlisteWerkzeug.pdf: ./ausleihliste/AusleihlisteWerkzeug.xls
	./ausleihliste/build.sh

./output/geraetenutung.pdf:
	cp geraetenutzung.pdf output/geraetenutzung.pdf

./output/oeffnungsschilder.pdf:
	cp oeffnungsschilder.pdf output/oeffnungsschilder.pdf

fab12_bericht:
	$(MAKE) -C fab12_bericht

# TeX Dateien
TARGET=nachkaufliste
include fablab-document/Makefile.include
