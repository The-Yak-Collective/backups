#!/usr/bin/env bash

GRAPHS=(
	ArtOfGig
	Astonishing_Stories
)

FIREBASE_PREFIX="https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2F"

for GRAPH in "${GRAPHS[@]}"; do
	if [[ -f "${GRAPH}.edn" ]]; then
		mkdir -p "${GRAPH}.assets"

		for FRAGMENT in $(grep "$FIREBASE_PREFIX" "${GRAPH}.edn" | sed "s#.*$FIREBASE_PREFIX##;s#\()\|}\|\"\).*##"); do
			FIREBASE_URL="$FIREBASE_PREFIX$FRAGMENT"
			FILE="${GRAPH}.assets/$(echo "$FRAGMENT" | sed "s#${GRAPH}%2F##;s#\?.*##")"

			if [[ ! -f "$FILE" ]]; then
				curl --location --output "$FILE" "$FIREBASE_URL"
			fi
		done
	fi
done
