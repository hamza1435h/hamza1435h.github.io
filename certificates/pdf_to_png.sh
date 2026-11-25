#!/usr/bin/env bash
mkdir -p png_out
for f in *.pdf; do
  [ -f "$f" ] || continue
  out="png_out/${f%.*}.png"
  gs -sDEVICE=pngalpha -dFirstPage=1 -dLastPage=1 -r300 -o "$out" "$f"
  echo -e "Wrote $out"
done