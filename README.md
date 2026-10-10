docs
====

Diverse Dokumente und Aushänge des [FAU FabLab](https://fablab.fau.de).

Inhalt
------

Alle Dokumente sind LaTeX und nutzen die gemeinsame Vorlage `fablab-aushang.sty`
(Kopf mit Logo, Fußzeile mit Version, Schilder mit großer Schrift und Fabcube im Hintergrund).
Grafiken liegen in `img/`.

Außerdem:

- Reisebericht Fab12 (`fab12_bericht/`)
- Raumplan (`raumplan/`), Luftfenster-Entwurf für den Schneideplotter, Anfahrtsskizze und
  Sponsoring-Schild als fertige Dateien

Download
--------

Die neueste Version aus [GitHub](https://github.com/fau-fablab/docs) ist als PDF abrufbar:

- Formulare und Tabellen
  - [Ausleihliste Werkzeug](https://brain.fablab.fau.de/build/docs/AusleihlisteWerkzeug.pdf)
  - [Nachkaufliste](https://brain.fablab.fau.de/build/docs/nachkaufliste.pdf)
  - [Verbandbuch (Loseblatt, duplex drucken)](https://brain.fablab.fau.de/build/docs/Verbandbuch-Loseblatt.pdf)
  - [Drehzahltabelle Standbohrmaschine](https://brain.fablab.fau.de/build/docs/Drehzahltabelle.pdf)
  - [Acrylverkauf](https://brain.fablab.fau.de/build/docs/Acrylpreis.pdf)
  - [Abrechnungsliste](https://brain.fablab.fau.de/build/docs/abrechnung.pdf) (Entwurf)
- Schilder und Aushänge
  - [Gerätenutzung (A3)](https://brain.fablab.fau.de/build/docs/geraetenutzung.pdf)
  - [Öffnungsschilder (OpenLab, SelfLab, Workshop, Arbeitstreffen, Aktiventreffen)](https://brain.fablab.fau.de/build/docs/oeffnungsschilder.pdf)
  - [Wegweiser zum OpenLab](https://brain.fablab.fau.de/build/docs/openlab.pdf)
  - [Fahrrad platt? (A3, deutsch und englisch)](https://brain.fablab.fau.de/build/docs/Fahrradstaender.pdf)
  - [Wenn du als Letzter das FabLab verlässt](https://brain.fablab.fau.de/build/docs/schild-ausgang.pdf)
  - [Lüftung](https://brain.fablab.fau.de/build/docs/lueftung.pdf)
  - [Mülleimer](https://brain.fablab.fau.de/build/docs/muelleimer.pdf)
  - [Werkstattspenden](https://brain.fablab.fau.de/build/docs/werkstatt-spenden.pdf)
  - [Neues Schleifpapier](https://brain.fablab.fau.de/build/docs/schleifpapier.pdf)
  - [Ausdrucken kostet Geld](https://brain.fablab.fau.de/build/docs/druckerpreise.pdf)
  - [Achtung: nur Holzspatel (Formlabs)](https://brain.fablab.fau.de/build/docs/formlabs_keinMetall.pdf)
  - [Du kannst mithelfen!](https://brain.fablab.fau.de/build/docs/mithelfen.pdf)
  - [Tu mal was fürs Lab!](https://brain.fablab.fau.de/build/docs/tu-was-fuers-lab.pdf)
  - [Pakete und Post (Briefkasten EEI, A5)](https://brain.fablab.fau.de/build/docs/schild-eei-briefkasten.pdf)

Außerdem baut eine GitHub Action die PDFs bei jedem Push. Auf dem Hauptbranch entsteht dabei ein
[Release](https://github.com/fau-fablab/docs/releases) mit Datums-Version (`vJJJJ.MM.TT`) und den PDFs.

Auschecken und bauen
--------------------

```bash
git clone --recursive git@github.com:fau-fablab/docs.git
cd docs
make
```

Die PDFs landen in `output/`. Layout, Kopf- und Fußzeile und das Logo des FAU FabLab (mit
FAU-Schriftzug) kommen aus dem Untermodul [fablab-document](https://github.com/fau-fablab/fablab-document),
das Logo wiederum aus dessen Untermodul [logo](https://github.com/fau-fablab/logo). Bei einem bestehenden
Klon die Untermodule mit `git submodule update --init --recursive` laden.

Technische Details zum Buildserver: [fau-fablab/buildserver](https://github.com/fau-fablab/buildserver)

[![Build Status](https://brain.fablab.fau.de/build/docs/status.svg)](https://brain.fablab.fau.de/build/docs/)
[![TODOs](https://brain.fablab.fau.de/build/docs/status-todos.svg)](https://brain.fablab.fau.de/build/docs/)
[![PDF bauen](https://github.com/fau-fablab/docs/actions/workflows/pdf.yml/badge.svg)](https://github.com/fau-fablab/docs/actions/workflows/pdf.yml)

Lizenz
------

[![Lizenz: CC BY-SA 3.0](https://licensebuttons.net/l/by-sa/3.0/de/88x31.png)</br>CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)
