#!/bin/bash
pandoc "document.md" -o "document.pdf" --from markdown --template "../../eisvogel/eisvogel.tex" --listings --pdf-engine "tectonic"