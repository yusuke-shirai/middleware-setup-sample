#!/bin/sh
cd src
pandoc -s test.md -o ../dist/test.pdf  --table-of-contents --toc-depth=3 --number-sections --latex-engine=lualatex  --data-dir=. --template spec
pandoc -s test.md -o ../dist/test.tex  --table-of-contents --toc-depth=3 --number-sections --latex-engine=lualatex  --data-dir=. --template spec
# pandoc -s test.md -o ../dist/test.html --table-of-contents --toc-depth=3 --number-sections --self-contained -t html5
