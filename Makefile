.PHONY: all default fab12_bericht

default: all fab12_bericht

fab12_bericht:
	$(MAKE) -C fab12_bericht

# TeX Dateien
# Formulare und Tabellen
TARGET=nachkaufliste abrechnung AusleihlisteWerkzeug Drehzahltabelle Acrylpreis Verbandbuch-Loseblatt
# Schilder und Aushänge
TARGET+=Fahrradstaender formlabs_keinMetall geraetenutzung lueftung muelleimer oeffnungsschilder \
	werkstatt-spenden schleifpapier tu-was-fuers-lab druckerpreise mithelfen openlab schild-ausgang \
	schild-eei-briefkasten
include fablab-document/Makefile.include

# gemeinsame Vorlage und Grafiken
$(PDFTARGETS): fablab-aushang.sty $(wildcard img/*.pdf)
