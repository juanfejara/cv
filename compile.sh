#!/usr/bin/env bash
# 

if [ $# -eq 0 ]; then
    echo "Add parameter for compile the CV"
    echo "For Spanish Run:"
    echo "  $ compile.sh 0"
    echo "For English Run:"
    echo "  $ compile.sh 1"
elif [ $1 -qe 1 ]; then
    echo "Parameter must be 0 or 1: 0 spanish, 1 english"
else
    lualatex "\def\cvlanguage{$1}\input CV-JFJ.tex"
    lualatex "\def\cvlanguage{$1}\input CV-JFJ.tex"
    if [ $1 -eq 0 ]; then
        mv CV-JFJ.pdf CV-JFJSp.pdf
    elif [ $1 -eq 1 ]; then
        mv CV-JFJ.pdf CV-JFJEn.pdf
    fi
    rm *.out *.run.xml *.log *.aux *.bcf
fi
