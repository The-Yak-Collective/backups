#!/usr/bin/env bash

# NOTE: The `jq` package is slightly non-standard, and may need to be
# installed. (It's present on the image that GitHub uses to run actions,
# however.)

# Pass in Roam export directory used by roam-to-git
#
ROAM_DIR="$1"

# How do we identify the Firebase URLs we want to download?
#
FIREBASE_PREFIX="https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o"

# Extract and download Firebase URLs. Note that we only grab one URL per
# line.
#
for FILE_WITH_TOKEN in $(cat "$ROAM_DIR/json"/*.json | jq "." | grep "$FIREBASE_PREFIX/" | sed -e "s#.*$FIREBASE_PREFIX/\([^)}\"]\+\).*#\1#"); do
	FILE="$(echo "$FILE_WITH_TOKEN" | sed -e 's#\?.*##')"
	if [[ ! -e "$ROAM_DIR/assets/$FILE" ]]; then
		curl --silent --show-error --location --create-dirs --output "$ROAM_DIR/assets/$FILE" "$FIREBASE_PREFIX/$FILE_WITH_TOKEN"
	fi
done
