#!/bin/sh
pushd src
pandoc -s $1.md -o ../dist/$1.pdf  --table-of-contents --toc-depth=3 --number-sections --latex-engine=lualatex  --data-dir=. -V documentclass=ltjsarticle --include-in-header=header.latex
pandoc -s $1.md -o ../dist/$1.html --table-of-contents --toc-depth=3 --number-sections --self-contained -t html5
popd
