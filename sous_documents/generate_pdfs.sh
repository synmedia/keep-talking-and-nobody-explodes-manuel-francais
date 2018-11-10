#!/bin/bash
mkdir -p pdfs
for filename in *.html; do
	basename=$(eval "basename $filename .html")
	full_filename_pdf="$PWD/pdfs/${basename}.pdf"
	full_filename_html="$PWD/${basename}.html"
	echo "Reading: $full_filename_html"
	echo "Generating PDF: $full_filename_pdf"
        start chrome --headless --print-to-pdf=$full_filename_pdf $full_filename_html
done
