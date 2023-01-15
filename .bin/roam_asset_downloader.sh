#!/usr/bin/env bash

# Pass in Roam export directory used by roam-to-git
#
ROAM_DIR="$1"

# How do we identify the Firebase URLs we want to download?
#
FIREBASE_PREFIX="https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o"

# Extract and download Firebase URLs. Note that we only grab one URL per
# line.
#
mkdir -p "$ROAM_DIR/assets"
for FILE_WITH_TOKEN in $(grep "$FIREBASE_PREFIX/" "$(echo "$ROAM_DIR" | sed -e "s#/markdown/#/edn/#g").edn" | sed -e "s#.*$FIREBASE_PREFIX/\([^)}\"]\+\).*#\1#" | sort -u); do
	FILE="$(echo "$FILE_WITH_TOKEN" | sed -e 's#\?.*##')"
	curl --silent --show-error --location --create-dirs --output "$ROAM_DIR/assets/$FILE" "$FIREBASE_PREFIX/$FILE_WITH_TOKEN" && echo "Backed up: $FILE"
done
