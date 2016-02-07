default: all sonstige-dateien

# Sonstige Dateien (Openoffice, Inkscape, was auch immer)
sonstige-dateien: ./output/Laserzeit_Bezahlzettel_DinA4_4x2_extra_klein.pdf ./output/AusleihlisteWerkzeug.pdf

./output/Laserzeit_Bezahlzettel_DinA4_4x2_extra_klein.pdf: ./laserbezahlzettel/Laserzeit_Bezahlzettel_DinA6.odt
	./laserbezahlzettel/build.sh

./output/AusleihlisteWerkzeug.pdf: ./ausleihliste/AusleihlisteWerkzeug.xls
	./ausleihliste/build.sh

# TeX Dateien
TARGET=nachkaufliste
include fablab-document/Makefile.include
