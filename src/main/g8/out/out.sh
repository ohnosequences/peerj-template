#!/bin/sh
set -x
ME=`dirname $0`
pandoc --template=${ME}/peerj.tex ${ME}/../paper.md --smart -s --biblatex --bibliography ${ME}/../refs.bib -o ${ME}/paper.tex
latex ${ME}/paper.tex
biber ${ME}/paper
pdflatex ${ME}/paper.tex
