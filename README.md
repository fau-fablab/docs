docs
====

Diverse Dokumente und Aushänge des [FAU FabLab](https://fablab.fau.de).

Inhalt
------

- Ausleihliste Werkzeug, Nachkaufliste, Drehzahltabelle der Standbohrmaschine und Acrylpreise (LaTeX, werden gebaut)
- Abrechnungsliste (Entwurf, nicht freigegeben)
- Reisebericht Fab12 (`fab12_bericht/`)
- Hinweisschilder, Aushänge, Verbandbuch, Raumplan und Schild am EEI-Briefkasten als fertige Dateien (PDF, ODT, SVG)

Download
--------

Die neueste Version aus [GitHub](https://github.com/fau-fablab/docs) ist als PDF abrufbar:

- [Ausleihliste Werkzeug](https://brain.fablab.fau.de/build/docs/AusleihlisteWerkzeug.pdf)
- [Nachkaufliste](https://brain.fablab.fau.de/build/docs/nachkaufliste.pdf)
- [Drehzahltabelle Standbohrmaschine](https://brain.fablab.fau.de/build/docs/Drehzahltabelle.pdf) (Aushang)
- [Acrylverkauf](https://brain.fablab.fau.de/build/docs/Acrylpreis.pdf) (Aushang)
- [Abrechnungsliste](https://brain.fablab.fau.de/build/docs/abrechnung.pdf) (Entwurf)

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
