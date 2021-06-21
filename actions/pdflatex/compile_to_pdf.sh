#!/bin/bash

set -e
mkdir -p $ARTIFACTS_DIR

pdflatex $TEXFILE
# bibtex $TEXFILE
# pdflatex $TEXFILE
# pdflatex $TEXFILE

cp main.pdf $ARTIFACTS_DIR
