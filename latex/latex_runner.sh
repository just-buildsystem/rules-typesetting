#!/bin/sh

PDFLATEX=$1
shift
MAIN=$1
shift

cd work
echo First latex run >> ../log
$PDFLATEX $MAIN >> ../log 2>&1 || { cat ../log ; exit 1; }
echo Second latex run >> ../log
$PDFLATEX $MAIN >> ../log 2>&1 || { cat ../log ; exit 1; }
echo Third latex run >> ../log
$PDFLATEX $MAIN >> ../log 2>&1 || { cat ../log ; exit 1; }
[ -f $MAIN.pdf ] \
    || ( [ -f $(basename $MAIN).pdf ] && cp $(basename $MAIN).pdf $MAIN.pdf ) \
    || { cat ../log ; exit 1; }
