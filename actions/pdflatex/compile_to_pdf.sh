#!/bin/bash

set -e
mkdir -p $ARTIFACTS_DIR

# produce pdf
pdflatex $TEXFILE
# bibtex $TEXFILE
# pdflatex $TEXFILE
# pdflatex $TEXFILE

# produce html pages
latex2html $TEXFILE -mkdir -dir html

cp main.pdf $ARTIFACTS_DIR
cp -ar html/* $ARTIFACTS_DIR
