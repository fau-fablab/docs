#!/bin/bash

set -e

cd $(dirname $0)
OUTDIR=../output


function filterLineRegexp() {
	grep -v "$@" || exit 0
}

function openoffice_to_pdf() { # call as: openoffice_to_pdf /path/to/file odt # note the space before odt!
	libreoffice --headless --invisible --convert-to pdf "$1.$2" --outdir "`dirname "$1"`" | filterLineRegexp  "^convert .* using [a-z]*_pdf_Export$" | filterLineRegexp "^Overwriting:"
	cp "$1.pdf" "$OUTDIR/"
}

openoffice_to_pdf "AusleihlisteWerkzeug" "xls"