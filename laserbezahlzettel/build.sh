#!/bin/bash
set -e
OUTDIR=../output

function filterLineRegexp() {
	grep -v "$@" || exit 0
}

function repeat() {
	# gebe n=$1 mal hintereinander den String "$2 " aus
	for i in `seq 1 $1`; do
		echo -n "$2 "
	done
}

cd $(dirname $0)

libreoffice --headless --invisible --convert-to pdf "Laserzeit_Bezahlzettel_DinA6.odt" --outdir "" | filterLineRegexp  "^convert .* using writer_pdf_Export$" | filterLineRegexp "^Overwriting:"
pdfnup --quiet --scale 0.9 --nup 2x4 --no-landscape $(repeat 8 "Laserzeit_Bezahlzettel_DinA6.pdf") --outfile Laserzeit_Bezahlzettel_DinA4_4x2_extra_klein.pdf
pdfnup --quiet --scale 0.9 --nup 2x2 --landscape $(repeat 4 "Laserzeit_Bezahlzettel_DinA6.pdf") --outfile Laserzeit_Bezahlzettel_DinA4_2x2_landscape.pdf
pdf90 --quiet Laserzeit_Bezahlzettel_DinA4_2x2_landscape.pdf --outfile Laserzeit_Bezahlzettel_DinA4_2x2.pdf
cp "Laserzeit_Bezahlzettel_DinA4_4x2_extra_klein.pdf" "$OUTDIR"
cp "Laserzeit_Bezahlzettel_DinA4_2x2.pdf" "$OUTDIR"
