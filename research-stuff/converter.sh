#!/bin/bash
DIRECTORY=.
for i in $DIRECTORY/*.pdf;
do
  filename=$(basename "$i")
  extension="${filename##*.}"
  filename="${filename%.*}"
  qpdf $filename.pdf --pages $filename.pdf 1 -- $filename-1.pdf
  convert -density 500 $filename-1.pdf -quality 100 $filename.png
done
