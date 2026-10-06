#!/usr/bin/env bash
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)"
DEST=/home/spark/maisonifrah_gateway/sites/tamalou
mkdir -p "$DEST"
find "$DEST" -mindepth 1 -delete
cp -r "$SRC/index.html" "$SRC/config.js" "$SRC/sw.js" \
  "$SRC/manifest.webmanifest" "$SRC/icons" "$DEST/"
echo "Deployed to $DEST"
