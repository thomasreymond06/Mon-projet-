#!/bin/sh
# Génère index.html (page autonome) à partir de fiches.html
{ printf '<!doctype html>\n<html lang="fr">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  sed -n '1,/<\/style>/p' fiches.html
  printf '</head>\n<body>\n'
  sed -n '/<\/style>/,$p' fiches.html | tail -n +2
  printf '</body>\n</html>\n'; } > index.html
