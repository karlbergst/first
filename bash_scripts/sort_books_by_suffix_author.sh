#!/usr/bin/env bash

for f in *.pdf; do
[[ -f "$f" ]] || continue
stem="${f%.*}"
if [[ "$stem" != *_* ]]; then
echo "Skip: $f"
continue
fi
author="${stem##*_}"
mkdir -p "$author"
echo "Move: $f -> $author/"
mv "$f" "$author/"
done
