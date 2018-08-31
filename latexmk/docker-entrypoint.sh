#!/bin/bash

echo 'Creating pdf'
latexmk -cd -f -lualatex -interaction=nonstopmode -pdf "$1"
chown -v $(stat --format=%u "$1"):$(stat --format=%g "$1") $(basename "$1" .tex).*
